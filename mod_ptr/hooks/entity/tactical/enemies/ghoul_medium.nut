::mods_hookExactClass("entity/tactical/enemies/ghoul_medium", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/traits/iron_jaw_trait"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloodbath"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_coup_de_grace"));
		}
	}
});
