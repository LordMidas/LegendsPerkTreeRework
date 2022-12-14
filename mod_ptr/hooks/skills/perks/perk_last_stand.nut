::mods_hookExactClass("skills/perks/perk_last_stand", function(o) {
	o.m.IsSpent <- false;

	o.onUpdate = function(_properties)
	{
		local currentPercent = this.getContainer().getActor().getHitpointsPct();
		local bonus = 0;

		if (currentPercent < 0.66)
		{
			bonus = this.Math.floor(100 * (0.66 - currentPercent) / 2.0);
		}

		if (currentPercent < 0.4)
		{
			if (!this.m.IsSpent)
			{
				this.m.IsSpent = true;
				local injuries = this.getContainer().getAllSkillsOfType(this.Const.SkillType.TemporaryInjury);
				foreach (injury in injuries)
				{
					injury.m.IsFresh = false;
				}
			}
			_properties.IsAffectedByFreshInjuries = false;
			_properties.IsAffectedByLosingHitpoints = false;
		}

		_properties.MeleeDefense += bonus;
		_properties.RangedDefense += bonus;
	}

	o.onCombatFinished <- function()
	{
		this.skill.onCombatFinished();
		this.m.IsSpent = false;
	}
});
