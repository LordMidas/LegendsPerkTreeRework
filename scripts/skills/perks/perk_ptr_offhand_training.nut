this.perk_ptr_offhand_training <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_offhand_training";
		this.m.Name = this.Const.Strings.PerkName.PTROffhandTraining;
		this.m.Description = this.Const.Strings.PerkDescription.PTROffhandTraining;
		this.m.Icon = "ui/perks/ptr_offhand_training.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
});
