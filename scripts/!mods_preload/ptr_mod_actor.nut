local gt = this.getroottable();

gt.Const.PTR.hookActor <- function()
{
	::mods_hookBaseClass("entity/tactical/actor", function(o) {
		while (!("BloodSaturation" in o.m))
		{
			o = o[o.SuperName];
		}

		/* o.m.TilesMovedThisTurn <- 0; */

		if ("onDeath" in o)
		{
			local oldOnDeath = o.onDeath;
			o.onDeath = function( _killer, _skill, _tile, _fatalityType )
			{
				oldOnDeath(_killer, _skill, _tile, _fatalityType);
				if (_fatalityType != this.Const.FatalityType.None && _killer.getSkills().hasSkill("perk.ptr_bloodbath") && this.Tactical.TurnSequenceBar.getActiveEntity() != null && this.Tactical.TurnSequenceBar.getActiveEntity().getID() == _killer.getID())
				{
					_killer.setActionPoints(this.Math.min(_killer.getActionPointsMax(), _killer.getActionPoints() + 3));
					_killer.setDirty(true);
					_skill.spawnIcon("ptr_bloodbath", _killer.getTile());
				}
			}
		}

		if ("onInit" in o)
		{
			local oldOnInit = o.onInit;
			o.onInit = function()
			{
				oldOnInit();
				this.getSkills().add(this.new("scripts/skills/effects/ptr_formidable_approach_debuff_effect"));
				this.getSkills().add(this.new("scripts/skills/effects/ptr_follow_up_proccer_effect"));
				this.getSkills().add(this.new("scripts/skills/effects/ptr_bolstered_effect"));
			}
		}

		::mods_override(o, "getSurroundedCount", function()
		{
			local tile = this.getTile();
			local c = 0;

			for( local i = 0; i != 6; i++ )
			{
				if (!tile.hasNextTile(i))
				{
				}
				else
				{
					local next = tile.getNextTile(i);

					if (next.IsOccupiedByActor && this.Math.abs(next.Level - tile.Level) <= 1 && !next.getEntity().isNonCombatant() && !next.getEntity().isAlliedWith(this) && !next.getEntity().getCurrentProperties().IsStunned && !next.getEntity().isArmedWithRangedWeapon())
					{
						c++;
					}
				}
			}

			local enemiesAtTwoTilesDistance = this.getActorsAtDistanceAsArray(2, this.Const.FactionRelation.Enemy);

			foreach (enemy in enemiesAtTwoTilesDistance)
			{
				if (!enemy.hasZoneOfControl())
				{
					continue;
				}

				local enemySkill = enemy.getSkills().getSkillByID("perk.ptr_long_reach");
				if (enemySkill != null && enemySkill.isInEffect())
				{
					c++;
				}
			}

			return this.Math.max(0, c - 1 - this.m.CurrentProperties.StartSurroundCountAt);
		});

		/* local oldonMovementStep = ::mods_getMember(o, "onMovementStep");
		::mods_override(o, "onMovementStep", function( _tile, _levelDifference )
		{
			local result = oldonMovementStep( _tile, _levelDifference );

			if (result == false)
			{
				return false;
			}

			this.m.TilesMovedThisTurn++;

			return true;
		});

		local oldOnTurnStart = ::mods_getMember(o, "onTurnStart");
		::mods_override(o, "onTurnStart", function()
		{
			oldOnTurnStart();
			this.m.TilesMovedThisTurn = 0;
		});

		local oldonBeforeCombatResult = ::mods_getMember(o, "onBeforeCombatResult");
		::mods_override(o, "onBeforeCombatResult", function()
		{
			oldonBeforeCombatResult();
			this.m.TilesMovedThisTurn = 0;
		}); */
	});

	// ::mods_hookExactClass("entity/tactical/actor", function(o) {
		// o.getSurroundedCount = function()
		// {
			// local tile = this.getTile();
			// local c = 0;

			// for( local i = 0; i != 6; i++ )
			// {
				// if (!tile.hasNextTile(i))
				// {
				// }
				// else
				// {
					// local next = tile.getNextTile(i);

					// if (next.IsOccupiedByActor && this.Math.abs(next.Level - tile.Level) <= 1 && !next.getEntity().isNonCombatant() && !next.getEntity().isAlliedWith(this) && !next.getEntity().getCurrentProperties().IsStunned && !next.getEntity().isArmedWithRangedWeapon())
					// {
						// c++;
					// }
				// }
			// }

			// local enemiesAtTwoTilesDistance = this.getActorsAtDistanceAsArray(2, this.Const.FactionRelation.Enemy);

			// foreach (enemy in enemiesAtTwoTilesDistance)
			// {
				// if (!enemy.hasZoneOfControl())
				// {
					// continue;
				// }

				// local enemySkills = enemy.getSkills();
				// if (enemySkills.hasSkill("perk.ptr_long_reach") && enemySkills.getAttackOfOpportunity() != null)
				// {
					// c++;
				// }
			// }

			// return this.Math.max(0, c - 1 - this.m.CurrentProperties.StartSurroundCountAt);
		// }
	// });
}
