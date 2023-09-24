::mods_hookExactClass("entity/tactical/humans/legend_peasant_farmhand", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addPerkTree(::Const.Perks.FarmerProfessionTree);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bolster"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_intimidate"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fruits_of_labor"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.removeByID("perk.stalwart");
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_leverage"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_utilitarian"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
		}
	}
});
