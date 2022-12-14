::mods_hookExactClass("entity/tactical/humans/caravan_hand", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(1);
		this.m.Skills.removeByID("perk.underdog");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_efficient_packing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_skillful_stacking"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hybridization"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(2);
			this.m.Skills.add(::new("scripts/skills/perks/perk_backstabber"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
		}
	}
});
