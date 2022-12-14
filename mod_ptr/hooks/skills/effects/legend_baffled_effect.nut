::mods_hookExactClass("skills/effects/legend_baffled_effect", function(o) {
	o.onAdded = function()
	{
		this.m.TurnsLeft = this.Math.max(1, 1 + this.getContainer().getActor().getCurrentProperties().NegativeStatusEffectDuration);
	}

	o.onRefresh = function()
	{
		this.m.TurnsLeft = this.Math.max(1, 1 + this.getContainer().getActor().getCurrentProperties().NegativeStatusEffectDuration);
		this.spawnIcon("status_effect_87", this.getContainer().getActor().getTile());
	}
});
