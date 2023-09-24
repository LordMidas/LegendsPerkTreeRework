::mods_hookExactClass("entity/tactical/enemies/goblin_fighter", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_tempo"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_mastery_nets"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_skirmisher"));
		local kata = ::new("scripts/skills/perks/perk_ptr_kata");
		kata.m.IsForceEnabled = true;
		this.m.Skills.add(kata);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hybridization"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_momentum"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_close_combat_archer"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(4);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(5);
		}
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.addTreeOfEquippedWeapon();
			this.m.Skills.addPerkTree(::Const.Perks.DaggerTree);
			this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
			this.m.Skills.addPerkTree(::Const.Perks.ThrowingTree, 4);
			this.m.Skills.add(::new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_fortified_mind"));
		}

		return ret;
	}
});
