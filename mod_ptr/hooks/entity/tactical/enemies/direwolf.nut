::mods_hookExactClass("entity/tactical/enemies/direwolf", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_onslaught"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bear_down"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_lone_wolf"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));


		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vengeful_spite"));
			local b = this.getBaseProperties();
			b.MeleeDefense += 10;
			b.RangedDefense += 10;
			local c = this.getCurrentProperties();
			c.MeleeDefense += 10;
			c.RangedDefense += 10;
		}
	}
});
