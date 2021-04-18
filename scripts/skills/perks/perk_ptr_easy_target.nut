this.perk_ptr_easy_target <- this.inherit("scripts/skills/skill", {
	m = {
		SkillCount = 0
		LastTargetID = 0
	},
	function create()
	{
		this.m.ID = "perk.ptr_easy_target";
		this.m.Name = this.Const.Strings.PerkName.PTREasyTarget;
		this.m.Description = this.Const.Strings.PerkDescription.PTREasyTarget;
		this.m.Icon = "ui/perks/ptr_easy_target.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		local actor = this.getContainer().getActor();
		if (!_skill.isAttack() || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}
		
		if (this.m.SkillCount == this.Const.SkillCounter && this.m.LastTargetID == _targetEntity.getID())
		{
			return;
		}

		this.m.SkillCount = this.Const.SkillCounter;
		this.m.LastTargetID = _targetEntity.getID();
		
		local skills = _targetEntity.getSkills().m.Skills;
		local count = 0;
		
		foreach (skill in skills)
		{
			if (skill.isGarbage())
			{
				continue;
			}
			
			if (skill.getID() == "effects.sleeping" || skill.getID() == "effects.stunned" || skill.getID() == "effects.dazed" || skill.getID() == "effects.legend_dazed" || skill.getID() == "effects.net" || skill.getID() == "effects.legend_grappled" || skill.getID() == "effects.staggered" || skill.getID() == "effects.web" || skill.getID() == "effects.legend_baffled" || skill.getID() == "effects.rooted" || skill.getID() == "effects.distracted" || skill.getID() == "effects.debilitated" || skill.getID() == "effects.insect_swarm")
			{
				count++;
			}
		}
				
		local fatigueCostRefund = this.Math.floor(_skill.getFatigueCost() * (0.1 * count));				
		actor.setFatigue(this.Math.max(0, actor.getFatigue() - fatigueCostRefund));
		
		// if (_targetEntity.getSkills().hasSkill("effects.sleeping"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.stunned"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.dazed"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.legend_dazed"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.net"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.legend_grappled"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.staggered"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.web"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.legend_baffled"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.rooted"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.distracted"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.debilitated"))
		// {
			// count++;
		// }
		// if (_targetEntity.getSkills().hasSkill("effects.insect_swarm"))
		// {
			// count++;
		// }
		
	}
});

