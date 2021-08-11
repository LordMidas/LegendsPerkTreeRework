this.perk_ptr_versatile_weapon <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_versatile_weapon";
		this.m.Name = this.Const.Strings.PerkName.PTRVersatileWeapon;
		this.m.Description = this.Const.Strings.PerkDescription.PTRVersatileWeapon;
		this.m.Icon = "ui/perks/ptr_versatile_weapon.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate( _properties )
	{
		local weapon = this.getContainer().getActor().getMainhandItem();

		if (weapon == null || weapon.getCategories().find("Sword") == null)
		{
			return;
		}

		_properties.MeleeDamageMult *= 1.05;
		_properties.DamageDirectAdd += 0.05;
		_properties.DamageArmorMult *= 1.05;
	}
});
