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
		this.m.Order = this.Const.SkillOrder.VeryLast;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAfterUpdate(_properties)
	{
		local weapon = this.getConatiner().getActor().getMainhandItem();
		if (weapon == null && weapon.getCategories().find("Staff") == null)
		{
			return;
		}

		local skills = this.getContainer().getAllSkillsOfType(this.Const.SkillType.Active);
		foreach (s in skills)
		{
			if (s.isAttack() && s.IsWeaponSkill())
			{
				s.m.FatigueCostMult *= 0.85;
			}
		}
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_targetEntity.isAlive() || _targetEntity.isDying())
		{
			return;
		}

		local actor = this.getConatiner().getActor();
		local weapon = actor.getMainhandItem();
		if (weapon == null && weapon.getCategories().find("Staff") == null)
		{
			return;
		}

		local chance = 33;

		if (_skill.getID() == "actives.legend_staff_knock_out")
		{
			chance = 66;
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

		if (count >= 2)
		{
			chance = 100;
		}

		if (this.Math.rand(1, 100) <= chance)
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/staggered_effect"));

			if (!actor.isHiddenToPlayer() && _targetEntity.getTile().IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + " has staggered " + this.Const.UI.getColorizedEntityName(_targetEntity));
			}
		}
	}
});
