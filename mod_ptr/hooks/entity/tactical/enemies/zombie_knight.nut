::mods_hookExactClass("entity/tactical/enemies/zombie_knight", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		local b = this.getBaseProperties();

		this.m.Skills.removeByID("perk.ptr_kata");

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bear_down"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_hold_out"));
		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.nine_lives");
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.add(::new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_coup_de_grace"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
	}
});
