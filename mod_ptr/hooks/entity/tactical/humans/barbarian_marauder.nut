::mods_hookExactClass("entity/tactical/humans/barbarian_marauder", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_momentum"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));
		this.m.Skills.removeByID("perk.underdog");
		this.m.Skills.removeByID("perk.hold_out");
		this.m.Skills.removeByID("perk.bullseye");

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.removeByID("perk.legend_alert");
			this.m.Skills.removeByID("perk.legend_balance");
			this.m.Skills.removeByID("perk.backstabber");
			this.m.Skills.removeByID("perk.mastery_fist");
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));

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
		local mainhandItem = this.getMainhandItem();
		if (mainhandItem != null && mainhandItem.isItemType(::Const.Items.ItemType.TwoHanded))
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloody_harvest"));
		}
	}
});
