::mods_hookExactClass("entity/tactical/humans/nomad_slinger", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.head_hunter");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_mastery_slings"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));

		if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 30)
		{
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_heavy_projectiles"));
			}
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_small_target"));
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ballistics"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
		}
	}
});
