this.perk_ptr_light_weapon <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_light_weapon";
		this.m.Name = this.Const.Strings.PerkName.PTRLightWeapon;
		this.m.Description = this.Const.Strings.PerkDescription.PTRLightWeapon;
		this.m.Icon = "ui/perks/ptr_light_weapon.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onUpdate( _properties )
	{
		local weapon = this.getContainer().getActor().getMainhandItem();		
		if (weapon == null || weapon.getCategories().find("Dagger") == null)
		{
			return;
		}
		
		_properties.ActionPoints += 1;		
		_properties.FatigueEffectMult *= 0.9;
	}
});
