local gt = this.getroottable();

gt.Const.PTR.modSkills <- function()
{
	::mods_hookNewObject("skills/perks/perk_feint", function(o) {
		local onTargetMissed = o.onTargetMissed;
		o.onTargetMissed = function( _skill, _targetEntity )
		{
			if (_skill.isRanged())
			{
				return;
			}
			onTargetMissed( _skill, _targetEntity );
		}
	});
	::mods_hookNewObject("skills/perks/perk_battle_forged", function(o) {
		o.getReductionPercentage <- function()
		{
			local armor = this.getContainer().getActor().getArmor(this.Const.BodyPart.Head) + this.getContainer().getActor().getArmor(this.Const.BodyPart.Body);
			return this.Math.floor(armor * 0.05);
		}

		o.isHidden = function()
		{
			return this.getReductionPercentage() <= 0;
		}

		o.getDescription = function()
		{
			return "Specialize in heavy armor! Armor damage taken is reduced by a percentage equal to [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of the current total armor value of both body and head armor. The heavier your armor and helmet, the more you benefit.";
		}

		o.getTooltip = function()
		{
			local tooltip = this.skill.getTooltip();

			local reduction = this.getReductionPercentage();
			tooltip.push({
				id = 6,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Only receive [color=" + this.Const.UI.Color.PositiveValue + "]" + (100-reduction) + "%[/color] of any damage to armor from attacks"
			});

			return tooltip;
		}

		o.onBeforeDamageReceived = function ( _attacker, _skill, _hitInfo, _properties )
		{
			if (_attacker != null && _attacker.getID() == this.getContainer().getActor().getID() || _skill != null && !_skill.isAttack())
			{
				return;
			}

			local reduction = this.getReductionPercentage();
			_properties.DamageReceivedArmorMult *= 1.0 - reduction * 0.01;
		}
	});

	::mods_hookNewObject("skills/perks/perk_legend_clarity", function(o) {
		o.m.Type = this.Const.SkillType.Perk;
		o.onUpdate = function(_properties)
		{
			local actor = this.getContainer().getActor();

			if (!actor.getSkills().hasSkill("perk.berserk") && !actor.getSkills().hasSkill("effects.dazed") && !actor.getSkills().hasSkill("effects.drunk") && !actor.getSkills().hasSkill("effects.taunted") && !actor.getSkills().hasSkill("effects.hangover") && !actor.getSkills().hasSkill("effects.staggered") && !actor.getSkills().hasSkill("effects.horrified") && !actor.getSkills().hasSkill("injury.severe_concussion") && this.getContainer().getActor().getMoraleState() >= this.Const.MoraleState.Wavering)
			{
				_properties.ActionPoints += 1;
			}

			if (actor.getSkills().hasSkill("effects.iron_will") || actor.getSkills().hasSkill("effects.recovery_potion") || actor.getSkills().hasSkill("effects.lionheart_potion") || actor.getSkills().hasSkill("effects.cat_potion") || actor.getSkills().hasSkill("effects.legend_hexe_ichor_potion"))
			{
				_properties.ActionPoints += 1;
			}
		}
	});

	::mods_hookNewObject("skills/actives/adrenaline_skill", function(o) {
		local onAdded = ::mods_getMember(o, "onAdded");
		o.onAdded <- function()
		{
			onAdded();
			local actor = this.getContainer().getActor();
			if (actor.isPlayerControlled())
			{
				return;
			}

			local agent = actor.getAIAgent();

			if (agent.findBehavior(this.Const.AI.Behavior.ID.Adrenaline) == null)
			{
				agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_adrenaline"));
				agent.finalizeBehaviors();
			}
		}
	});

	::mods_hookNewObject("skills/actives/legend_hold_the_line", function(o) {
		local onAdded = ::mods_getMember(o, "onAdded");
		o.onAdded <- function()
		{
			onAdded();
			local actor = this.getContainer().getActor();
			if (actor.isPlayerControlled())
			{
				return;
			}

			local agent = actor.getAIAgent();

			if (agent.findBehavior(this.Const.AI.Behavior.ID.BoostStamina) == null)
			{
				agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_boost_stamina"));
				agent.finalizeBehaviors();
			}
		}
	});

	::mods_hookNewObject("skills/actives/legend_push_forward", function(o) {
		local onAdded = ::mods_getMember(o, "onAdded");
		o.onAdded <- function()
		{
			onAdded();
			local actor = this.getContainer().getActor();
			if (actor.isPlayerControlled())
			{
				return;
			}

			local agent = actor.getAIAgent();

			if (agent.findBehavior(this.Const.AI.Behavior.ID.BoostStamina) == null)
			{
				agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_boost_stamina"));
				agent.finalizeBehaviors();
			}
		}
	});

	::mods_hookNewObject("skills/actives/rally_the_troops", function(o) {
		local onAdded = ::mods_getMember(o, "onAdded");
		o.onAdded <- function()
		{
			onAdded();
			local actor = this.getContainer().getActor();
			if (actor.isPlayerControlled())
			{
				return;
			}

			local agent = actor.getAIAgent();

			if (agent.findBehavior(this.Const.AI.Behavior.ID.Rally) == null)
			{
				agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_rally"));
				agent.finalizeBehaviors();
			}
		}
	});

	::mods_hookNewObject("skills/perks/perk_legend_onslaught", function(o) {
		o.onTargetHit = function( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
		{
			if (!_targetEntity.isAlive() || _targetEntity.isDying())
			{
				return false;
			}

			if (_targetEntity.getCurrentProperties().IsImmuneToStun)
			{
				return false;
			}

			if (_targetEntity.isNonCombatant())
			{
				return false;
			}

			local user = _skill.getContainer().getActor();
			local ourInit = user.getInitiative();
			local targetInit = _targetEntity.getInitiative();

			if (ourInit <= targetInit)
			{
				return false;
			}

			local weapon = user.getMainhandItem();
			local chance = 50;
			if (weapon != null && weapon.getCategories().find("Staff") != null)
			{
				chance = 100;
			}

			if (this.Math.rand(1, 100) > chance)
			{
				return false;
			}

			if (!_targetEntity.getSkills().hasSkill("effects.stunned"))
			{
				_targetEntity.getSkills().add(this.new("scripts/skills/effects/legend_baffled_effect"));

				if (!user.isHiddenToPlayer() && _targetEntity.getTile().IsVisibleForPlayer)
				{
					this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(user) + " battered " + this.Const.UI.getColorizedEntityName(_targetEntity) + " leaving them baffled");
				}
			}

			return true;
		}
	});

	::mods_hookNewObject("skills/actives/aimed_shot", function(o) {
		o.m.FieldsChangedByFlamingArrows <- false;

		local oldOnAfterUpdate = o.onAfterUpdate;
		o.onAfterUpdate = function( _properties )
		{
			oldOnAfterUpdate(_properties);
			if (this.getContainer().hasSkill("perk.ptr_target_practice"))
			{
				this.m.ActionPointCost -= 1;
			}

			if (this.getContainer().hasSkill("perk.ptr_ranged_supremacy"))
			{
				this.m.MaxRange += 1;
			}

			if (this.getContainer().hasSkill("perk.ptr_flaming_arrows"))
			{
				_properties.ThreatOnHit += this.Math.min(20, this.Math.max(0, _properties.getRangedSkill() * 0.2));
				if (this.m.FieldsChangedByFlamingArrows == false)
				{
					this.m.Description = "A focused and carefully aimed shot with a good outlook of hitting its intended target even at a distance. On a successful hit, will light the target tile on fire and trigger a morale check for the target. Can not be used while engaged in melee.";
					this.m.FieldsChangedByFlamingArrows = true;
				}
			}
			else if (this.m.FieldsChangedByFlamingArrows)
			{
				this.m.resetField("Description");
				this.m.FieldsChangedByFlamingArrows = false;
			}
		}

		local onUse = o.onUse;
		o.onUse = function( _user, _targetTile )
		{
			local ret = onUse(_user, _targetTile);

			if (ret && this.getContainer().hasSkill("perk.ptr_flaming_arrows"))
			{
				this.Time.scheduleEvent(this.TimeUnit.Real, 250, this.onApply.bindenv(this), {
					Skill = this,
					User = _user,
					TargetTile = _targetTile
				});
			}

			return ret;
		}

		o.onApply <- function ( _data )
		{
			local targets = [];
			targets.push(_data.TargetTile);

			this.Sound.play(this.m.SoundOnHit[this.Math.rand(0, this.m.SoundOnHit.len() - 1)], 1.0, _data.TargetTile.Pos);
			local p = {
				Type = "fire",
				Tooltip = "Fire rages here, melting armor and flesh alike",
				IsPositive = false,
				IsAppliedAtRoundStart = false,
				IsAppliedAtTurnEnd = true,
				IsAppliedOnMovement = false,
				IsAppliedOnEnter = false,
				IsByPlayer = _data.User.isPlayerControlled(),
				Timeout = this.Time.getRound() + 1,
				Callback = this.Const.Tactical.Common.onApplyFire,
				function Applicable( _a )
				{
					return true;
				}
			};

			foreach( tile in targets )
			{
				if (tile.Subtype != this.Const.Tactical.TerrainSubtype.Snow && tile.Subtype != this.Const.Tactical.TerrainSubtype.LightSnow && tile.Type != this.Const.Tactical.TerrainType.ShallowWater && tile.Type != this.Const.Tactical.TerrainType.DeepWater)
				{
					if (tile.Properties.Effect != null && tile.Properties.Effect.Type == "fire")
					{
						tile.Properties.Effect.Timeout = this.Time.getRound() + 1;
					}
					else
					{
						if (tile.Properties.Effect != null)
						{
							this.Tactical.Entities.removeTileEffect(tile);
						}

						tile.Properties.Effect = clone p;
						local particles = [];

						for( local i = 0; i < this.Const.Tactical.FireParticles.len(); i = ++i )
						{
							particles.push(this.Tactical.spawnParticleEffect(true, this.Const.Tactical.FireParticles[i].Brushes, tile, this.Const.Tactical.FireParticles[i].Delay, this.Const.Tactical.FireParticles[i].Quantity, this.Const.Tactical.FireParticles[i].LifeTimeQuantity, this.Const.Tactical.FireParticles[i].SpawnRate, this.Const.Tactical.FireParticles[i].Stages));
						}

						this.Tactical.Entities.addTileEffect(tile, tile.Properties.Effect, particles);
						tile.clear(this.Const.Tactical.DetailFlag.Scorchmark);
						tile.spawnDetail("impact_decal", this.Const.Tactical.DetailFlag.Scorchmark, false, true);
					}
				}

				if (tile.IsOccupiedByActor)
				{
					this.Const.Tactical.Common.onApplyFire(tile, tile.getEntity());
				}
			}
		}

		local oldonTargetHit = o.onTargetHit;
		o.onTargetHit = function( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
		{
			oldonTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor );

			if (_skill != this)
			{
				return;
			}

			if (!this.getContainer().hasSkill("perk.ptr_flaming_arrows"))
			{
				return;
			}

			if (_targetEntity == null || !_targetEntity.isAlive() || _targetEntity.getMoraleState() == this.Const.MoraleState.Ignore)
			{
				return;
			}

			this.spawnIcon("perk_27", _targetEntity.getTile());
			_targetEntity.checkMorale(-1, this.Const.Morale.OnHitBaseDifficulty * (1.0 - _targetEntity.getHitpoints() / _targetEntity.getHitpointsMax()) - this.getContainer().getActor().getCurrentProperties().ThreatOnHit);
		}
	});

	::mods_hookNewObject("skills/perks/perk_reach_advantage", function(o) {
		local oldOnTargetHit = o.onTargetHit;
		o.onTargetHit = function( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
		{
			oldOnTargetHit(_skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor);

			local actor = this.getContainer().getActor();
			if (!actor.getCurrentProperties().IsAbleToUseWeaponSkills)
			{
				return;
			}

			local weapon = actor.getMainhandItem();
			if (weapon != null && weapon.isItemType(this.Const.Items.ItemType.OneHanded) && weapon.getCategories().find("Spear") != null && actor.isDoubleGrippingWeapon() && this.getContainer().hasSkill("perk.ptr_a_better_grip"))
			{
				this.m.Stacks = this.Math.min(this.m.Stacks + 1, 5);
			}
		}

		local oldonUpdate = o.onUpdate;
		o.onUpdate = function( _properties )
		{
			this.m.IsHidden = this.m.Stacks == 0;
			local actor = this.getContainer().getActor();
			local weapon = actor.getMainhandItem();

			if (weapon != null && weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon) && (weapon.isItemType(this.Const.Items.ItemType.TwoHanded) || (weapon.getCategories().find("Spear") != null && actor.isDoubleGrippingWeapon() && this.getContainer().hasSkill("perk.ptr_a_better_grip"))))
			{
				_properties.MeleeDefense += this.m.Stacks * 5;
			}
			else
			{
				this.m.Stacks = 0;
			}
		}
	});

	::mods_hookNewObject("skills/actives/quick_shot", function(o) {
		o.m.UsedCount <- 0;
		local oldOnUse = o.onUse;
		o.onUse = function( _user, _targetTile )
		{
			local result = oldOnUse( _user, _targetTile );
			this.m.UsedCount++;
			if (this.getContainer().hasSkill("effects.ptr_hip_shooter"))
			{
				if (this.m.ActionPointCost > 2)
				{
					this.m.ActionPointCost = this.Math.max(2, this.m.ActionPointCost - this.m.UsedCount);
				}
			}
			return result;
		}

		local oldonAfterUpdate = o.onAfterUpdate;
		o.onAfterUpdate = function( _properties )
		{
			oldonAfterUpdate(_properties);
			if (this.getContainer().hasSkill("effects.ptr_hip_shooter"))
			{
				if (this.m.ActionPointCost > 2)
				{
					this.m.ActionPointCost = this.Math.max(2, this.m.ActionPointCost - this.m.UsedCount);
				}
			}

			if (this.getContainer().hasSkill("perk.ptr_ranged_supremacy"))
			{
				this.m.MaxRange += 1;
			}
		}

		o.onTurnEnd <- function()
		{
			this.m.UsedCount = 0;
		}

		o.onCombatStarted <- function()
		{
			this.m.UsedCount = 0;
		}

		o.onCombatFinished <- function()
		{
			this.skill.onCombatFinished();
			this.m.UsedCount = 0;
		}
	});

	# ::mods_hookNewObject("skills/actives/legend_cheer_on_skill", function(o) {
	# 	local oldisUsable = o.isUsable;
	# 	o.isUsable = function( )
	# 	{
	# 		return this.skill.isUsable();
	# 	}
	# });
	#
	# ::mods_hookNewObject("skills/actives/legend_prepare_knockback_skill", function(o) {
	# 	o.isUsable = function()
	# 	{
	# 		return this.skill.isUsable();
	# 	}
	# });

	::mods_hookNewObject("skills/perks/perk_legend_smackdown", function(o) {
		local oldonTargetHit = o.onTargetHit;
		o.onTargetHit = function( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
		{
			local success = oldonTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor );

			if (!success)
			{
				return success;
			}

			if(_targetEntity.isAlive())
			{
				_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_smackdown_debuff_effect"));
			}

			return success;
		}
	});

	::mods_hookNewObject("skills/perks/perk_legend_assured_conquest", function(o) {
		o.onUpdate = function( _properties )
		{
			if (this.getContainer().getActor().getMoraleState() == this.Const.MoraleState.Confident)
			{
				_properties.BraveryMult *= 1.1;
				_properties.MeleeSkillMult *= 1.05;
				_properties.RangedSkillMult *= 1.05;
				_properties.MeleeDefenseMult *= 1.05;
				_properties.RangedDefenseMult *= 1.05;
			}
		}

		o.getBonusResAtPositiveMoraleCheck <- function()
		{
			return this.getContainer().getActor().getMoraleState() == this.Const.MoraleState.Confident ? 20 : 10;
		}
	});

	::mods_hookNewObject("skills/actives/perfect_focus", function(o) {
		o.m.ActionPointCost = 0;
		o.getTooltip = function()
		{
			local tooltip = this.skill.getDefaultUtilityTooltip();

			tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Your Action Points will be doubled for the remainder of this turn."
				}
			);

			if (this.getContainer().hasSkill("effects.ptr_exhausted"))
			{
				tooltip.push(
					{
						id = 10,
						type = "text",
						icon = "ui/icons/warning.png",
						text = "Not usable when Exhausted"
					}
				);
			}

			return tooltip;
		}

		o.isUsable = function()
		{
			return this.skill.isUsable() && !this.getContainer().hasSkill("effects.perfect_focus") && !this.getContainer().hasSkill("effects.ptr_exhausted");
		}
	});

	::mods_hookNewObject("skills/effects/perfect_focus_effect", function(o) {
		o.m.StartingAPFraction <- 1;
		o.m.Description = "This character has achieved perfect focus as if time itself were to stand still, gaining additional Action Points for this turn."

		o.onAdded <- function()
		{
			local actor = this.getContainer().getActor();
			this.m.StartingAPFraction = actor.getActionPoints() / actor.getActionPointsMax();
			actor.getCurrentProperties().ActionPointsMult = 2.0;
			actor.setActionPoints(actor.getActionPointsMax() * this.m.StartingAPFraction);
		}

		o.onUpdate = function (_properties)
		{
			if (!this.isGarbage())
			{
				_properties.ActionPointsMult = 2.0;
			}
		}

		o.onTurnEnd <- function()
		{
			this.getContainer().add(this.new("scripts/skills/effects/ptr_exhausted_effect"));
			this.removeSelf();
		}
	});

	::mods_hookNewObject("skills/perks/perk_coup_de_grace", function(o) {
		o.onAnySkillUsed = function ( _skill, _targetEntity, _properties )
		{
			if (_targetEntity == null)
			{
				return;
			}

			if (_skill.isAttack() && _targetEntity.getSkills().hasSkillOfType(this.Const.SkillType.TemporaryInjury))
			{
				_properties.DamageTotalMult *= 1.2;
			}

			if (_targetEntity.getSkills().hasSkill("effects.stunned") || _targetEntity.getSkills().hasSkill("effects.net") || _targetEntity.getSkills().hasSkill("effects.sleeping") || _targetEntity.getSkills().hasSkill("effects.debilitated"))
			{
				_properties.DamageTotalMult *= 1.2;
			}
		}
	});

	::mods_hookNewObject("skills/perks/perk_legend_back_to_basics", function(o) {
		o.m.Bonus <- 1.05;
		if ("onDamageReceived" in o)
		{
			o.onDamageReceived = function( _attacker, _damageHitpoints, _damageArmor )
			{
				# overwrite legends function
			}
		}

		o.onUpdate = function(_properties)
		{
			_properties.MeleeSkillMult *= this.m.Bonus;
			_properties.RangedSkillMult *= this.m.Bonus;
			_properties.MeleeDefenseMult *= this.m.Bonus;
			_properties.RangedDefenseMult *= this.m.Bonus;
			_properties.StaminaMult *= this.m.Bonus;
			_properties.InitiativeMult *= this.m.Bonus;
			_properties.HitpointsMult *= this.m.Bonus;
			_properties.BraveryMult *= this.m.Bonus;
			_properties.XPGainMult *= this.m.Bonus;
		}
	});
}
