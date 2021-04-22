this.perk_ptr_hybridization <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_hybridization";
		this.m.Name = this.Const.Strings.PerkName.PTRHybridization;
		this.m.Description = this.Const.Strings.PerkDescription.PTRHybridization;
		this.m.Icon = "ui/perks/ptr_hybridization.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate( _properties )
	{
		local baseProperties = this.getContainer().getActor().getBaseProperties();
		_properties.RangedSkill += baseProperties.getMeleeSkill() * 0.1;
		_properties.MeleeSkill += baseProperties.getRangedSkill() * 0.1;
	}
});
