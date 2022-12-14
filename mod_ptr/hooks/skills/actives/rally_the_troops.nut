::mods_hookExactClass("skills/actives/rally_the_troops", function(o) {
	o.m.TurnsRemaining <- 0;

	local onAdded = ::mods_getMember(o, "onAdded");
	o.onAdded <- function()
	{
		onAdded();
		local actor = this.getContainer().getActor();
		if (actor.isPlayerControlled())
		{
			return;
		}

		local agent = actor.getAIAgent();

		if (agent.findBehavior(this.Const.AI.Behavior.ID.Rally) == null)
		{
			agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_rally"));
			agent.finalizeBehaviors();
		}
	}

	local onAfterUpdate = ::mods_getMember(o, "onAfterUpdate");
	o.onAfterUpdate <- function( _properties )
	{
		onAfterUpdate(_properties);
		local actor = this.getContainer().getActor();
		if (!actor.isPlayerControlled() && (actor.getType() == this.Const.EntityType.BanditLeader || actor.getType() == this.Const.EntityType.NomadLeader || actor.getType() == this.Const.EntityType.BanditWarlord))
		{
			this.m.ActionPointCost = 3;
		}
	}

	local onUse = o.onUse;
	o.onUse = function( _user, _targetTile )
	{
		local ret = onUse( _user, _targetTile );

		if (ret && !_user.isPlayerControlled() && (_user.getType() == this.Const.EntityType.BanditLeader || _user.getType() == this.Const.EntityType.NomadLeader || _user.getType() == this.Const.EntityType.BanditWarlord))
		{
			this.m.TurnsRemaining = 3;
		}

		return ret;
	}

	local isUsable = o.isUsable;
	o.isUsable = function()
	{
		local ret = isUsable();

		if (ret && this.m.TurnsRemaining > 0)
		{
				return false;
		}

		return ret;
	}

	o.onTurnEnd <- function()
	{
		this.m.TurnsRemaining = this.Math.max(0, this.m.TurnsRemaining - 1);
	}
});
