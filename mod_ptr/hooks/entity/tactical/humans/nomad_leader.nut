::mods_hookExactClass("entity/tactical/humans/nomad_leader", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_nimble"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_close_combat_archer"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_battle_flow"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_shields_up"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rally_the_troops"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_hold_the_line"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_push_forward"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vengeful_spite"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_backstabber"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_exude_confidence"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
		}

		local agent = actor.getAIAgent();

		if (agent.findBehavior(::Const.AI.Behavior.ID.Protect) != null)
		{
			agent.removeBehavior(::Const.AI.Behavior.ID.Protect);
			agent.finalizeBehaviors();
		}
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
			}
		}

		return ret;
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
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
});
