this.perk_ptr_king_of_all_weapons <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		IsSpent = false,
		DamageReductionPercentage = 50
	},
	function create()
	{
		this.m.ID = "perk.ptr_king_of_all_weapons";
		this.m.Name = this.Const.Strings.PerkName.PTRKingOfAllWeapons;
		this.m.Description = this.Const.Strings.PerkDescription.PTRKingOfAllWeapons;
		this.m.Icon = "ui/perks/ptr_king_of_all_weapons.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.VeryLast;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getDescription()
	{
		return "This character is highly skilled in spears and can perform a free attack during their turn.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/special.png",
			text = "The next Thrust or Prong attack costs [color=" + this.Const.UI.Color.PositiveValue + "]0[/color] Action Points, builds [color=" + this.Const.UI.Color.NegativeValue + "]0[/color] Fatigue but does [color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.DamageReductionPercentage + "%[/color] Damage"
		});

		return tooltip;
	}

	function onAdded()
	{
		if (!this.getContainer().getActor().isPlayerControlled() && this.isEnabled())
		{
			this.m.IsSpent = false;
		}
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Spear) || (!this.getContainer().hasSkill("actives.thrust") && !this.getContainer().hasSkill("actives.prong")))
		{
			return false;
		}

		return true;
	}

	function onAfterUpdate(_properties)
	{
		this.m.IsHidden = true;

		if (this.m.IsSpent || !this.isEnabled() || !this.getContainer().getActor().isPlacedOnMap())
		{
			this.m.IsSpent = true;
			return;
		}

		this.m.IsHidden = false;

		local skills = [];
		skills.push(this.getContainer().getSkillByID("actives.thrust"));
		skills.push(this.getContainer().getSkillByID("actives.prong"));

		if (skills.len() == 0)
		{
			return;
		}

		foreach (s in skills)
		{
			if (s != null)
			{
				s.m.ActionPointCost = 0;
				s.m.FatigueCostMult = 0;
			}
		}
	}

	function onAnySkillExecuted(_skill, _targetTile)
	{
		if (_skill.getID() == "actives.thrust" || _skill.getID() == "actives.prong")
		{
			this.m.IsSpent = true;
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (this.m.IsSpent || this.m.IsHidden)
		{
			return;
		}

		if (_skill.getID() == "actives.thrust" || _skill.getID() == "actives.prong")
		{
			local actor = this.getContainer().getActor();
			if (!actor.isPlacedOnMap() || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
			{
				return;
			}

			_properties.MeleeDamageMult *= this.m.DamageReductionPercentage * 0.01;
		}
	}

	function onTurnStart()
	{
		if (this.isEnabled())
		{
			this.m.IsSpent = false;
		}
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.IsSpent = true;
	}
});
