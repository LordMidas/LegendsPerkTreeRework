::mods_hookExactClass("entity/tactical/humans/militia", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.legend_specialist_militia_skill");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
		if (this.Math.rand(1,100) <= 25)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.removeByID("perk.legend_specialist_spearwall");
			this.m.Skills.removeByID("perk.legend_specialist_spearthrust");
			this.m.Skills.removeByID("perk.legend_specialist_militia_damage");
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
			this.m.Skills.addTreeOfEquippedWeapon(4);
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(2);
		}
	}
});
