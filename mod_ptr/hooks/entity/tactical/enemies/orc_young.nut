::mods_hookExactClass("entity/tactical/enemies/orc_young", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/racial/ptr_orc_racial"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_momentum"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));

		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(4);
	}
});
