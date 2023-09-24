::mods_hookExactClass("entity/tactical/enemies/legend_orc_elite", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
		this.m.Skills.removeByID("perk.duelist");
		this.m.Skills.removeByID("perk.perfect_focus");

		this.m.Skills.add(::new("scripts/skills/racial/ptr_orc_racial"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			local intimidatePerk = ::new("scripts/skills/perks/perk_ptr_intimidate");
			intimidatePerk.m.IsForceEnabled = true;
			this.m.Skills.add(intimidatePerk);
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.removeByID("perk.underdog");
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.removeByID("perk.legend_second_wind");
			this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));

		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		this.m.Skills.removeByID("perk.ptr_kata");
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		this.m.Skills.removeByID("perk.last_stand");
		return ret;
	}
});
