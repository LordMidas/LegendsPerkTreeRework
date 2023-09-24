::mods_hookExactClass("entity/tactical/enemies/legend_mummy_heavy", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
		this.m.Skills.removeByID("perk.legend_slaughter");
		this.m.Skills.removeByID("perk.legend_bloodbath");
	}
});
