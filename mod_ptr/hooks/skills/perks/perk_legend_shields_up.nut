::mods_hookExactClass("skills/perks/perk_legend_shields_up", function(o) {
	o.onCombatStarted = function()
	{
		local allies = this.Tactical.Entities.getInstancesOfFaction(this.getContainer().getActor().getFaction());
		foreach (ally in allies)
		{
			local skill = ally.getSkills().getSkillByID("actives.shieldwall");
			if (skill != null)
			{
				ally.getSkills().add(this.new("scripts/skills/effects/shieldwall_effect"));
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(ally) + " uses Shieldwall due to " + this.Const.UI.getColorizedEntityName(this.getContainer().getActor()) + "\'s Shields Up perk");
			}
		}
	}
});
