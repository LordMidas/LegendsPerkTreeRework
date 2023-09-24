::mods_hookExactClass("entity/tactical/humans/legend_peasant_monk", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		local inspiringPresencePerk = ::new("scripts/skills/perks/perk_inspiring_presence");
		inspiringPresencePerk.m.IsForceEnabled = true;
		this.m.Skills.add(inspiringPresencePerk);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		}
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
