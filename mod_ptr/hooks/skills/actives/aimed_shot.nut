::mods_hookExactClass("skills/actives/aimed_shot", function(o) {
	o.m.FieldsChangedByFlamingArrows <- false;
	o.m.TargetTile <- null;

	local onAfterUpdate = o.onAfterUpdate;
	o.onAfterUpdate = function( _properties )
	{
		onAfterUpdate(_properties);

		if (this.getContainer().hasSkill("perk.ptr_flaming_arrows"))
		{
			if (this.m.FieldsChangedByFlamingArrows == false)
			{
				this.m.Description = "A focused and carefully aimed shot with a good outlook of hitting its intended target even at a distance. On a successful hit, will light the target tile on fire and trigger a morale check for the target. Can not be used while engaged in melee.";
				this.m.ProjectileType = this.Const.ProjectileType.FlamingArrow;
				this.m.FieldsChangedByFlamingArrows = true;
			}
		}
		else if (this.m.FieldsChangedByFlamingArrows)
		{
			this.resetField("Description");
			this.m.FieldsChangedByFlamingArrows = false;
		}
	}
});
