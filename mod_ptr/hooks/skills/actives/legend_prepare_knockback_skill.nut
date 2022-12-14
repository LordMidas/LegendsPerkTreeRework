::mods_hookExactClass("skills/actives/legend_prepare_knockback_skill", function(o) {
	o.isUsable = function()
	{
		return this.skill.isUsable() && !this.getContainer().hasSkill("effects.legend_knockback_prepared");
 	}
});
