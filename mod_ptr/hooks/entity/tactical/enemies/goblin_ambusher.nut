::mods_hookExactClass("entity/tactical/enemies/goblin_ambusher", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_marksmanship"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
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
			this.m.Skills.addPerkTree(::Const.Perks.DaggerTree, 4);
		}
		else
		{
			this.m.Skills.addPerkTree(::Const.Perks.DaggerTree, 3);
		}
		this.m.Skills.addTreeOfEquippedWeapon(5);
		if (::Math.rand(1, 100) <= 50) this.m.Skills.removeByID("perk.ptr_eyes_up");
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.removeByID("perk.head_hunter");
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_eyes_up"));
		}

		return ret;
	}
});
