::mods_hookExactClass("entity/tactical/enemies/legend_hexe_leader", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_nimble"));
		}
	}
});
