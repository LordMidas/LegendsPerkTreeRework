::mods_hookExactClass("skills/perks/perk_legend_specialist_staff_skill", function(o) {
	o.onUpdate = function( _properties )
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Staff))
			{
				_properties.MeleeDefense += 16;
			}
			else if(weapon.isWeaponType(this.Const.Items.WeaponType.Musical))
			{
				_properties.MeleeDefense += 8;	
			}
		}
	}
});
