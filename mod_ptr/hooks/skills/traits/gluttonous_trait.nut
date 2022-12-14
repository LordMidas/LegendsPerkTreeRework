::mods_hookExactClass("skills/traits/gluttonous_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.OrganisedTree]
		];
	}
});
