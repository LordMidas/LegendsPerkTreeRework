::mods_hookExactClass("entity/tactical/humans/assassin", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.removeByID("perk.underdog");
		this.m.Skills.removeByID("perk.adrenalin");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_know_their_weakness"));

		local weapon = this.getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(::Const.Items.WeaponType.Sword))
			{
				this.m.Skills.addTreeOfEquippedWeapon(4);
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_kata"));
				this.m.Skills.removeByID("perk.footwork");
			}
			else if (weapon.isWeaponType(::Const.Items.WeaponType.Dagger))
			{
				this.m.Skills.addTreeOfEquippedWeapon(5);
			}
		}
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon();
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_alert"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
			if (weapon != null)
			{
				if (weapon.isWeaponType(::Const.Items.WeaponType.Sword))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
				}
				else if (weapon.isWeaponType(::Const.Items.WeaponType.Dagger))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_tempo"));
				}
			}
		}
	}
});
