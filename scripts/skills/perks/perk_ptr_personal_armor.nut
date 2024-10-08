this.perk_ptr_personal_armor <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_personal_armor";
		this.m.Name = this.Const.Strings.PerkName.PTRPersonalArmor;
		this.m.Description = this.Const.Strings.PerkDescription.PTRPersonalArmor;
		this.m.Icon = "ui/perks/ptr_personal_armor.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate( _properties )
	{
		_properties.DamageReceivedArmorMult *= 0.9;
	}
});
