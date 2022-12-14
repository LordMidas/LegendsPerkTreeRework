::mods_hookExactClass("entity/tactical/humans/legend_peasant_witchhunter", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_take_aim"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_entrenched"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_iron_sights"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_versatile_weapon"));
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_muscle_memory"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_mind_over_body"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ballistics"));
		}
	}
});
