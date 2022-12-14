::mods_hookExactClass("entity/tactical/humans/legend_peasant_squire", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		local weapon = this.getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(::Const.Items.WeaponType.Sword))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_versatile_weapon"));
			}
			else if (weapon.isWeaponType(::Const.Items.WeaponType.Flail))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_from_all_sides"));
			}
		}

		this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			if (weapon != null)
			{
				if (weapon.isWeaponType(::Const.Items.WeaponType.Sword))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_en_garde"));
				}
				else if (weapon.isWeaponType(::Const.Items.WeaponType.Flail))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_flail_spinner"));
				}
			}
		}
	}
});
