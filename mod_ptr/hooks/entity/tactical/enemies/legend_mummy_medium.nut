::mods_hookExactClass("entity/tactical/enemies/legend_mummy_medium", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(5);
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_phalanx"));

		if (this.Math.rand(1,100) <= 25)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
		}
	}
});
