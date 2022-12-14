::mods_hookExactClass("entity/tactical/humans/legend_peasant_miner", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addPerkTree(::Const.Perks.MinerProfessionTree);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_rattle"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_deep_impact"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fruits_of_labor"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.removeByID("perk.stalwart");
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_dent_armor"));
		}
	}
});
