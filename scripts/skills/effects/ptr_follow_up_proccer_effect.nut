this.ptr_follow_up_proccer_effect <- this.inherit("scripts/skills/skill", {
	m = {
		SkillCount = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_follow_up_proccer";
		this.m.Name = "";
		this.m.Description = "";
		this.m.Icon = "ui/perks/ptr_follow_up.png";
		//this.m.IconMini = "perk_01_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsHidden = true;
		this.m.IsRemovedAfterBattle = false;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		return;
		
		if (!_skill.isAttack() || _skill.isRanged())
		{
			return;
		}

		local actor = this.getContainer().getActor();
		if (_targetEntity == null || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}

		if (this.m.SkillCount == this.Const.SkillCounter)
		{
			return;
		}

		this.m.SkillCount = this.Const.SkillCounter;

		local allies = _targetEntity.getActorsWithinDistanceAsArray(2, this.Const.FactionRelation.Enemy)
		foreach (ally in allies)
		{
			if (ally.getID() == actor.getID())
			{
				continue;
			}

			if (!ally.hasZoneOfControl() || !ally.isAlliedWith(actor))
			{
				continue;
			}

			local allySkill = ally.getSkills().getSkillByID("effects.ptr_follow_up");
			if (allySkill != null && allySkill.canFollowUp())
			{
				local allyAttack = ally.getSkills().getAttackOfOpportunity();
				if (allyAttack != null && allyAttack.isUsableOn(_targetEntity.getTile()))
				{
					allySkill.m.Charges++;
				}
			}
		}
	}
});
