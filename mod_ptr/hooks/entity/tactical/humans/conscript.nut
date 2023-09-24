::mods_hookExactClass("entity/tactical/humans/conscript", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(4);
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.add(::new("scripts/skills/perks/perk_nimble"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_phalanx"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_pathfinder"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rebound"));

		if (this.Math.rand(1,100) <= 25)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(6);
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_alert"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hale_and_hearty"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_overwhelm"));
		}
	}
});
