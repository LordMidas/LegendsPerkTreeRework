::mods_hookExactClass("entity/tactical/enemies/legend_mummy_medium", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(5);
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_phalanx"));

		if (this.Math.rand(1,100) <= 25)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
		}
	}
});
