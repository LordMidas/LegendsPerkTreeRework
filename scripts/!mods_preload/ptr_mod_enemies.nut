local gt = this.getroottable();

gt.Const.PTR.modEnemies <- function()
{
	# ::mods_hookExactClass("entity/tactical/enemies/alp", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/alp_shadow", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/bandit_leader", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battleforged"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_close_combat_archer"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rebound"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_smashing_shields"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_shields_up"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rally_the_troops"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_hold_the_line"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_push_forward"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaptation"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_second_wind"));

				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
				{
					this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
					this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				}
			}

			return ret;
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/bandit_marksman", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.removeByID("perk.close_combat_archer");
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_through_the_ranks"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_target_practice"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_ranged_supremacy"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_onslaught"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_marksmanship"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_anticipation"));
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/bandit_marksman_low", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/bandit_poacher", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_through_the_ranks"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_target_practice"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_onslaught"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_anticipation"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_specialist_sling_skill"));
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/bandit_rabble", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/bandit_rabble_poacher", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_specialist_sling_skill"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_target_practice"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/bandit_raider", function(o) {
		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.removeByType(this.Const.SkillType.Perk);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_brawny"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_bullseye"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rotation"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_recover"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_quick_hands"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_shield_expert"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));

			this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));

			this.m.Skills.addTreeOfEquippedWeapon(4);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_close_combat_archer"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_target_practice"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloody_harvest"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaptation"));
				this.m.Skills.addTreeOfEquippedWeapon(5);
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/bandit_raider_low", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/bandit_raider_wolf", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/bandit_thug", function(o) {
		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.removeByType(this.Const.SkillType.Perk);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));

			local weapon = this.getMainhandItem();
			if (weapon != null && weapon.getApplicableMasteries().len() != 0)
			{
				switch (weapon.getApplicableMasteries()[0])
				{
					case this.Const.WMS.Mastery.Spear:
					case this.Const.WMS.Mastery.Sword:
						this.m.Skills.addTreeOfEquippedWeapon(3);
						break;
					default:
						this.m.Skills.addTreeOfEquippedWeapon(2);
				}
			}

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaptation"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/direwolf", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_onslaught"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_alert"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bear_down"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/direwolf_high", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_double_strike"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/ghost", function(o) {
		local create = o.create;
		o.create = function()
		{
			create();
			this.getFlags().add("ghost");
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/ghost_knight", function(o) {
		local create = o.create;
		o.create = function()
		{
			create();
			this.getFlags().add("ghost");
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/ghoul", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_open_wounds"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodlust"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/ghoul_high", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/traits/iron_jaw_trait"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodbath"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_sanguinary"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/ghoul_medium", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/traits/iron_jaw_trait"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodbath"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_sanguinary"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/goblin_ambusher", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.DaggerTree, 3);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addPerkTree(this.Const.Perks.DaggerTree, 4);
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_marksmanship"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(4);
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.removeByID("perk.head_hunter");
			}

			return ret;
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/goblin_ambusher_low", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/goblin_fighter", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.DaggerTree, 3);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_alert"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_tempo"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_mastery_nets"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addPerkTree(this.Const.Perks.DaggerTree, 6);
				this.m.Skills.addPerkTree(this.Const.Perks.ThrowingTree, 4);
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_marksmanship"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_kata"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_net_casting"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(4);
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.addTreeOfEquippedWeapon();
				this.m.Skills.addPerkTree(this.Const.Perks.DaggerTree);
				this.m.Skills.addPerkTree(this.Const.Perks.OneHanded);
				this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
				this.m.Skills.addPerkTree(this.Const.Perks.ThrowingTree, 4);
				this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fortified_mind"));
			}

			return ret;
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/goblin_fighter_low", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/goblin_leader", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/goblin_shaman", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/goblin_wolfrider", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.DaggerTree, 3);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_double_strike"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bear_down"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));

			if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 50)
			{
				if (this.World.getTime().Days < 100)
				{
					local b = this.getBaseProperties();
					b.MeleeDefense += 5;
					b.RangedDefense += 5;
					local c = this.getCurrentProperties();
					c.MeleeDefense += 5;
					c.RangedDefense += 5;
				}
				else
				{
					this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
				}
			}

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_push_the_advantage"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(5);
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/hexe", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/hyena", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			this.m.Skills.add(this.new("scripts/skills/perks/perk_sundering_strikes"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodlust"));

				local softMetalPerk = this.new("scripts/skills/perks/perk_ptr_soft_metal");
				softMetalPerk.m.IsForceEnabled = true;
				this.m.Skills.add(softMetalPerk);
				local dismantlePerk = this.new("scripts/skills/perks/perk_ptr_dismantle");
				dismantlePerk.m.IsForceEnabled = true;
				this.m.Skills.add(dismantlePerk);
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/hyena_high", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_open_wounds"));
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/kobold_fighter", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/kobold_wolfrider", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/kraken", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/kraken_tentacle", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_bandit_outrider", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/legend_bandit_veteran", function(o) {
		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.removeByType(this.Const.SkillType.Perk);
			this.m.Skills.addTreeOfEquippedWeapon();
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);

			local weapon = this.getMainhandItem();
			if (weapon != null && weapon.getApplicableMasteries().len() != 0)
			{
				switch (weapon.getApplicableMasteries()[0])
				{
					case this.Const.WMS.Mastery.Sword:
						this.m.Skills.add(this.new("scripts/skills/perks/perk_duelist"));
						break;
					default:
						break;
				}
			}

			this.m.Skills.add(this.new("scripts/skills/perks/perk_brawny"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_bullseye"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rotation"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_recover"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battleforged"));
			//this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_lithe"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_quick_hands"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_close_combat_archer"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_momentum"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_smashing_shields"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));

			this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_full_force"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_backstabber"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_underdog"));
				this.m.Skills.addPerkTree(this.Const.Perks.ThrowingTree);

				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/legend_bandit_warlord", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			this.m.Skills.add(this.new("scripts/skills/perks/perk_feint"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_close_combat_archer"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_momentum"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_smashing_shields"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rebound"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));

			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_second_wind"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/legend_banshee", function(o) {
		local create = o.create;
		o.create = function()
		{
			create();
			this.getFlags().add("ghost");
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/legend_bear", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			local maulerSkill = this.new("scripts/skills/perks/perk_ptr_mauler");
			maulerSkill.m.IsForceEnabled = true;
			this.m.Skills.add(maulerSkill);
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/legend_catapult", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_demon_alp", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_demon_hound", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_greenwood_schrat", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_greenwood_schrat_small", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_hexe_leader", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_horse", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_mummy_heavy", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_mummy_light", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_mummy_medium", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_mummy_queen", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/legend_orc_behemoth", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.removeByID("perk.duelist");

			this.m.Skills.add(this.new("scripts/skills/racial/ptr_orc_racial"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
			}
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			}

			return ret;
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/legend_orc_elite", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.removeByID("perk.duelist");

			this.m.Skills.add(this.new("scripts/skills/racial/ptr_orc_racial"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_sundering_strikes"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/legend_redback_spider", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	# ::mods_hookExactClass("entity/tactical/enemies/legend_redback_spider_bodyguard", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/legend_rock_unhold", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.addPerkTree(this.Const.Perks.HammerTree, 6);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_dent_armor"));
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/legend_skeleton_gladiator", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/legend_skin_ghoul", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
			this.m.Skills.add(this.new("scripts/skills/traits/iron_jaw_trait"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_open_wounds"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodlust"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/legend_skin_ghoul_high", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_dismemberment"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodbath"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_sanguinary"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/legend_skin_ghoul_med", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodbath"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_sanguinary"));
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/legend_stollwurm", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_stollwurm_tail", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_vampire_lord", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_white_direwolf", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/legend_white_direwolf_bodyguard", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	# ::mods_hookExactClass("entity/tactical/enemies/lindwurm", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/lindwurm_tail", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/necromancer", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/orc_berserker", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.removeByID("perk.duelist");

			this.m.Skills.add(this.new("scripts/skills/racial/ptr_orc_racial"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTreeOfEquippedWeapon();
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(6);
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/orc_warlord", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.removeByID("perk.duelist");

			this.m.Skills.add(this.new("scripts/skills/racial/ptr_orc_racial"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_hold_out"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_sundering_strikes"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_formidable_approach"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_true_believer"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_head_smasher"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fortified_mind"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
			}
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
			}

			return ret;
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/orc_warrior", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			this.m.Skills.add(this.new("scripts/skills/racial/ptr_orc_racial"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_steadfast"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_shield_expert"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTreeOfEquippedWeapon(6);
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(5);
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/orc_warrior_low", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/orc_young", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			this.m.Skills.add(this.new("scripts/skills/racial/ptr_orc_racial"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_momentum"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_double_strike"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(4);
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/orc_young_low", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/sand_golem", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/schrat", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/schrat_small", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/serpent", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/skeleton_boss", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/skeleton_heavy", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battleforged"));
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			}
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_hold_out"));
			}

			return ret;
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/skeleton_heavy_bodyguard", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battleforged"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/skeleton_heavy_polearm", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/skeleton_lich", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/skeleton_light", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(3);
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/skeleton_medium", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(5);
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/skeleton_medium_polearm", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(6);
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/skeleton_priest", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/trickster_god", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/unhold", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.HammerTree, 6);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_dent_armor"));
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/unhold_armored", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/unhold_bog", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/unhold_frost", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.removeByID("perk.legend_muscularity");
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/unhold_frost_armored", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/vampire", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.getBaseProperties().MeleeSkill -= 10;
			this.m.Skills.removeByID("perk.legend_bloodbath");

			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.getBaseProperties().IsImmuneToStun = false;
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_composure"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTreeOfEquippedWeapon();
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(6);
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/wolf", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/zombie", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_leverage"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_onslaught"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bear_down"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_wear_them_down"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
				local maulerSkill = this.new("scripts/skills/perks/perk_ptr_mauler");
				maulerSkill.m.IsForceEnabled = true;
				this.m.Skills.add(maulerSkill);
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/zombie_betrayer", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_hold_out"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_soft_metal"));
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				local cullSkill = this.new("scripts/skills/perks/perk_ptr_cull");
				cullSkill.m.IsForceEnabled = true;
				this.m.Skills.add(cullSkill);
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/zombie_boss", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/zombie_knight", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			local b = this.getBaseProperties();
			b.IsSpecializedInSwords = true;
			b.IsSpecializedInAxes = true;
			b.IsSpecializedInMaces = true;
			b.IsSpecializedInFlails = true;
			b.IsSpecializedInPolearms = true;
			b.IsSpecializedInThrowing = true;
			b.IsSpecializedInHammers = true;
			b.IsSpecializedInSpears = true;
			b.IsSpecializedInCleavers = true;
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bear_down"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_shield_expert"));
			local maulerSkill = this.new("scripts/skills/perks/perk_ptr_mauler");
			maulerSkill.m.IsForceEnabled = true;
			this.m.Skills.add(maulerSkill);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_hold_out"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_soft_metal"));
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/zombie_nomad", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	# ::mods_hookExactClass("entity/tactical/enemies/zombie_treasure_hunter", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/zombie_yeoman", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_leverage"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_onslaught"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bear_down"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_wear_them_down"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
				local maulerSkill = this.new("scripts/skills/perks/perk_ptr_mauler");
				maulerSkill.m.IsForceEnabled = true;
				this.m.Skills.add(maulerSkill);
			}
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/zombie_yeoman_bodyguard", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/assassin", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/barbarian_beastmaster", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });


	::mods_hookExactClass("entity/tactical/enemies/humans/barbarian_champion", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_stalwart"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_second_wind"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_composure"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/barbarian_chosen", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_stalwart"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_captain"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rally_the_troops"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));


			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_second_wind"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_composure"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/humans/barbarian_drummer", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/barbarian_madman", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/humans/barbarian_marauder", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_momentum"));
			this.m.Skills.removeByID("perk.shield_expert");

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_stalwart"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(5);
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/barbarian_thrall", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(3);
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/humans/bounty_hunter", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/bounty_hunter_ranged", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/caravan_guard", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/caravan_hand", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/humans/conscript", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.removeByID("perk.nimble");
			this.m.Skills.add(this.new("scripts/skills/perks/perk_mar_lithe"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_stalwart"));
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(4);
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/conscript_polearm", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.removeByID("perk.mar_lithe");
			this.m.Skills.add(this.new("scripts/skills/perks/perk_nimble"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_head_hunter"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(6);
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/humans/councilman", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/humans/desert_devil", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.removeByID("perk.berserk");
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodbath"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_clarity"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_feint"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_composure"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_mar_perfect_fit"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_second_wind"));
				this.m.Skills.removeByID("perk.underdog");
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_battleheart"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
			}
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_double_strike"));
				local cullSkill = this.new("scripts/skills/perks/perk_ptr_cull");
				cullSkill.m.IsForceEnabled = true;
				this.m.Skills.add(cullSkill);

				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
				{
					this.m.Skills.add(this.new("scripts/skills/perks/perk_last_stand"));
				}
			}

			return ret;
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/desert_stalker", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.RangedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_through_the_ranks"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ballistics"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_sniper"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));

				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/humans/engineer", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/envoy", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/humans/executioner", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TrainedTree);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_formidable_approach"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_feint"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));

				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/humans/firstborn", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/gladiator", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/humans/gunner", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_marksmanship"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addPerkTree(this.Const.Perks.RangedTree);
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTreeOfEquippedWeapon();
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(6);
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/hedge_knight", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_last_stand"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_adrenalin"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/knight", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.removeByID("perk.legend_forceful_swing");

			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TrainedTree);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bear_down"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fearsome"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_muscularity"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/legend_noble_fencer", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.removeByID("perk.footwork");
			this.m.Skills.removeByID("perk.feint");

			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TrainedTree);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_pathfinder"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_lone_wolf"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_double_strike"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_mar_perfect_fit"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_alert"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/legend_noble_halberdier", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TrainedTree);

			this.m.Skills.removeByID("perk.underdog");
			this.m.Skills.removeByID("perk.ptr_bloodlust");
			this.m.Skills.removeByID("perk.ptr_dent_armor");
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_leverage"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_follow_up"));

			this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_head_hunter"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/legend_noble_slinger", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_blacksmith", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_butcher", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_farmhand", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_miner", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_minstrel", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_monk", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_poacher", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_squire", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_witchhunter", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/legend_peasant_woodsman", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });

	::mods_hookExactClass("entity/tactical/enemies/humans/master_archer", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.getBaseProperties().Vision = 7;
			this.getBaseProperties().IsSpecializedInCrossbows = true;

			this.m.Skills.addTree(this.Const.Perks.RangedTree);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_through_the_ranks"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_ranged_supremacy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_target_practice"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/mercenary", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_shield_expert"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_quick_hands"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_close_combat_archer"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_bullseye"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_momentum"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_smashing_shields"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTree(this.Const.Perks.ThrowingTree);
				this.m.Skills.add(this.new("scripts/skills/perks/perk_hold_out"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_duelist"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
			local weapon = this.getMainhandItem();
			if (weapon == null || weapon.getApplicableMasteries().len() == 0 || weapon.getApplicableMasteries()[0] != this.Const.WMS.Mastery.Sword)
			{
				this.m.Skills.removeByID("perk.duelist");
			}

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				if (weapon != null && weapon.getApplicableMasteries().len() != 0 && weapon.getApplicableMasteries()[0] == this.Const.WMS.Mastery.Polearm)
				{
					this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
				}
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/mercenary_low", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.add(this.new("scripts/skills/perks/perk_reach_advantage"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_shield_expert"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_quick_hands"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_smashing_shields"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_bullseye"));
				this.m.Skills.addTree(this.Const.Perks.OneHandedTree);
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(6);
			local weapon = this.getMainhandItem();
			if (weapon == null || weapon.getApplicableMasteries().len() == 0 || weapon.getApplicableMasteries()[0] != this.Const.WMS.Mastery.Sword)
			{
				this.m.Skills.removeByID("perk.duelist");
			}

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				if (weapon != null && weapon.getApplicableMasteries().len() != 0 && weapon.getApplicableMasteries()[0] == this.Const.WMS.Mastery.Polearm)
				{
					this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));
				}
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/mercenary_ranged", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTreeOfEquippedWeapon();
			this.m.Skills.addTree(this.Const.Perks.RangedTree);
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_ranged_supremacy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_through_the_ranks"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_target_practice"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_pathfinder"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_onslaught"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_marksmanship"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/militia", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/militia_captain", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/militia_guest", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/militia_guest_ranged", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/militia_ranged", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/militia_veteran", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/noble", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	::mods_hookExactClass("entity/tactical/enemies/humans/noble_arbalester", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.RangedTree);
			this.m.Skills.addTree(this.Const.Perks.TrainedTree);
			this.m.Skills.removeByID("perk.underdog");
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battleforged"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_nimble"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/noble_billman", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.getBaseProperties().IsSpecializedInPolearms = true;
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TrainedTree);
			this.m.Skills.removeByID("perk.underdog");

			this.m.Skills.removeByID("perk.ptr_bloodlust");
			this.m.Skills.removeByID("perk.ptr_dent_armor");
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_leverage"));

			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_crippling_strikes"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_head_hunter"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/noble_footman", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_smashing_shields"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_hold_out"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTree(this.Const.Perks.TrainedTree);
				this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_rattle"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_return_favor"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon(6);
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/noble_greatsword", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TrainedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_coup_de_grace"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_formidable_approach"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTree(this.Const.Perks.TrainedTree);
				this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.removeByID("perk.underdog");
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_battleheart"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_rattle"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_return_favor"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/noble_sergeant", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addTree(this.Const.Perks.TrainedTree);
			this.m.Skills.addTree(this.Const.Perks.TacticianClassTree);
			this.m.Skills.addTree(this.Const.Perks.SergeantClassTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_clarity"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_captain"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_mind_over_body"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rally_the_troops"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTree(this.Const.Perks.TrainedTree);
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_second_wind"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/nomad_archer", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_marksmanship"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_onslaught"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_entrenched"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_anticipation"));
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 30)
			{
				this.m.Skills.addTreeOfEquippedWeapon(4);
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(2);
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/nomad_cutthroat", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaptation"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_underdog"));
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();

			local weapon = this.getMainhandItem();
			if (weapon != null && weapon.getApplicableMasteries().len() != 0)
			{
				switch (weapon.getApplicableMasteries()[0])
				{
					case this.Const.WMS.Mastery.Spear:
					case this.Const.WMS.Mastery.Sword:
						this.m.Skills.addTreeOfEquippedWeapon(3);
						break;
					default:
						this.m.Skills.addTreeOfEquippedWeapon(2);
				}
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/nomad_leader", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_close_combat_archer"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rebound"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_battle_flow"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_smashing_shields"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_shields_up"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_rally_the_troops"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_hold_the_line"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_push_forward"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_second_wind"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_battleforged"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_composure"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_backstabber"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_underdog"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaptation"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_vengeance"));
			}
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_killing_frenzy"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
				{
					this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
					this.m.Skills.add(this.new("scripts/skills/perks/perk_steel_brow"));
				}
			}

			return ret;
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/nomad_outlaw", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_close_combat_archer"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_fast_adaptation"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_backstabber"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_battleforged"));
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.addTreeOfEquippedWeapon(5);
				this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
				this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
				local weapon = this.getMainhandItem();
				if (weapon == null || weapon.getApplicableMasteries().len() == 0 || weapon.getApplicableMasteries()[0] != this.Const.WMS.Mastery.Sword)
				{
					this.m.Skills.removeByID("perk.duelist");
				}
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(4);
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/nomad_slinger", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();

			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_patience"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/effects/dodge_effect"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_iron_sights"));
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 50)
				{
					if (this.World.getTime().Days >= 120)
					{
						this.m.Skills.addTreeOfEquippedWeapon();
					}
					else if (this.World.getTime().Days >= 90)
					{
						this.m.Skills.addTreeOfEquippedWeapon(6);
					}
					else if (this.World.getTime().Days >= 60)
					{
						this.m.Skills.addTreeOfEquippedWeapon(5);
					}
					else if (this.World.getTime().Days >= 30)
					{
						this.m.Skills.addTreeOfEquippedWeapon(4);
					}
				}
			}
		}
	});

	::mods_hookExactClass("entity/tactical/enemies/humans/officer", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addPerkTree(this.Const.Perks.OneHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TwoHandedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TrainedTree);
			this.m.Skills.addPerkTree(this.Const.Perks.TacticianClassTree);
			this.m.Skills.addPerkTree(this.Const.Perks.SergeantClassTree);

			this.m.Skills.add(this.new("scripts/skills/effects/perk_legend_assured_conquest"));
			this.m.Skills.add(this.new("scripts/skills/effects/perk_steel_brow"));
			this.m.Skills.add(this.new("scripts/skills/effects/perk_legend_clarity"));
			this.m.Skills.add(this.new("scripts/skills/effects/perk_ptr_personal_armor"));
			this.m.Skills.add(this.new("scripts/skills/effects/perk_ptr_know_their_weakness"));
			this.m.Skills.add(this.new("scripts/skills/effects/perk_rally_the_troops"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/effects/perk_last_stand"));
				this.m.Skills.add(this.new("scripts/skills/effects/perk_legend_composure"));
				this.m.Skills.add(this.new("scripts/skills/effects/perk_full_force"));
				this.m.Skills.add(this.new("scripts/skills/effects/perk_fortified_mind"));
				this.m.Skills.add(this.new("scripts/skills/effects/perk_vengeance"));
				this.m.Skills.add(this.new("scripts/skills/effects/perk_legend_second_wind"));
				this.m.Skills.add(this.new("scripts/skills/effects/perk_legend_mind_over_body"));
				this.m.Skills.add(this.new("scripts/skills/traits/fearless_trait"));
			}
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.add(this.new("scripts/skills/effects/perk_legend_mind_over_body"));
			}

			return ret;
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/humans/peasant", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/peasant_armed", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/peasant_armed_infected", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/peasant_southern", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/sato_manhunter", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/sato_manhunter_ranged", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/sato_manhunter_veteran", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/sato_manhunter_veteran_ranged", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/slave", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/standard_bearer", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	::mods_hookExactClass("entity/tactical/enemies/humans/swordmaster", function(o) {
		local onInit = o.onInit;
		o.onInit = function()
		{
			onInit();
			this.m.Skills.addTree(this.Const.Perks.OneHandedTree);

			this.m.Skills.add(this.new("scripts/skills/perks/perk_overwhelm"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_bloodbath"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_fresh_and_furious"));

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_second_wind"));
				this.m.Skills.removeByID("perk.underdog");
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_battleheart"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_nine_lives"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_ptr_survival_instinct"));
				this.m.Skills.add(this.new("scripts/skills/perks/perk_legend_assured_conquest"));
			}
		}

		local assignRandomEquipment = o.assignRandomEquipment;
		o.assignRandomEquipment = function()
		{
			assignRandomEquipment();
			this.m.Skills.addTreeOfEquippedWeapon();
		}

		local makeMiniboss = o.makeMiniboss;
		o.makeMiniboss = function()
		{
			local ret = makeMiniboss();
			if (ret)
			{
				this.m.Skills.add(this.new("scripts/skills/perks/perk_double_strike"));
				local cullSkill = this.new("scripts/skills/perks/perk_ptr_cull");
				cullSkill.m.IsForceEnabled = true;
				this.m.Skills.add(cullSkill);

				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == this.Const.Difficulty.Legendary)
				{
					this.m.Skills.add(this.new("scripts/skills/perks/perk_colossus"));
					this.m.Skills.add(this.new("scripts/skills/perks/perk_last_stand"));
				}
			}

			return ret;
		}
	});

	# ::mods_hookExactClass("entity/tactical/enemies/humans/vizier", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
	#
	# ::mods_hookExactClass("entity/tactical/enemies/humans/wildman", function(o) {
	# 	local onInit = o.onInit;
	# 	o.onInit = function()
	# 	{
	# 		onInit();
	# 	}
	# });
}
