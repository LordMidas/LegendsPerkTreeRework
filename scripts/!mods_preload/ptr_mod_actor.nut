local gt = this.getroottable();

gt.Const.PTR.modActor <- function()
{
	::mods_hookExactClass("entity/tactical/actor", function(o)
	{
		local oldOnDeath = o.onDeath;
		o.onDeath = function( _killer, _skill, _tile, _fatalityType )
		{
			oldOnDeath(_killer, _skill, _tile, _fatalityType);
			if (_fatalityType != this.Const.FatalityType.None && this.Tactical.TurnSequenceBar.getActiveEntity() != null && _killer != null && this.Tactical.TurnSequenceBar.getActiveEntity().getID() == _killer.getID())
			{
				if (_killer.getSkills().hasSkill("perk.ptr_bloodbath"))
				{
					_killer.setActionPoints(this.Math.min(_killer.getActionPointsMax(), _killer.getActionPoints() + 3));
					_killer.setDirty(true);
					_skill.spawnIcon("ptr_bloodbath", _killer.getTile());
				}

				local sanguinaryPerk = _killer.getSkills().getSkillByID("perk.ptr_sanguinary");
				if (sanguinaryPerk != null)
				{
					local fatigueCostRefund = this.Math.floor(_skill.getFatigueCost() * sanguinaryPerk.m.FatigueCostRefundPercentage * 0.01);
					_killer.setFatigue(this.Math.max(0, actor.getFatigue() - fatigueCostRefund));
				}
			}
		}

		local oldOnInit = o.onInit;
		o.onInit = function()
		{
			oldOnInit();
			this.getSkills().add(this.new("scripts/skills/effects/ptr_formidable_approach_debuff_effect"));
			this.getSkills().add(this.new("scripts/skills/effects/ptr_follow_up_proccer_effect"));
			this.getSkills().add(this.new("scripts/skills/effects/ptr_bolstered_effect"));
			this.getSkills().add(this.new("scripts/skills/effects/ptr_undead_injury_receiver_effect"));
		}

		o.getSurroundedCount = function()
		{
			local tile = this.getTile();
			local c = 0;

			for( local i = 0; i < 6; i++ )
			{
				if (tile.hasNextTile(i))
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
		}

		local checkMorale = o.checkMorale;
		o.checkMorale = function( _change, _difficulty, _type = this.Const.MoraleCheckType.Default, _showIconBeforeMoraleIcon = "", _noNewLine = false )
		{
			if (this.isAlive() && !this.isDying() && _change > 0)
			{
				local skill = this.m.Skills.getSkillByID("perk.perk_legend_assured_conquest");
				if (skill != null)
				{
					_difficulty += skill.getBonusResAtPositiveMoraleCheck();
				}
			}

			return checkMorale( _change, _difficulty, _type, _showIconBeforeMoraleIcon, _noNewLine );
		}
	});
}
