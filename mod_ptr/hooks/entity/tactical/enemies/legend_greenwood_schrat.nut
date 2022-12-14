::mods_hookExactClass("entity/tactical/enemies/legend_greenwood_schrat", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Hitpoints = this.getBaseProperties().Hitpoints;						 		
	}
});
