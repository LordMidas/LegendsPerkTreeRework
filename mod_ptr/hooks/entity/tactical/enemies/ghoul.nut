::mods_hookExactClass("entity/tactical/enemies/ghoul", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_deep_cuts"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.legend_muscularity");
			local b = this.getBaseProperties();
			b.MeleeDefense += 5;
			b.RangedDefense += 5;
			local c = this.getCurrentProperties();
			c.MeleeDefense += 5;
			c.RangedDefense += 5;
			// in new mod replace +5 mdef/rdef with dodge this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloodlust"));
		}
	}
});
