::mods_hookExactClass("entity/tactical/humans/legend_peasant_woodsman", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fruits_of_labor"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloody_harvest"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_heft"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_dismemberment"));
		}
	}
});
