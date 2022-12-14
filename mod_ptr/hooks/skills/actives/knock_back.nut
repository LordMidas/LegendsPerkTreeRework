::mods_hookExactClass("skills/actives/knock_back", function(o) {
	local getTooltip = o.getTooltip;
	o.getTooltip = function()
	{
		local ret = getTooltip();
		if (this.getContainer().hasSkill("perk.shield_expert"))
		{
			ret.push({
				id = 7,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Will stagger the target if successfully knocked back"
			});
		}

		return ret;
	}

	local onUse = o.onUse;
	o.onUse = function( _user, _targetTile )
	{
		local targetEntity = _targetTile.getEntity();
		local ret = onUse( _user, _targetTile );

		if (ret && targetEntity != null && targetEntity.isAlive() && !targetEntity.isDying() && this.getContainer().hasSkill("perk.shield_expert"))
		{
			local effect = this.new("scripts/skills/effects/staggered_effect");
			targetEntity.getSkills().add(effect);
			if (!_user.isHiddenToPlayer() && _targetTile.IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(_user) + " has staggered " + this.Const.UI.getColorizedEntityName(targetEntity) + " for " + effect.m.TurnsLeft + " turns");
			}
		}
	}
});
