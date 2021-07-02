this.perk_ptr_hip_shooter <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_hip_shooter";
		this.m.Name = this.Const.Strings.PerkName.PTRHipShooter;
		this.m.Description = this.Const.Strings.PerkDescription.PTRHipShooter;
		this.m.Icon = "ui/perks/ptr_hip_shooter.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onCombatStarted()
	{
		this.getContainer().add(this.new("scripts/skills/effects/ptr_hip_shooter_effect"));
	}

	function onAdded()
	{
		if ("State" in this.Tactical)
		{
			this.getContainer().add(this.new("scripts/skills/effects/ptr_hip_shooter_effect"));
		}
	}
});
