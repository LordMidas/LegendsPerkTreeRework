::mods_hookExactClass("entity/tactical/humans/hedge_knight", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.devastating_strikes");
		this.m.Skills.removeByID("perk.battle_flow");
		this.m.Skills.removeByID("perk.fearsome");
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.crippling_strikes");
		this.m.Skills.removeByID("perk.berserk");
		this.m.Skills.removeByID("perk.killing_frenzy");
		this.m.Skills.removeByID("perk.last_stand");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.steel_brow");
			this.m.Skills.removeByID("perk.feint");
			this.m.Skills.removeByID("perk.legend_specialist_shield_skill");
			this.m.Skills.removeByID("perk.legend_specialist_shield_push");
			this.m.Skills.removeByID("perk.legend_smashing_shields");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			this.m.Skills.removeByID("perk.shield_bash");
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.removeByID("perk.bloody_harvest");
			this.m.Skills.add(::new("scripts/skills/perks/perk_lone_wolf"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_exude_confidence"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			local offhandItem = this.getOffhandItem();
			if (offhandItem != null && offhandItem.isItemType(::Const.Items.ItemType.Shield))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_str_line_breaker"));
			}
		}
		local mainhandItem = this.getMainhandItem();
		local attack = this.getSkills().getAttackOfOpportunity();
		if (mainhandItem != null)
		{
			if (mainhandItem.isItemType(::Const.Items.ItemType.TwoHanded))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloody_harvest"));
				if (attack != null && !attack.isDuelistValid())
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
				}
			}
			else
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
			}
		}
		if (attack != null && attack.isDuelistValid())
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
		}
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
			}
		}

		return ret;
	}
});
