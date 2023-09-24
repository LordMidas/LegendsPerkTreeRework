::mods_hookExactClass("entity/tactical/humans/legend_peasant_butcher", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addPerkTree(::Const.Perks.ButcherProfessionTree);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_swordlike"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_mastery_cleaver"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fruits_of_labor"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_deep_cuts"));
		}
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloodbath"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloodlust"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_mauler"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		}

		return ret;
	}
});
