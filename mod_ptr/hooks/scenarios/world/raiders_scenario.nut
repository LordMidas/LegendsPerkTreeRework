::mods_hookExactClass("scenarios/world/raiders_scenario", function(o) {
	local onSpawnAssets = o.onSpawnAssets;
	o.onSpawnAssets = function()
	{
		onSpawnAssets();
		local bros = this.World.getPlayerRoster().getAll();
		foreach (bro in bros)
		{
			bro.getBackground().addPerk(this.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan);
		}
	}
});
