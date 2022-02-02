local gt = this.getroottable();

gt.Const.PTR.modScenarios <- function()
{
	::mods_hookExactClass("scenarios/world/militia_scenario", function(o) {
		local onHiredByScenario = o.onHiredByScenario;
		o.onHiredByScenario = function( _bro )
		{
			onHiredByScenario(_bro);
			_bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			_bro.getBackground().addPerk(this.Const.Perks.PerkDefs.PTRStrengthInNumbers);
		}

		local onSpawnAssets = o.onSpawnAssets;
		o.onSpawnAssets = function()
		{
			onSpawnAssets();
			local bros = this.World.getPlayerRoster().getAll();
			foreach (bro in bros)
			{
				bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
				bro.getBackground().addPerk(this.Const.Perks.PerkDefs.PTRStrengthInNumbers);
			}
		}		
	});
}
