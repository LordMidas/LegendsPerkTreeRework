::mods_hookExactClass("entity/tactical/humans/barbarian_thrall", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.hold_out");
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.removeByID("perk.legend_balance");
			this.m.Skills.removeByID("perk.backstabber");
			this.m.Skills.removeByID("perk.mastery_fist");
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_momentum"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
		}
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(3);
	}
});
