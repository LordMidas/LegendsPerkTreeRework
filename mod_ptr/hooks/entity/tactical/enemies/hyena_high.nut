::mods_hookExactClass("entity/tactical/enemies/hyena_high", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_deep_cuts"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			local maulerPerk = ::new("scripts/skills/perks/perk_ptr_mauler");
			maulerPerk.m.IsForceEnabled = true;
			this.m.Skills.add(maulerPerk);
			this.m.Skills.add(::new("scripts/skills/perks/perk_steel_brow"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
		}
	}
});
