::mods_hookExactClass("entity/tactical/humans/barbarian_drummer", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{

		onInit();
		this.m.Skills.removeByID("perk.underdog");

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		}
	}
});
