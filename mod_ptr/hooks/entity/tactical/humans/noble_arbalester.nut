::mods_hookExactClass("entity/tactical/humans/noble_arbalester", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_battle_forged"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_know_their_weakness"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_through_the_ranks"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_entrenched"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_power_shot"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.lone_wolf");
			this.m.Skills.removeByID("perk.feint");
			this.m.Skills.add(::new("scripts/skills/perks/perk_nimble"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_muscle_memory"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_iron_sights"));
		}
	}
});
