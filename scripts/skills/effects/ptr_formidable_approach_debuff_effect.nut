this.ptr_formidable_approach_debuff_effect <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		CurrentEnemies = [],
		CurrentMalus = 0,
		MalusFactor = 0.1
	},
	function create()
	{
		this.m.ID = "effects.ptr_formidable_approach_debuff";
		this.m.Name = "Formidable Approach";
		this.m.Description = "This character has entered the zone of control of a formidable opponent. Melee Skill and Melee Defense will be reduced until exiting this zone of control or successfully hitting the opponent.";
		this.m.Icon = "ui/perks/ptr_formidable_approach.png";
		this.m.IconMini = "ptr_formidable_approach_debuff_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = true;
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/melee_skill.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.CurrentMalus + "[/color] Melee Skill"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.CurrentMalus + "[/color] Melee Defense"
			}
		];
	}

	function isHidden()
	{
		return this.m.CurrentMalus == 0;
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local perk = this.getContainer().getSkillByID("perk.ptr_formidable_approach");

		if (perk != null && perk.isEnabled())
		{
			return false;
		}

		return true;
	}

	function getCurrentMalus()
	{
		local currEnemies = [];
		foreach (enemy in this.m.CurrentEnemies)
		{
			if (enemy.isAlive() && !enemy.isDying())
			{
				currEnemies.push(enemy);
			}
		}

		this.m.CurrentEnemies = currEnemies;

		if (this.m.CurrentEnemies.len() == 0)
		{
			return 0;
		}

		if (!this.isEnabled())
		{
			return 0;
		}

		local meleeSkill = 0;
		foreach (enemy in this.m.CurrentEnemies)
		{
			local enemyMeleeSkill = enemy.getCurrentProperties().getMeleeSkill();
			meleeSkill = this.Math.max(meleeSkill, enemyMeleeSkill);
		}

		local malusfactor = this.getContainer().getActor().isArmedWithTwoHandedWeapon() ? this.m.MalusFactor / 2 : this.m.MalusFactor;

		return meleeSkill * malusfactor;
	}

	function updateMalus()
	{
		this.m.CurrentMalus = this.Math.floor(this.getCurrentMalus());
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();
		if (actor.m.IsMoving)
		{
			this.m.CurrentEnemies.clear();

			local adjacentEnemies = actor.getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.Enemy);
			foreach (enemy in adjacentEnemies)
			{
				if (!enemy.hasZoneOfControl())
				{
					continue;
				}

				local enemyPerk = enemy.getSkills().getSkillByID("perk.ptr_formidable_approach");
				if (enemyPerk != null && enemyPerk.isEnabled())
				{
					this.m.CurrentEnemies.push(enemy);
				}
			}
		}

		this.updateMalus();

		_properties.MeleeSkill -= this.m.CurrentMalus;
		_properties.MeleeDefense -= this.m.CurrentMalus;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local idx = this.m.CurrentEnemies.find(_targetEntity);
		if (idx != null)
		{
			this.m.CurrentEnemies.remove(idx);
			this.updateMalus();
		}
	}

	function onCombatStarted()
	{
		this.m.CurrentEnemies.clear();
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.CurrentEnemies.clear();
	}
});
