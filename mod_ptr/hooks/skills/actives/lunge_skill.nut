::mods_hookExactClass("skills/actives/lunge_skill", function(o) {
	o.isDuelistValid <- function()
	{
		return this.b.ActionPointCost <= 4;
	}

	local onAdded = ::mods_getMember(o, "onAdded");
	o.onAdded <- function()
	{
		onAdded();
		if (!this.getContainer().getActor().isPlayerControlled())
		{
			local weapon = this.getContainer().getActor().getMainhandItem();
			if (weapon != null && weapon.isWeaponType(this.Const.Items.WeaponType.BFFencing))
			{
				this.getContainer().add(this.new("scripts/skills/perks/perk_bf_fencer"));
			}
		}
	}
});
