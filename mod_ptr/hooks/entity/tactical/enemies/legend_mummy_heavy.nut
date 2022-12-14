::mods_hookExactClass("entity/tactical/enemies/legend_mummy_heavy", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
		this.m.Skills.removeByID("perk.legend_slaughter");
		this.m.Skills.removeByID("perk.legend_bloodbath");
	}
});
