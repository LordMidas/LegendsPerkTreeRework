::mods_hookExactClass("entity/tactical/enemies/zombie", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.nine_lives");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_onslaught"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_leverage"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bear_down"));
		local wearDownPerk = ::new("scripts/skills/perks/perk_ptr_wear_them_down");
		wearDownPerk.m.IsForceEnabled = true;
		this.m.Skills.add(wearDownPerk);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			local maulerPerk = ::new("scripts/skills/perks/perk_ptr_mauler");
			maulerPerk.m.IsForceEnabled = true;
			this.m.Skills.add(maulerPerk);
		}
	}
});
