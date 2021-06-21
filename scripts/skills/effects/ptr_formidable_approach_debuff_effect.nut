this.ptr_formidable_approach_debuff_effect <- this.inherit("scripts/skills/skill", {
	m = {
		CurrentEnemies = [],
		CurrentMalus = 0,
		MalusFactor = 0.1
	},
	function create()
	{
		this.m.ID = "effects.ptr_formidable_approach_debuff";
		this.m.Name = "Formidable Approach";
		this.m.Description = "This character is wielding a one-handed weapon, and has entered the zone of control of a large weapon wielder. Melee Skill and Melee Defense will be reduced until exiting this zone of control or successfully hitting the two-handed weapon wielder.";
		this.m.Icon = "ui/perks/ptr_formidable_approach.png";
		//this.m.IconMini = "ptr_formidable_approach_debuff_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
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
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.CurrentMalus + "%[/color] Melee Skill"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.CurrentMalus + "%[/color] Melee Defense"
			}
		];
	}

	function isHidden()
	{
		return this.m.CurrentMalus == 0;
	}

	function getCurrentMalus()
	{
		foreach (i, enemy in this.m.CurrentEnemies)
		{
			if (!enemy.isAlive())
			{
				this.m.CurrentEnemies.remove(i);
			}
		}

		if (this.m.CurrentEnemies.len() == 0)
		{
			return 0;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon) && weapon.isItemType(this.Const.Items.ItemType.TwoHanded))
		{
			return 0;
		}

		local meleeSkill = 0;
		foreach (enemy in this.m.CurrentEnemies)
		{
			local enemyMeleeSkill = enemy.getCurrentProperties().getMeleeSkill();
			if (enemyMeleeSkill > meleeSkill)
			{
				meleeSkill = enemyMeleeSkill;
			}
		}

		return meleeSkill * this.m.MalusFactor;
	}

	function updateMalus()
	{
		this.m.CurrentMalus = this.getCurrentMalus();
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();
		if (actor.m.IsMoving)
		{
			this.m.CurrentEnemies.clear();

			if (!actor.isArmedWithOneHandedWeapon())
			{
				return;
			}

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
