::mods_hookExactClass("entity/tactical/humans/gunner", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_muscle_memory"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_take_aim"));
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_power_shot"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
		}
	}
});
