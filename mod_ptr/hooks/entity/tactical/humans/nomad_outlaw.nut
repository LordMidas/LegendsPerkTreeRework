::mods_hookExactClass("entity/tactical/humans/nomad_outlaw", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.quick_hands");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_close_combat_archer"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_backstabber"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
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
			this.m.Skills.addTreeOfEquippedWeapon(5);
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(4);
		}
	}
});
