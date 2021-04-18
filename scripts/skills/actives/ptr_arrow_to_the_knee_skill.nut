this.ptr_arrow_to_the_knee_skill <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.ptr_arrow_to_the_knee";
		this.m.Name = "Arrow to the Knee";
		this.m.Icon = "skills/ptr_arrow_to_the_knee_skill.png";
		this.m.IconDisabled = "skills/ptr_arrow_to_the_knee_skill_bw.png";
		this.m.Overlay = "ptr_arrow_to_the_knee_skill";
		this.m.SoundOnUse = [];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.Any;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = false;
		this.m.IsStacking = true;
		this.m.IsAttack = false;
		this.m.IsIgnoredAsAOO = true;
		this.m.IsWeaponSkill = true;
		this.m.ActionPointCost = 2;
		this.m.FatigueCost = 15;
		this.m.MinRange = 0;
		this.m.MaxRange = 0;
	}

	function getDescription()
	{
		return "Aim your next attack at the knee of your target, reducing their Melee and Ranged defense by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] and requiring them to spend [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] additional Action Points per tile moved on their turn. Missing the target will waste the effect.";
	}

	function getTooltip()
	{
		return this.skill.getDefaultUtilityTooltip();
	}

	function isUsable()
	{
		return this.skill.isUsable() && !this.getContainer().getActor().getSkills().hasSkill("effects.ptr_arrow_to_the_knee_attack");
	}
	
	function isHidden()
	{
		return !this.getContainer().getActor().isArmedWithRangedWeapon();
	}

	function onVerifyTarget( _originTile, _targetTile )
	{
		return true;
	}

	function onUse( _user, _targetTile )
	{
		this.m.Container.add(this.new("scripts/skills/effects/ptr_arrow_to_the_knee_attack_effect"));
		return true;
	}

	function onRemoved()
	{
		this.m.Container.removeByID("effects.ptr_arrow_to_the_knee_attack");
	}
});

