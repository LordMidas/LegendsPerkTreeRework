::mods_hookExactClass("entity/tactical/humans/nomad_cutthroat", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();

		local weapon = this.getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(::Const.Items.WeaponType.Spear) || weapon.isWeaponType(::Const.Items.WeaponType.Sword))
			{
				this.m.Skills.addTreeOfEquippedWeapon(3);
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(2);
			}
		}
	}
});
