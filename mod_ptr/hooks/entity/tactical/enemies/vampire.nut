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

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
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
