::mods_hookExactClass("entity/tactical/humans/noble_sergeant", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.addPerkTree(::Const.Perks.TacticianClassTree);
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.duelist");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_captain"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rally_the_troops"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vengeful_spite"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.removeByID("perk.legend_composure");
			this.m.Skills.removeByID("perk.feint");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.removeByID("trait.fearless");
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_mind_over_body"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		local mainhandItem = this.getMainhandItem();
		local attack = this.getSkills().getAttackOfOpportunity();
		if (mainhandItem != null && mainhandItem.isItemType(::Const.Items.ItemType.TwoHanded))
		{
			if (attack != null && !attack.isDuelistValid())
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
			}
		}

		if (attack != null && attack.isDuelistValid())
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
		}
	}
});
