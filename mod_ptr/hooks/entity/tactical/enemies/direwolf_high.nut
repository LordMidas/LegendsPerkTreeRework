::mods_hookExactClass("entity/tactical/enemies/direwolf_high", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));


		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.nimble");				
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
		}
	}
});
