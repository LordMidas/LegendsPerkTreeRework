::mods_hookExactClass("entity/tactical/enemies/bandit_thug", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.removeByType(::Const.SkillType.Perk);

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));

		local weapon = this.getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(::Const.Items.WeaponType.Spear) || weapon.isWeaponType(::Const.Items.WeaponType.Sword) || weapon.isWeaponType(::Const.Items.WeaponType.Hammer))
			{
				this.m.Skills.addTreeOfEquippedWeapon(3);
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(2);
			}
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("effects.dodge");								
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
		}
	}
});
