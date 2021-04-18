this.perk_ptr_windlass_training <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_windlass_training";
		this.m.Name = this.Const.Strings.PerkName.PTRWindlassTraining;
		this.m.Description = this.Const.Strings.PerkDescription.PTRWindlassTraining;
		this.m.Icon = "ui/perks/ptr_windlass_training.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

});

