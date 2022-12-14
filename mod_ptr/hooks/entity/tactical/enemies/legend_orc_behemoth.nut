::mods_hookExactClass("entity/tactical/enemies/legend_orc_behemoth", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
		this.m.Skills.removeByID("perk.duelist");
		this.m.Skills.removeByID("perk.berserk");

		this.m.Skills.add(::new("scripts/skills/racial/ptr_orc_racial"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			local intimidatePerk = ::new("scripts/skills/perks/perk_ptr_intimidate");
			intimidatePerk.m.IsForceEnabled = true;
			this.m.Skills.add(intimidatePerk);
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.removeByID("perk.legend_second_wind");
		}
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.removeByID("perk.adrenalin");
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
		}

		return ret;
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		this.m.Skills.removeByID("perk.ptr_kata");
		this.m.Skills.removeByID("perk.ptr_swordlike");
		this.m.Skills.removeByID("perk.ptr_exploit_opening");
	}
});
