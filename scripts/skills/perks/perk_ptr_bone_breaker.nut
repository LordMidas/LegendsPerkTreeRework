this.perk_ptr_bone_breaker <- this.inherit("scripts/skills/skill", {
	m = {
		BonusVsUndead = 1.15
	},
	function create()
	{
		this.m.ID = "perk.ptr_bone_breaker";
		this.m.Name = this.Const.Strings.PerkName.PTRBoneBreaker;
		this.m.Description = this.Const.Strings.PerkDescription.PTRBoneBreaker;
		this.m.Icon = "ui/perks/ptr_bone_breaker.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !_skill.isAttack() || _skill.m.InjuriesOnBody != this.Const.Injury.BluntBody)
		{
			return;
		}

		local actor = this.getContainer().getActor();
		local weapon = actor.getMainhandItem();

		if (weapon == null || weapon.getCategories().find("Mace") == null)
		{
			return;
		}

		if (_targetEntity.getFlags().has("undead"))
		{
			_properties.DamageTotalMult *= this.m.BonusVsUndead;
		}
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local actor = this.getContainer().getActor();
		if (!_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}

		if (!_skill.isAttack() || !_skill.hasBluntDamage())
		{
			return;
		}

		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isItemType(this.Const.Items.ItemType.TwoHanded) || weapon.getCategories().find("Mace") == null)
		{
			return;
		}

		if (_targetEntity.getSkills().hasSkill("effects.sleeping") || _targetEntity.getSkills().hasSkill("effects.stunned") || _targetEntity.getSkills().hasSkill("effects.net") || _targetEntity.getSkills().hasSkill("effects.legend_grappled") || _targetEntity.getSkills().hasSkill("effects.web") || _targetEntity.getSkills().hasSkill("effects.rooted"))
		{
			if (_targetEntity.m.CurrentProperties.IsAffectedByInjuries && _targetEntity.m.IsAbleToDie && _targetEntity.m.CurrentProperties.ThresholdToReceiveInjuryMult != 0)
			{
				local injuries = _bodyPart == this.Const.BodyPart.Head ? this.Const.Injury.BluntHead : this.Const.Injury.BluntBody;
				local potentialInjuries = [];

				foreach( inj in injuries )
				{
					if (!_targetEntity.m.Skills.hasSkill(inj.ID) && _targetEntity.m.ExcludedInjuries.find(inj.ID) == null)
					{
						potentialInjuries.push(inj.Script);
					}
				}

				local appliedInjury = false;

				while (potentialInjuries.len() != 0)
				{
					local r = this.Math.rand(0, potentialInjuries.len() - 1);
					local injury = this.new("scripts/skills/" + potentialInjuries[r]);

					if (injury.isValid(_targetEntity))
					{
						_targetEntity.m.Skills.add(injury);

						if (_targetEntity.isPlayerControlled() && _targetEntity.isKindOf(_targetEntity, "player"))
						{
							_targetEntity.worsenMood(this.Const.MoodChange.Injury, "Suffered an injury");
						}

						if (_targetEntity.isPlayerControlled() || !_targetEntity.isHiddenToPlayer())
						{
							this.Tactical.EventLog.logEx(this.Const.UI.getColorizedEntityName(_targetEntity) + " suffers " + injury.getNameOnly() + " due to " + this.Const.UI.getColorizedEntityName(actor) + "\'s Break Bones perk!");
						}

						appliedInjury = true;
						break;
					}
					else
					{
						potentialInjuries.remove(r);
					}
				}

				if (appliedInjury)
				{
					_targetEntity.onUpdateInjuryLayer();
				}
			}
		}
	}
});
