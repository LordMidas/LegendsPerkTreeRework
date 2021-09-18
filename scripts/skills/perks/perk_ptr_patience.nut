this.perk_ptr_patience <- this.inherit("scripts/skills/skill", {
	m = {
		HasMoved = false,
		IsCombatStarted = false,
		Bonus = 10
	},
	function create()
	{
		this.m.ID = "perk.ptr_patience";
		this.m.Name = this.Const.Strings.PerkName.PTRPatience;
		this.m.Description = "This character has not moved yet and can take %their% time to get a better aim for ranged attacks.";
		this.m.Icon = "ui/perks/ptr_patience.png";
		this.m.IconMini = "ptr_patience_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.m.HasMoved || !this.m.IsCombatStarted;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Ranged Skill"
		});

		return tooltip;
	}

	function getBonus()
	{
		return this.m.HasMoved ? 0 : this.m.Bonus;
	}

	function onUpdate ( _properties )
	{
		if (!this.m.IsCombatStarted || this.m.HasMoved)
		{
			return;
		}

		if (this.m.HasMoved == false && this.getContainer().getActor().m.IsMoving)
		{
			this.m.HasMoved = true;
		}

		_properties.RangedSkill += this.getBonus();
	}

	function onTurnStart()
	{
		this.m.HasMoved = false;
	}

	function onAdded()
	{
		if (("State" in this.Tactical) && this.Tactical.State != null)
		{
			this.m.IsCombatStarted = true;
			this.m.HasMoved = false;
		}
	}

	function onCombatStarted()
	{
		this.m.IsCombatStarted = true;
		this.m.HasMoved = false;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.IsCombatStarted = false;
		this.m.HasMoved = false;
	}
});
