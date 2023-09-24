::mods_hookExactClass("entity/tactical/enemies/skeleton_heavy", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigilant"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_underdog"));
		}
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_hold_out"));
		}

		return ret;
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
