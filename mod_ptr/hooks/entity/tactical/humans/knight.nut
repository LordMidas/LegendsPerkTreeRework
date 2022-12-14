::mods_hookExactClass("entity/tactical/humans/knight", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.crippling_strikes");
		this.m.Skills.removeByID("perk.coup_de_grace");
		this.m.Skills.removeByID("perk.reach_advantage");
		this.m.Skills.removeByID("perk.berserk");
		this.m.Skills.removeByID("perk.last_stand");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_exude_confidence"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_sundering_strikes"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.steel_brow");
			this.m.Skills.removeByID("perk.feint");
			this.m.Skills.removeByID("perk.legend_specialist_shield_skill");
			this.m.Skills.removeByID("perk.legend_specialist_shield_push");
			this.m.Skills.removeByID("perk.legend_smashing_shields");
			this.m.Skills.removeByID("perk.shield_bash");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.removeByID("perk.legend_forceful_swing");
			this.m.Skills.removeByID("perk.bloody_harvest");
			this.m.Skills.removeByID("perk.legend_composure");
			this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));
		}

		local agent = actor.getAIAgent();

		if (agent.findBehavior(::Const.AI.Behavior.ID.Protect) != null)
		{
			agent.removeBehavior(::Const.AI.Behavior.ID.Protect);
			agent.finalizeBehaviors();
		}
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		local offhandItem = this.getOffhandItem();

		if (offhandItem != null && offhandItem.isItemType(::Const.Items.ItemType.Shield))
		{
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_str_phalanx"));
			}
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_line_breaker"));
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			local mainhandItem = this.getMainhandItem();
			local attack = this.getSkills().getAttackOfOpportunity();
			if (attack != null && attack.isDuelistValid())
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
			}

			if (mainhandItem != null && mainhandItem.isItemType(::Const.Items.ItemType.TwoHanded))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));
				if (attack != null && !attack.isDuelistValid())
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
				}
			}
		}
	}
});
