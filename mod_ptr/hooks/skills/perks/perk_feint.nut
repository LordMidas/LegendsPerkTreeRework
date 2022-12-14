::mods_hookExactClass("skills/perks/perk_feint", function(o) {
	o.onAdded <- function()
	{
		if (!this.getContainer().getActor().isPlayerControlled())
		{
			this.removeSelf();
		}
	}
});
