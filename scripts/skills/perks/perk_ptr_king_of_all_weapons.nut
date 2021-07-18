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

	function isHidden()
	{
			return this.m.IsSpent || (!this.getContainer().hasSkill("actives.thrust") && !this.getContainer().hasSkill("actives.prong"));
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
			text = "The next Thrust attack costs [color=" + this.Const.UI.Color.PositiveValue + "]0[/color] Action Points, builds [color=" + this.Const.UI.Color.NegativeValue + "]0[/color] Fatigue but does [color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.DamageReductionPercentage + "%[/color] Damage"
		});

		return tooltip;
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Spear") == null)
		{
			return false;
		}

		return true;
	}

	function onAfterUpdate(_properties)
	{
		if (this.m.IsSpent || !this.isEnabled())
		{
			return;
		}

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

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (_skill.getID() == "actives.thrust" || _skill.getID() == "actives.prong")
		{
			this.m.IsSpent = true;
		}
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		if (_skill.getID() == "actives.thrust" || _skill.getID() == "actives.prong")
		{
			this.m.IsSpent = true;
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (this.m.IsSpent)
		{
			return;
		}

		if (_skill.getID() != "actives.thrust" && _skill.getID() != "actives.prong")
		{
			return;
		}

		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap() || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}

		_properties.MeleeDamageMult *= this.m.DamageReductionPercentage * 0.01;
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
