this.ptr_swordmaster_push_through_skill <- this.inherit("scripts/skills/actives/line_breaker", {
	m = {},
	function create()
	{
		this.line_breaker.create();
		this.m.ID = "actives.ptr_swordmaster_push_through";
		this.m.Name = "Push Through";
		this.m.Description = "Use your muscle and grappling skills to knock back a target and take their place, all in one action."
		this.m.Icon = "skills/ptr_swordmaster_push_through_skill.png";
		this.m.IconDisabled = "skills/ptr_swordmaster_push_through_skill_bw.png";
		this.m.Overlay = "ptr_swordmaster_push_through_skill";
		this.m.SoundOnUse = [
			"sounds/combat/indomitable_01.wav",
			"sounds/combat/indomitable_02.wav"
		];
		this.m.SoundOnHit = [
			"sounds/combat/knockback_hit_01.wav",
			"sounds/combat/knockback_hit_02.wav",
			"sounds/combat/knockback_hit_03.wav"
		];
		this.m.Order = this.Const.SkillOrder.Any;
		this.m.FatigueCost = 25;
	}

	function onAdded()
	{
		local actor = this.getContainer().getActor();
		if (actor.isPlayerControlled())	return;

		local agent = actor.getAIAgent();

		if (agent.findBehavior(this.Const.AI.Behavior.ID.LineBreaker) == null)
		{
			agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_line_breaker"));
			agent.finalizeBehaviors();
		}
	}

	function getTooltip()
	{
		local tooltip = this.skill.getDefaultUtilityTooltip();
		local actor = this.getContainer().getActor();

		tooltip.push({
			id = 7,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Has a [color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] chance to stagger the target"
		});

		if (actor.getCurrentProperties().IsRooted || actor.getCurrentProperties().IsStunned)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/warning.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]Cannot be used while Rooted or Stunned[/color]"
			});
		}

		local perk = this.getContainer().getSkillByID("perk.ptr_swordmaster_grappler");
		if (perk != null) perk.addEnabledTooltip(tooltip);

		return tooltip;
	}

	function isUsable()
	{
		local perk = this.getContainer().getSkillByID("perk.ptr_swordmaster_grappler");
		if (perk == null || !perk.isEnabled()) return false;

		local actor = this.getContainer().getActor();
		return this.skill.isUsable() && !actor.getCurrentProperties().IsRooted && !actor.getCurrentProperties().IsStunned;
	}

	function onUse( _user, _targetTile )
	{
		local target = _targetTile.getEntity();

		local ret = this.line_breaker.onUse(_user, _targetTile);
		if (ret && target.isAlive())
		{
			target.getSkills().add(this.new("scripts/skills/effects/staggered_effect"));
			if (_targetTile.IsVisibleForPlayer)
			{
				this.Tactical.EventLog.logEx(this.Const.UI.getColorizedEntityName(_user) + " has staggered " + this.Const.UI.getColorizedEntityName(target));
			}
		}

		return ret;
	}

});

