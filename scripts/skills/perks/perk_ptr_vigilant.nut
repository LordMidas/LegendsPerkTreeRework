this.perk_ptr_vigilant <- this.inherit("scripts/skills/skill", {
	m = {
		Bonus = 0
	},
	function create()
	{
		this.m.ID = "perk.ptr_vigilant";
		this.m.Name = this.Const.Strings.PerkName.PTRVigilant;
		this.m.Description = this.Const.Strings.PerkDescription.PTRVigilant;
		this.m.Icon = "ui/perks/ptr_vigilant.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getDescription()
	{
		return "Having not expended themselves completely during their last turn, this character finds themselves better prepared for combat now.";
	}

	function isHidden()
	{
		return this.m.Bonus = 0;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "[/color] Melee Skill"
		});

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_Defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "[/color] Melee Defense"
		});

		return tooltip;
	}

	function onUpdate(_properties)
	{
		_properties.MeleeSkill += this.m.Bonus;
		_properties.MeleeDefense += this.m.Bonus;
	}

	function onTurnEnd()
	{
		this.m.Bonus = this.getContainer().getActor().getActionPoints();
	}

	function onCombatStarted()
	{
		this.m.Bonus = 0;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.Bonus = 0;
	}
});
