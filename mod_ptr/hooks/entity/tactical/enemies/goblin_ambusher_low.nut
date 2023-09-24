::mods_hookExactClass("entity/tactical/enemies/goblin_ambusher_low", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.ptr_ranged_supremacy");
		this.m.Skills.removeByID("perk.mastery.bow");
		this.m.Skills.removeByID("perk.ptr_light_weapon");				

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("effects.dodge");	
			this.m.Skills.removeByID("perk.relentless");
			this.m.Skills.removeByID("perk.berserk");		
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
		if (::Math.rand(1, 100) <= 33) this.m.Skills.removeByID("perk.ptr_eyes_up");
	}		
});
