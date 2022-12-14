::mods_hookExactClass("entity/tactical/enemies/legend_vampire_lord", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_mastery_cleaver"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_deep_cuts"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_sanguinary"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloodbath"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_swordlike"));
		}
	}
});
