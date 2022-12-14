::mods_hookExactClass("skills/perks/perk_legend_battleheart", function(o) {
	o.onUpdate = function( _properties )
	{
		_properties.SurroundedDefense += 5;
	}
});
