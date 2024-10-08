this.ptr_take_aim_skill <- this.inherit("scripts/skills/skill", {
	m = {
		Perk = null
	},
	function create()
	{
		this.m.ID = "actives.ptr_take_aim";
		this.m.Name = "Take Aim";
		this.m.Icon = "skills/ptr_take_aim_skill.png";
		this.m.IconDisabled = "skills/ptr_take_aim_skill_bw.png";
		this.m.Overlay = "ptr_take_aim_skill";
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
		this.m.FatigueCost = 20;
		this.m.MinRange = 0;
		this.m.MaxRange = 0;
	}

	function getDescription()
	{
		return "Put additional effort into getting a better aim to hit targets behind cover with a Crossbow or to reach farther targets with a Handgonne.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getDefaultUtilityTooltip();

		tooltip.push({
			id = 7,
			type = "text",
			icon = "ui/icons/special.png",
			text = "For the next ranged attack:"
		});

		tooltip.push({
			id = 7,
			type = "text",
			icon = "ui/icons/hitchance.png",
			text = "Crossbows ignore any hitchance penalty from obstacles, and the shot cannot go astray."
		});

		tooltip.push({
			id = 7,
			type = "text",
			icon = "ui/icons/hitchance.png",
			text = "Handgonnes have their Maximum Range increased by 1 and if used at shorter range, have their area of effect increased by 1 instead."
		});

		return tooltip;
	}

	function onAdded()
	{
		this.m.Perk = this.getContainer().getSkillByID("perk.ptr_take_aim");
	}

	function isEnabled()
	{
		return this.m.Perk != null && this.m.Perk.isEnabled();
	}

	function isUsable()
	{
		local actor = this.getContainer().getActor();
		return this.skill.isUsable() && !this.getContainer().hasSkill("effects.ptr_take_aim") && !actor.isEngagedInMelee() && this.isEnabled();
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
		this.m.Container.add(this.new("scripts/skills/effects/ptr_take_aim_effect"));
		return true;
	}

	function onRemoved()
	{
		this.m.Container.removeByID("effects.ptr_take_aim");
	}
});
