this.str_covered_by_ally_effect <- this.inherit("scripts/skills/skill", {
	m = {
		CoverProvider = null,
		IsAlive = true,
		MoveInCoverSkill = null
	},
	function setCoverProvider( _p )
	{
		if (typeof _p == "instance")
		{
			this.m.CoverProvider = _p;
		}
		else
		{
			this.m.CoverProvider = this.WeakTableRef(_p);
		}
	}

	function create()
	{
		this.m.ID = "effects.str_covered_by_ally";
		this.m.Name = "Covered by Ally";
		this.m.Description = "This character has received temporary cover from a shield-wielding ally, gaining protection from attacks of opportunity.";
		this.m.Icon = "ui/perks/str_cover_ally.png";
		# this.m.IconMini = "str_covered_by_ally_effect_mini";
		# this.m.Overlay = "str_covered_by_ally_effect";
		this.m.SoundOnUse = [];
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
	}

	function onUpdate( _properties )
	{
		if (this.m.CoverProvider == null)
		{
			this.removeSelf();
			return;
		}

		local actor = this.getContainer().getActor();
		if (actor.m.IsMoving)
		{
			this.removeSelf();
		}

		if (this.getContainer().getActor().getTile().getDistanceTo(this.m.CoverProvider.getTile()) > 1)
		{
			this.onRemoved();
			this.removeSelf();
		}
	}

	function onAdded()
	{
		local actor = this.getContainer().getActor();
		local skill = this.new("scripts/skills/actives/str_move_under_cover_skill");
		this.m.MoveInCoverSkill = skill;
		this.getContainer().add(skill);

		if (actor.isPlayerControlled())
		{
			return;
		}

		local agent = actor.getAIAgent();

		if (agent.findBehavior(this.Const.AI.Behavior.ID.Disengage) == null)
		{
			agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_disengage"));
			agent.finalizeBehaviors();
		}
	}

	function onTurnEnd()
	{
		this.removeSelf();
		this.onRemoved();
	}

	function onRemoved()
	{
		if (this.m.CoverProvider != null && !this.m.CoverProvider.isNull() && this.m.CoverProvider.isAlive())
		{
			local skill = this.m.CoverProvider.getSkills().getSkillByID("effects.str_covering_ally");

			if (skill != null)
			{
				skill.setAlly(null);
				this.m.CoverProvider.getSkills().remove(skill);
			}
		}

		if (this.m.MoveInCoverSkill != null && !this.m.MoveInCoverSkill.isGarbage())
		{
			this.m.MoveInCoverSkill.removeSelf();
		}
	}

	function onDeath()
	{
		this.onRemoved();
	}

	# function onDamageReceived( _attacker, _damageHitpoints, _damageArmor )
	# {
	# 	if (_damageHitpoints >= this.getContainer().getActor().getHitpoints())
	# 	{
	# 		this.m.IsAlive = false;
	# 		this.onRemoved();
	# 	}
	# }

});
