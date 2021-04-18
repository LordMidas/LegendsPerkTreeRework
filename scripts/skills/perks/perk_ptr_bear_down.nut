this.perk_ptr_bear_down <- this.inherit("scripts/skills/skill", {
	m = {
		BonusPerNegativeStatusEffect = 0.1
	},
	function create()
	{
		this.m.ID = "perk.ptr_bear_down";
		this.m.Name = this.Const.Strings.PerkName.PTRBearDown;
		this.m.Description = this.Const.Strings.PerkDescription.PTRBearDown;
		this.m.Icon = "ui/perks/ptr_bear_down.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !_skill.isAttack())
		{
			return;
		}

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
		
		_properties.DamageTotalMult *= 1.0 + (count * this.m.BonusPerNegativeStatusEffect);
	}
});

