::mods_hookExactClass("entity/tactical/humans/noble_billman", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.ptr_bloodlust");
		this.m.Skills.removeByID("perk.ptr_dent_armor");
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.backstabber");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_follow_up"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.removeByID("perk.coup_de_grace");
			this.m.Skills.removeByID("perk.feint");
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.removeByID("perk.berserk");
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_sundering_strikes"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_anticipation"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(7);
		}
		this.m.Skills.addTreeOfEquippedWeapon(5);
	}
});
