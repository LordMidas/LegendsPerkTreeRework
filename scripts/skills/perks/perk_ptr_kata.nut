this.perk_ptr_kata <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_kata";
		this.m.Name = this.Const.Strings.PerkName.PTRKata;
		this.m.Description = this.Const.Strings.PerkDescription.PTRKata;
		this.m.Icon = "ui/perks/ptr_kata.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAdded()
	{
		this.getContainer().add(this.new("scripts/skills/actives/ptr_kata_step_skill"));
	}

	function onRemoved()
	{
		this.getContainer().removeByID("actives.ptr_kata_step");
	}
});
