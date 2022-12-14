::mods_hookExactClass("entity/tactical/humans/standard_bearer", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.steel_brow");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_back_to_basics"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bolster"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_intimidate"));
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.legend_hold_the_line");
			this.m.Skills.removeByID("perk.legend_push_forward");
			this.m.Skills.add(::new("scripts/skills/perks/perk_mastery_polearm"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_nimble"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_long_reach"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));
		}
	}
});
