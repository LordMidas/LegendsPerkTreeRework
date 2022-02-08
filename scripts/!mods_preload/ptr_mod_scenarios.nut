local gt = this.getroottable();

gt.Const.PTR.modScenarios <- function()
{
	::mods_hookExactClass("scenarios/world/militia_scenario", function(o) {
		o.onBuildPerkTree <- function( _background )
		{
			this.addScenarioPerk(_background, this.Const.Perks.PerkDefs.PTRStrengthInNumbers);
		}

		local onSpawnAssets = o.onSpawnAssets;
		o.onSpawnAssets = function()
		{
			onSpawnAssets();
			local bros = this.World.getPlayerRoster().getAll();
			foreach (bro in bros)
			{
				this.addScenarioPerk(bro.getBackground(), this.Const.Perks.PerkDefs.PTRStrengthInNumbers);
			}
		}		
	});

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
}
