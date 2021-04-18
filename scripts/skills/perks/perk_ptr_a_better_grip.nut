this.perk_ptr_a_better_grip <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_a_better_grip";
		this.m.Name = this.Const.Strings.PerkName.PTRABetterGrip;
		this.m.Description = this.Const.Strings.PerkDescription.PTRABetterGrip;
		this.m.Icon = "ui/perks/ptr_a_better_grip.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
});

