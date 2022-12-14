::mods_hookExactClass("entity/tactical/enemies/legend_skeleton_gladiator", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_two_for_one"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_a_better_grip"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_through_the_gaps"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hybridization"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_smashing_shields"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
		}
	}
});
