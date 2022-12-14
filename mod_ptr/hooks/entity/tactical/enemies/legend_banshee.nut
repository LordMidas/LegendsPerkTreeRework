::mods_hookExactClass("entity/tactical/enemies/legend_banshee", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.getFlags().add("ghost");
	}
});
