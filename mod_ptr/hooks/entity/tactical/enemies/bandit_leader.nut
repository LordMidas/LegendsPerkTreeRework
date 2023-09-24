::mods_hookExactClass("entity/tactical/enemies/bandit_leader", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();

		this.m.Skills.removeByID("perk.sundering_strikes");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_battle_forged"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_close_combat_archer"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_shields_up"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rally_the_troops"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_hold_the_line"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_push_forward"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_exude_confidence"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vengeful_spite"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));
			this.m.Skills.removeByID("perk.legend_composure");
			this.m.Skills.removeByID("perk.underdog");
			this.m.Skills.removeByID("perk.relentless");				

		}

		local agent = actor.getAIAgent();

		if (agent.findBehavior(::Const.AI.Behavior.ID.Protect) != null)
		{
			agent.removeBehavior(::Const.AI.Behavior.ID.Protect);
			agent.finalizeBehaviors();
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		local weapon = this.getMainhandItem();
		local off = this.getOffhandItem();
		if (weapon == null && off != null)
		{
			this.m.Items.unequip(off);
			this.m.Items.equip(::new("scripts/items/weapons/legend_glaive"));
		}

		if (weapon != null)
		{
			if (weapon.isItemType(::Const.Items.ItemType.TwoHanded))
			{
				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
				}

				this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
			}
			else
			{
				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
					this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
				}
				this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
			}
		}

		this.m.Skills.addTreeOfEquippedWeapon();
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_underdog"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_second_wind"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
			}
		}

		return ret;
	}
});
