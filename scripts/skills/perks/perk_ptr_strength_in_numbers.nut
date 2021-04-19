this.perk_ptr_strength_in_numbers <- this.inherit("scripts/skills/skill", {
	m = {
		Stacks = 0,
		BonusPerStack = 2
	},
	function create()
	{
		this.m.ID = "perk.ptr_strength_in_numbers";
		this.m.Name = this.Const.Strings.PerkName.PTRStrengthInNumbers;
		this.m.Description = this.Const.Strings.PerkDescription.PTRStrengthInNumbers;
		this.m.Icon = "ui/perks/ptr_strength_in_numbers.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getName()
	{
		return "Strength in Numbers";
	}

	function getDescription()
	{
		return "This character\'s martial prowess increases when fighting adjacent to allies.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Melee Skill"
		});

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Ranged Skill"
		});

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Melee Defense"
		});

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Ranged Defense"
		});

		return tooltip;
	}

	function isHidden()
	{
		return this.m.Stacks == 0;
	}

	function getBonus()
	{
		return this.m.Stacks * 2;
	}

	function onUpdate( _properties )
	{
		this.m.Stacks = this.getContainer().getActor().getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.SameFaction).len();

		local bonus = this.getBonus();
		if (bonus > 0)
		{
			_properties.MeleeSkill += this.getBonus();
			_properties.RangedSkill += this.getBonus();
			_properties.MeleeDefense += this.getBonus();
			_properties.RangedDefense += this.getBonus();
		}
	}

	function onCombatStarted()
	{
		this.m.Stacks = 0;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.Stacks = 0;
	}
});
