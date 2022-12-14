::mods_hookExactClass("skills/perks/perk_sundering_strikes", function(o) {
	o.onUpdate = function ( _properties )
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null)
		{
			_properties.DamageArmorMult += 0.2;
		}
		else
		{
			_properties.DamageArmorMult += weapon.getArmorDamageMult() / 5;
		}
	}
});
