::mods_hookExactClass("entity/tactical/enemies/orc_berserker", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
		this.m.Skills.removeByID("perk.duelist");
		this.m.Skills.removeByID("perk.last_stand");

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/racial/ptr_orc_racial"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_overwhelm"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.getBaseProperties().MeleeSkill -= 10;
			this.m.Skills.add(::new("scripts/skills/perks/perk_lone_wolf"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
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
			this.m.Skills.addTreeOfEquippedWeapon();
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(6);
		}
	}
});
