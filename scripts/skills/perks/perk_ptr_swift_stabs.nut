this.perk_ptr_swift_stabs <- this.inherit("scripts/skills/skill", {
	m = {
		Skill = null
	},
	function create()
	{
		this.m.ID = "perk.ptr_swift_stabs";
		this.m.Name = this.Const.Strings.PerkName.PTRSwiftStabs;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSwiftStabs;
		this.m.Icon = "ui/perks/ptr_swift_stabs.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.VeryLast;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.m.Skill == null;
	}

	function getDescription()
	{
		return "This character has successfully found an opening in the target's armor and can quickly deliver several deadly stabs.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/action_points.png",
			text = "The Action Point cost of " + this.m.Skill.getName() + " is reduced"
		});

		return tooltip;
	}

	function onTurnStart()
	{
		this.m.Skill = null;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.Skill = null;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (_skill.getID() != "actives.puncture" && _skill.getID() != "actives.deathblow")
		{
			return;
		}

		this.m.Skill = _skill;
	}

	function onAfterUpdate(_properties)
	{
		if (this.m.Skill == null || this.m.Skill.m.ActionPointCost <= 2)
		{
			return;
		}

		this.m.Skill.m.ActionPointCost = this.Math.max(2, this.m.Skill.m.ActionPointCost - 2);
	}
});
