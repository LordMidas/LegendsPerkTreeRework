::mods_hookExactClass("entity/tactical/enemies/orc_warrior", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/racial/ptr_orc_racial"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
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
			this.m.Skills.addTreeOfEquippedWeapon(6);
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(5);
		}

		this.m.Skills.removeByID("perk.ptr_kata");
	}
});
