::mods_hookBaseClass("skills/skill", function(o) {
	o = o[o.SuperName];

	o.isDuelistValid <- function()
	{
		return this.isAttack() && !this.isRanged() && this.b.ActionPointCost <= 4 && this.getBaseValue("MaxRange") == 1;
	}
});
