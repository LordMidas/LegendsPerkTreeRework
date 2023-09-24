::mods_hookExactClass("entity/tactical/humans/slave", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		local weapon = this.getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(::Const.Items.WeaponType.Hammer))
			{
				this.m.Skills.addTreeOfEquippedWeapon(2);
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(1);
			}
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
		}
	}
});
