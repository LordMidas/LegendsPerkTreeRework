::mods_hookExactClass("entity/tactical/enemies/zombie_betrayer", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_hold_out"));
		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			// local cullPerk = ::new("scripts/skills/perks/perk_ptr_cull");
			// cullPerk.m.IsForceEnabled = true;
			// this.m.Skills.add(cullPerk);
		}
	}
});
