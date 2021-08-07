this.perk_ptr_pattern_recognition <- this.inherit("scripts/skills/skill", {
	m = {
		MeleeSkillBonus = 3,
		MeleeDefenseBonus = 3,
		Opponents = []
	},
	function create()
	{
		this.m.ID = "perk.ptr_pattern_recognition";
		this.m.Name = this.Const.Strings.PerkName.PTRPatternRecognition;
		this.m.Description = this.Const.Strings.PerkDescription.PTRPatternRecognition;
		this.m.Icon = "ui/perks/ptr_pattern_recognition.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getDescription()
	{
		return "This character is quick to understand the fighting style of their opponents, getting better at fighting them as the combat draws on.";
	}

	function isHidden()
	{
		return this.m.Opponents.len() == 0;
	}

	function getOpponentEntry(_entity)
	{
		foreach (opponentEntry in this.m.Opponents)
		{
			if (opponentEntry.Entity == _entity)
			{
				return opponentEntry;
			}
		}

		return null;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		foreach (opponentEntry in this.m.Opponents)
		{
			local opponent = opponentEntry.Entity;
			if (opponent == null || !opponent.isPlacedOnMap() || !opponent.isAlive() || opponent.isDying())
			{
				continue;
			}

			tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + (this.m.MeleeSkillBonus * opponentEntry.Stacks) + "[/color] Melee Skill and Melee Defense against " + opponent.getName()
				}
			);
		}

		return tooltip;
	}

	function procIfApplicable(_entity, _skill)
	{
		local actor = this.getContainer().getActor();

		if (!actor.isPlacedOnMap() || actor.getMoraleState() == this.Const.MoraleState.Fleeing)
		{
			return;
		}

		if (_skill == null || !_skill.isAttack() || _skill.isRanged() || _entity == null || _entity.isAlliedWith(actor))
		{
			return;
		}

		foreach (opponentEntry in this.m.Opponents)
		{
			if (opponentEntry.Entity == _entity)
			{
				opponentEntry.Stacks += 1;
				return;
			}
		}

		this.m.Opponents.push({Entity = _entity, Stacks = 1});
	}

	function onMissed( _attacker, _skill )
	{
		this.procIfApplicable(_attacker, _skill);
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		this.procIfApplicable(_attacker, _skill);
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (_targetEntity.isAlive() || _targetEntity.isDying())
		{
			return;
		}

		this.procIfApplicable(_targetEntity, _skill);
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		this.procIfApplicable(_targetEntity, _skill);
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity != null && _skill != null && !_skill.isRanged() && _skill.isAttack())
		{
			local opponentEntry = this.getOpponentEntry(_targetEntity);
			if (opponentEntry != null)
			{
				_properties.MeleeSkill += this.m.MeleeSkillBonus * opponentEntry.Stacks;
			}
		}
	}

	function onBeingAttacked( _attacker, _skill, _properties )
	{
		if (_attacker != null && _skill != null && !_skill.isRanged() && _skill.isAttack())
		{
			local opponentEntry = this.getOpponentEntry(_attacker);
			if (opponentEntry != null)
			{
				_properties.MeleeDefense += this.m.MeleeDefenseBonus * opponentEntry.Stacks;
			}
		}
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.Opponents.clear();
	}
});
