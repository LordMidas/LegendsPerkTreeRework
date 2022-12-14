::mods_hookExactClass("skills/traits/frail_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0, ::Const.Perks.PerkDefs.PTRManOfSteel],
			[0.5, ::Const.Perks.PerkDefs.PTRRisingStar]
		];

		this.m.PerkGroupMultipliers = [
			[0.25, ::Const.Perks.SturdyTree],
			[0, ::Const.Perks.LargeTree],
			[0.25, ::Const.Perks.ResilientTree]
		];
	}
});
