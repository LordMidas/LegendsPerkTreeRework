local gt = this.getroottable();

gt.Const.PTR.modEnemies <- function()
{
	::mods_hookExactClass("entity/tactical/enemies/ghost", function(o) {
		local create = o.create;
		o.create = function()
		{
			create();
			this.getFlags().add("ghost");
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/ghost_knight", function(o) {
		local create = o.create;
		o.create = function()
		{
			create();
			this.getFlags().add("ghost");
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/legend_banshee", function(o) {
		local create = o.create;
		o.create = function()
		{
			create();
			this.getFlags().add("ghost");
		}
	});
}
