::mods_hookExactClass("entity/tactical/humans/barbarian_champion", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.underdog");
		this.m.Skills.removeByID("perk.crippling_strikes");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloody_harvest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_sweeping_strikes"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.removeByID("perk.legend_alert");
			this.m.Skills.removeByID("perk.legend_balance");
			this.m.Skills.removeByID("perk.backstabber");
			this.m.Skills.removeByID("perk.mastery_fist");
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_second_wind"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_battle_flow"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
	}
});
