::mods_hookExactClass("entity/tactical/humans/legend_noble_halberdier", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		this.m.Skills.removeByID("perk.backstabber");
		this.m.Skills.removeByID("perk.footwork");
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.coup_de_grace");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_follow_up"));
		this.m.Skills.removeByID("perk.berserk");

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_perfect_fit"));
		}
	}
});
