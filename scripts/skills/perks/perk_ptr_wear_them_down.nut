this.perk_ptr_wear_them_down <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_wear_them_down";
		this.m.Name = this.Const.Strings.PerkName.PTRWearThemDown;
		this.m.Description = this.Const.Strings.PerkDescription.PTRWearThemDown;
		this.m.Icon = "ui/perks/ptr_wear_them_down.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onBeingAttacked( _attacker, _skill, _properties )
	{
		if (!_skill.isAttack())
		{
			return;
		}

		local skills = _attacker.getSkills().m.Skills;
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

		_properties.RerollDefenseChance += 20 * count;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_targetEntity.isAlive() || _targetEntity.isDying())
		{
			return;
		}

		_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_worn_down_effect"));
	}
});
