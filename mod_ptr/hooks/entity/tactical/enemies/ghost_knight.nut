::mods_hookExactClass("entity/tactical/enemies/ghost_knight", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.getFlags().add("ghost");
	}
});
