local gt = this.getroottable();

gt.ModBetterFencing.modSkills <- function()
{
	::mods_hookNewObject("skills/actives/lunge_skill", function ( o ) {
		o.m.HitChanceBonus = -15;

		o.getTooltip = function()
		{
			local ret = this.getDefaultTooltip();
			ret.extend([
				{
					id = 6,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Moves the user next to the target, ignoring Zone of Control"
				},
				{
					id = 6,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Inflicts additional damage, the higher the user\'s current Initiative"
				}
			]);

			ret.push(
				{
					id = 6,
					type = "text",
					icon = "ui/icons/hitchance.png",
					text = "Has [color=" + this.Const.UI.Color.NegativeValue + "]-15%[/color] chance to hit and an additional [color=" + this.Const.UI.Color.NegativeValue + "]-1%[/color] for every 10 points of Body Armor durability the target has above 125, up to a maximum of [color=" + this.Const.UI.Color.NegativeValue + "]-35%[/color]"
				}
			);

			if (this.getContainer().hasSkill("perk.bf_fencer"))
			{
				ret.push(
					{
						id = 6,
						type = "text",
						icon = "ui/icons/hitchance.png",
						text = "Has [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit as this character is a Fencer"
					}
				);
			}

			if (this.getContainer().getActor().getCurrentProperties().IsRooted)
			{
				ret.push({
					id = 9,
					type = "text",
					icon = "ui/tooltips/warning.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]Can not be used while rooted[/color]"
				});
			}

			return ret;
		}

		o.onAdded <- function()
		{
			local actor = this.getContainer().getActor();
			if (actor.isPlayerControlled())
			{
				return;
			}

			this.getContainer().add(this.new("scripts/skills/actives/bf_lunge_charge_dummy_skill"));

			local agent = actor.getAIAgent();

			if (agent.findBehavior(this.Const.AI.Behavior.ID.BFAttackLunge) == null)
			{
				agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_bf_attack_lunge"));
				agent.finalizeBehaviors();
			}
		}

		o.onAnySkillUsed = function( _skill, _targetEntity, _properties )
		{
			if (!this.getContainer().getActor().isPlayerControlled())
			{
				return;
			}

			this.m.HitChanceBonus = -15;

			if (_skill == this)
			{
				local a = this.getContainer().getActor();
				local s = this.Math.minf(2.0, 2.0 * (this.Math.max(0, a.getInitiative() + (_targetEntity != null ? this.getFatigueCost() * a.getCurrentProperties().FatigueToInitiativeRate : 0)) / 175.0));
				_properties.DamageTotalMult *= s;
			}
			else
			{
				return;
			}

			if (_targetEntity == null)
			{
				return;
			}

			local hitChanceBonus = this.m.HitChanceBonus;
			local targetArmor = _targetEntity.getArmor(this.Const.BodyPart.Body);
			hitChanceBonus = this.Math.max(-35, hitChanceBonus - (targetArmor - 125) / 10);

			hitChanceBonus = this.Math.min(-5, hitChanceBonus);
			this.m.HitChanceBonus = hitChanceBonus;

			_properties.MeleeSkill += hitChanceBonus;
		}		

		::mods_override(o, "onVerifyTarget" function( _originTile, _targetTile )
		{
			if (!this.skill.onVerifyTarget(_originTile, _targetTile))
			{
				return false;
			}

			return this.getDestinationTile(_targetTile) != null ? true : false;
		});

		o.getDestinationTile <- function(_targetTile)
		{
			local myTile = this.getContainer().getActor().getTile();

			local destinationTile = null;
			local hasTile = false;
			local targetDistance = _targetTile.getDistanceTo(myTile);

			for (local i = 0; i< 6; i++)
			{
				if (_targetTile.hasNextTile(i))
				{
					local tile = _targetTile.getNextTile(i);
					if (!tile.IsEmpty)
					{
						continue;
					}

					local distance = tile.getDistanceTo(myTile);
					if (distance == targetDistance - 1 && this.Math.abs(myTile.Level - tile.Level) <= 1 && this.Math.abs(_targetTile.Level - tile.Level) <= 1)
					{
						destinationTile = tile;
						break;
					}
				}
			}

			if (targetDistance == 3 || (destinationTile == null && targetDistance == 2 && this.m.MaxRange == 3))
			{
				destinationTile = null;
				for (local i = 0; i< 6; i++)
				{
					if (_targetTile.hasNextTile(i))
					{
						local tile = _targetTile.getNextTile(i);
						if (!tile.IsEmpty)
						{
							continue;
						}

						local distance = tile.getDistanceTo(myTile);
						if (distance == 2 && this.Math.abs(myTile.Level - tile.Level) <= 1 && this.Math.abs(_targetTile.Level - tile.Level) <= 1)
						{
							for( local i = 0; i < 6; i++ )
							{
								if (tile.hasNextTile(i))
								{
									local nextTile = tile.getNextTile(i);

									if (nextTile.IsEmpty && nextTile.getDistanceTo(myTile) == 1)
									{
										destinationTile = tile;
										break;
									}
								}
							}
						}
					}

					if (destinationTile != null)
					{
						break;
					}
				}
			}

			return destinationTile;
		}

		::mods_override(o, "onUse", function( _user, _targetTile )
		{
			local actor = this.getContainer().getActor();
			local myTile = actor.getTile();
			local destTile = this.getDestinationTile(_targetTile);

			if (destTile == null)
			{
				return false;
			}

			this.getContainer().setBusy(true);
			local tag = {
				Skill = this,
				User = _user,
				OldTile = _user.getTile(),
				TargetTile = _targetTile,
				OnRepelled = this.onRepelled
			};
			_user.spawnTerrainDropdownEffect(myTile);
			this.Tactical.getNavigator().teleport(_user, destTile, this.onTeleportDone.bindenv(this), tag, false, 3.0);
			return true;
		});
	});
}
