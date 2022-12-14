::mods_hookExactClass("entity/tactical/humans/barbarian_chosen", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
		this.m.Skills.removeByID("perk.devastating_strikes");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_know_their_weakness"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_battle_flow"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_captain"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rally_the_troops"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_lone_wolf"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vengeful_spite"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.legend_balance");
			this.m.Skills.removeByID("perk.backstabber");
			this.m.Skills.removeByID("perk.mastery_fist");
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_second_wind"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fruits_of_labor"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		}
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
	}


	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_devastating_strikes"));
		}

		return ret;
	}
});
