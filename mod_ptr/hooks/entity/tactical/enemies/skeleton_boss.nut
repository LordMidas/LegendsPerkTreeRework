::mods_hookExactClass("entity/tactical/enemies/skeleton_boss", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_hold_out"));
		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigilant"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_battleheart"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
		}
	}
});
