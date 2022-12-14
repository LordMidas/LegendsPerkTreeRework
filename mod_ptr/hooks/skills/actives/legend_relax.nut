::mods_hookExactClass("skills/actives/legend_relax", function(o) {
	o.getTooltip = function()
	{
		local tooltip = this.skill.getTooltip();
		tooltip.push(
				{
					id = 7,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Doubles the Fatigue Recovery of the target on their next turn"
				}
		);

		tooltip.push(
				{
					id = 7,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Cannot be used on the same target two turns in a row"
				}
		);

		if (this.getContainer().getActor().isEngagedInMelee())
		{
			tooltip.push(
					{
						id = 7,
						type = "text",
						icon = "ui/icons/warning.png",
						text = "Not usable when engaged in melee"
					}
			);
		}

		return tooltip;
	}

	o.isUsable <- function()
	{
		return this.skill.isUsable() && !this.getContainer().getActor().isEngagedInMelee();
	}

	local onVerifyTarget = o.onVerifyTarget;
	o.onVerifyTarget = function( _originTile, _targetTile )
	{
		local ret = onVerifyTarget( _originTile, _targetTile );

		if (ret)
		{
			local target = _targetTile.getEntity();
			if (target == null || target.isEngagedInMelee() || target.getSkills().hasSkill("effects.ptr_relaxed"))
			{
				return false;
			}
		}

		return ret;
	}

	o.onUse = function( _user, _targetTile )
	{
		local target = _targetTile.getEntity();
		target.getSkills().add(this.new("scripts/skills/effects/ptr_relaxed_effect"));

		if (!target.isHiddenToPlayer())
		{
			target.playSound(this.Const.Sound.ActorEvent.Fatigue, this.Const.Sound.Volume.Actor * target.getSoundVolume(this.Const.Sound.ActorEvent.Fatigue));
		}

		return true;
	}
});
