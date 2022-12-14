::mods_hookExactClass("skills/traits/ailing_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0.5, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[0.5, ::Const.Perks.ResilientTree]
		];
	}
});
