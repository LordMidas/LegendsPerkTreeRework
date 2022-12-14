::mods_hookExactClass("entity/tactical/enemies/legend_skin_ghoul_high", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_dismemberment"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloodbath"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_sanguinary"));
		}
	}
});
