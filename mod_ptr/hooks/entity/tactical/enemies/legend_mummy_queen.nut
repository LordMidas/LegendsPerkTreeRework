::mods_hookExactClass("entity/tactical/enemies/legend_mummy_queen", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_feint"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_tempo"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fluid_weapon"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_en_garde"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));
		}
	}
});
