::mods_hookExactClass("skills/effects/disarmed_effect", function(o) {
	o.onUpdate = function( _properties )
	{
		local actor = this.getContainer().getActor();
		local weapon = actor.getMainhandItem();
		if (weapon != null && weapon.getInstanceID() != this.m.WeaponID)
		{
			this.removeSelf();
			return;
		}

		if (!actor.getCurrentProperties().IsImmuneToDisarm)
		{
			if (this.m.TurnsLeft != 0)
			{
				_properties.IsAbleToUseWeaponSkills = false;
				actor.getSprite("arms_icon").Visible = false;

				if (!this.getContainer().hasSkill("effects.stunned") && actor.hasSprite("status_stunned"))
				{
					actor.getSprite("status_stunned").setBrush("bust_disarmed");
					actor.getSprite("status_stunned").Visible = true;
				}

				actor.setDirty(true);
			}
			else
			{
				actor.getSprite("arms_icon").Visible = true;

				if (!this.getContainer().hasSkill("effects.stunned") && actor.hasSprite("status_stunned"))
				{
					actor.getSprite("status_stunned").Visible = false;
				}

				actor.setDirty(true);
			}
		}
		else
		{
			this.removeSelf();
		}
	}
});
