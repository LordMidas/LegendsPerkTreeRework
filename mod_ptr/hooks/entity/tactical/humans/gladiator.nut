::mods_hookExactClass("entity/tactical/humans/gladiator", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		this.m.Skills.addPerkTree(::Const.Perks.ThrowingTree);
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.add(::new("scripts/skills/perks/perk_steel_brow"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rotation"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_tempo"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));

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
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
		}

		return ret;
	}
});
