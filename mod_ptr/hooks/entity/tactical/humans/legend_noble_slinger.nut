::mods_hookExactClass("entity/tactical/humans/legend_noble_slinger", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.bullseye");
		this.m.Skills.removeByID("perk.rotation");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_mastery_slings"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_specialist_sling_skill"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_specialist_sling_damage"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_footwork"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_heavy_projectiles"));
		}
	}
});
