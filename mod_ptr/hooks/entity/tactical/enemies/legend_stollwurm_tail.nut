::mods_hookExactClass("entity/tactical/enemies/legend_stollwurm_tail", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Hitpoints = this.getBaseProperties().Hitpoints;
		this.m.ActionPoints = this.getBaseProperties().ActionPoints;
	}
});
