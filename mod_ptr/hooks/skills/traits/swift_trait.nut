::mods_hookExactClass("skills/traits/swift_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[4, ::Const.Perks.AgileTree],
			[2, ::Const.Perks.UnstoppableTree]
		];
	}
});
