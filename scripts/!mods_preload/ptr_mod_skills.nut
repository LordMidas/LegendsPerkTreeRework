local gt = this.getroottable();

gt.Const.PTR.hookSkills <- function()
{
	::mods_hookNewObject("skills/actives/aimed_shot", function(o) {
		o.m.FieldsChangedByFlamingArrows <- false;

		local oldOnAfterUpdate = o.onAfterUpdate;
		o.onAfterUpdate = function( _properties )
		{
			oldOnAfterUpdate(_properties);
			if (this.getContainer().hasSkill("perk.ptr_flaming_arrows"))
			{
				_properties.ThreatOnHit += this.Math.min(20, this.Math.max(0, _properties.getRangedSkill() * 0.2));
				if (this.m.FieldsChangedByFlamingArrows == false)
				{
					this.m.Description = "A focused and carefully aimed shot with a good outlook of hitting its intended target even at a distance. Can additionally cause burning injuries and will always trigger a morale check for the enemy upon a successful hit. Can not be used while engaged in melee.";
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

		local oldonTargetHit = o.onTargetHit;
		o.onTargetHit = function( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
		{
			oldonTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor );

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
		this.logInfo("reach advantage hooked");
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
			if (weapon != null && weapon.isItemType(this.Const.Items.ItemType.OneHanded) && weapon.getCategories().find("Spear") != null && actor.getOffhandItem() == null && this.getContainer().hasSkill("perk.ptr_a_better_grip"))
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

			if (weapon != null && weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon) && (weapon.isItemType(this.Const.Items.ItemType.TwoHanded) || (weapon.getCategories().find("Spear") != null && actor.getOffhandItem() == null && this.getContainer().hasSkill("perk.ptr_a_better_grip"))))
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
				if (weapon.isItemType(this.Const.Items.ItemType.OneHanded) && actor.getOffhandItem() == null)
				{
					this.m.ActionPointCost -= 1;
				}
			}

			if (this.getContainer().hasSkill("perk.ptr_a_better_grip"))
			{
				if (weapon.isItemType(this.Const.Items.ItemType.OneHanded) && actor.getOffhandItem() == null)
				{
					this.m.MaxRange += 1;
				}
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

			if(_targetEntity.isAlive() && !_targetEntity.getSkills().hasSkill("effect.ptr_smackdown_debuff"))
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
