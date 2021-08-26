this.perk_ptr_take_aim <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_take_aim";
		this.m.Name = this.Const.Strings.PerkName.PTRTakeAim;
		this.m.Description = this.Const.Strings.PerkDescription.PTRTakeAim;
		this.m.Icon = "ui/perks/ptr_take_aim.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAdded()
	{
		this.getContainer().add(this.new("scripts/skills/actives/ptr_take_aim_skill"));
	}

	function onRemoved()
	{
		this.getContainer().removeByID("actives.ptr_take_aim");
	}
});
