::mods_hookExactClass("entity/tactical/enemies/vampire", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.getBaseProperties().MeleeSkill -= 10;
		this.m.Skills.removeByID("perk.legend_bloodbath");

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_know_their_weakness"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.getBaseProperties().IsImmuneToStun = false;
			this.m.Skills.add(::new("scripts/skills/perks/perk_lone_wolf"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
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
			this.m.Skills.addTreeOfEquippedWeapon();
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(6);
		}
	}
});
