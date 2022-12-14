::mods_hookExactClass("skills/effects/stunned_effect", function(o) {
	local setTurns = o.setTurns;
	o.setTurns = function( _t )
	{
		if (!this.isGarbage())
		{
			setTurns(_t);
		}
	}

	local onAdded = o.onAdded;
	o.onAdded = function()
	{
		local skill = this.getContainer().getSkillByID("effects.shieldwall");

		if (skill == null)
		{
			skill = this.getContainer().getSkillByID("effects.legend_fortify");
		}

		if (skill != null)
		{
			if (this.getContainer().getActor().getTile().IsVisibleForPlayer)
			{
				this.Tactical.EventLog.logEx(this.Const.UI.getColorizedEntityName(this.getContainer().getActor()) + " shakes off the stun but loses " + skill.getName());
			}
			skill.removeSelf();
			this.removeSelf();
			return;
		}		

		onAdded();
	}
});
