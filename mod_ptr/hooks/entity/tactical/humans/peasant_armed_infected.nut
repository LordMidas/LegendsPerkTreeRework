::mods_hookExactClass("entity/tactical/humans/peasant_armed_infected", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Hitpoints = this.getBaseProperties().Hitpoints;
	}
});
