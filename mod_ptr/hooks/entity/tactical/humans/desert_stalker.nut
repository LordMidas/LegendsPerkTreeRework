::mods_hookExactClass("entity/tactical/humans/desert_stalker", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.getBaseProperties().Vision = 7;
		this.getBaseProperties().DamageDirectMult = 1.0;
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.head_hunter");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_small_target"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_target_practice"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hip_shooter"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_flaming_arrows"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ballistics"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_hair_splitter"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_lone_wolf"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_eyes_up"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));
		}
	}
});
