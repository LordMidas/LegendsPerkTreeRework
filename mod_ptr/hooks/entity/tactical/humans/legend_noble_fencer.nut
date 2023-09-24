::mods_hookExactClass("entity/tactical/humans/legend_noble_fencer", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.footwork");
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.legend_back_to_basics");
		this.m.Skills.removeByID("perk.feint");
		this.m.Skills.removeByID("perk.berserk");
		this.m.Skills.removeByID("perk.reach_advantage");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_pathfinder"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_battle_flow"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_bf_fencer"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
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
