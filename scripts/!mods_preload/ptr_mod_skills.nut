local gt = this.getroottable();

gt.Const.PTR.modSkills <- function()
{
	::mods_hookNewObject("skills/actives/perk_legend_onslaught", function(o) {
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
					this.m.InjuriesOnBody = this.Const.Injury.BurningAndPiercingBody;
					this.m.InjuriesOnHead = this.Const.Injury.BurningAndPiercingHead;
					this.m.FieldsChangedByFlamingArrows = true;
				}
			}
			else if (this.m.FieldsChangedByFlamingArrows)
			{
				this.m.resetField("Description");
				this.m.resetField("InjuriesOnBody");
				this.m.resetField("InjuriesOnHead");
				this.m.FieldsChangedByFlamingArrows = false;
			}
		}

		local oldonUse = o.onUse;
		o.onUse = function( _user, _targetTile )
		{
			local ret = oldOnUse(_user, _targetTile);

			if (ret)
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
						tile.Properties.Effect.Timeout = this.Time.getRound() + 2;
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

	::mods_hookNewObject("skills/actives/reload_bolt", function(o) {
		local oldOnAfterUpdate = o.onAfterUpdate;
		o.onAfterUpdate = function( _properties )
		{
			oldOnAfterUpdate(_properties);
			if (this.getContainer().hasSkill("perk.ptr_windlass_training"))
			{
				this.m.ActionPointCost -= 1;
			}
		}
	});

	::mods_hookNewObject("skills/actives/thrust", function(o) {
		o.m.ThrustCount <- 0;

		local oldOnAfterUpdate = o.onAfterUpdate;
		o.onAfterUpdate = function( _properties )
		{
			oldOnAfterUpdate(_properties);

			local actor = this.getContainer().getActor();
			local weapon = actor.getMainhandItem();
			if (weapon == null && weapon.getCategories().find("Spear") == null)
			{
				return;
			}

			if (this.getContainer().hasSkill("perk.ptr_two_for_one"))
			{
				if (actor.isDoubleGrippingWeapon())
				{
					this.m.ActionPointCost -= 1;
				}
			}

			if (this.getContainer().hasSkill("perk.ptr_a_better_grip"))
			{
				if (actor.isDoubleGrippingWeapon())
				{
					this.m.MaxRange += 1;
				}
			}

			if (this.getContainer().hasSkill("perk.ptr_king_of_all_weapons"))
			{
				if (this.m.ThrustCount > 0 || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
				{
					return;
				}

				this.m.FatigueCostMult = 0;
				this.m.ActionPointCost = 0;
				_properties.MeleeDamageMult *= 0.5;
			}
		}

		local onUse = o.onUse;
		o.onUse = function ( _user, _targetTile )
		{
			local ret = onUse(_user, _targetTile);
			this.m.ThrustCount++;
			return ret;
		}

		o.onTurnStart()
		{
			this.m.ThrustCount = 0;
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
				this.m.ActionPointCost = this.Math.max(2, this.m.ActionPointCost - this.m.UsedCount);
			}
			return result;
		}

		local oldonAfterUpdate = o.onAfterUpdate;
		o.onAfterUpdate = function( _properties )
		{
			oldonAfterUpdate(_properties);
			if (this.getContainer().hasSkill("effects.ptr_hip_shooter"))
			{
				this.m.ActionPointCost = this.Math.max(2, this.m.ActionPointCost - this.m.UsedCount);
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

	::mods_hookNewObject("skills/actives/puncture", function(o) {
		local oldOnUse = o.onUse;
		o.onUse = function( _user, _targetTile )
		{
			local success = oldOnUse( _user, _targetTile );
			if (success && !this.getContainer().hasSkill("effects.ptr_swift_stabs"))
			{
				this.getContainer().add(this.new("scripts/skills/effects/ptr_swift_stabs_effect"));
			}
			return success;
		}

		local oldonAfterUpdate = o.onAfterUpdate;
		o.onAfterUpdate = function( _properties )
		{
			oldonAfterUpdate(_properties);
			if (this.getContainer().hasSkill("effect.ptr_swift_stabs"))
			{
				this.m.ActionPointCost -= 1;
			}
		}
	});

	::mods_hookNewObject("skills/actives/deathblow_skill", function(o) {
		local oldOnUse = o.onUse;
		o.onUse = function( _user, _targetTile )
		{
			local success = oldOnUse( _user, _targetTile );
			if (success && !this.getContainer().hasSkill("effects.ptr_swift_stabs"))
			{
				this.getContainer().add(this.new("scripts/skills/effects/ptr_swift_stabs_effect"));
			}
			return success;
		}

		local oldonAfterUpdate = o.onAfterUpdate;
		o.onAfterUpdate = function( _properties )
		{
			oldonAfterUpdate(_properties);
			if (this.getContainer().hasSkill("effect.ptr_swift_stabs"))
			{
				this.m.ActionPointCost -= 1;
			}
		}
	});

	::mods_hookNewObject("skills/actives/legend_cheer_on_skill", function(o) {
		local oldisUsable = o.isUsable;
		o.isUsable = function( )
		{
			return this.skill.isUsable();
		}
	});

	::mods_hookNewObject("skills/actives/legend_prepare_knockback_skill", function(o) {
		o.isUsable = function()
		{
			return this.skill.isUsable();
		}
	});

	::mods_hookNewObject("skills/effects/dodge_effect", function(o) {
		o.m.Bonus <- 0;

		o.getTooltip = function ()
		{
			local tooltip = this.skill.getTooltip();
			tooltip.extend(
				[
					{
						id = 10,
						type = "text",
						icon = "ui/icons/melee_defense.png",
						text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "[/color] Melee Defense"
					},
					{
						id = 11,
						type = "text",
						icon = "ui/icons/ranged_defense.png",
						text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "[/color] Ranged Defense"
					}
				]);

			return tooltip;
		}

		o.onUpdate = function(_properties)
		{
		}

		o.onAfterUpdate <- function (_properties)
		{
			this.m.Bonus = this.Math.floor(this.getContainer().getActor().getInitiative() * 0.15);
			_properties.MeleeDefense += this.Math.max(0, this.m.Bonus);
			_properties.RangedDefense += this.Math.max(0, this.m.Bonus);
		}
	});

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
				_properties.BraveryMult *= 1.25;
			}
		}
	});
}
