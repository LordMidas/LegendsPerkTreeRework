::mods_hookExactClass("scenarios/world/sato_escaped_slaves_scenario", function(o) {
	o.onBuildPerkTree <- function( _background )
	{
		if (_background.getID() == "background.slave")
		{
			_background.removePerk(::Const.Perks.PerkDefs.PTRPromisedPotential);
		}
	}
});
