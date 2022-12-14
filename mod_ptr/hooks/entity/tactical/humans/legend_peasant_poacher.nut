::mods_hookExactClass("entity/tactical/humans/legend_peasant_poacher", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_target_practice"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_ranged_supremacy"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_marksmanship"));
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_anticipation"));
		}
	}
});
