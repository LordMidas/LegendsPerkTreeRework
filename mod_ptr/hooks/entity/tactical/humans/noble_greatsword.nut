::mods_hookExactClass("entity/tactical/humans/noble_greatsword", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.berserk");
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.steel_brow");
		this.m.Skills.removeByID("perk.relentless");
		this.m.Skills.removeByID("perk.overwhelm");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fluid_weapon"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_kata"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_underdog"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloody_harvest"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.feint");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			this.m.Skills.removeByID("perk.bloody_harvest");
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_versatile_weapon"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_exploit_opening"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_tempo"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_en_garde"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_sweeping_strikes"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_battle_flow"));

		}
	}
});
