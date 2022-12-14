::mods_hookExactClass("entity/tactical/humans/barbarian_madman", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addPerkTree(::Const.Perks.CleaverTree);
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_lone_wolf"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_second_wind"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
		}
	}
});
