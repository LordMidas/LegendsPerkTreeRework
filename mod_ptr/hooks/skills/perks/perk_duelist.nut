::mods_hookExactClass("skills/perks/perk_duelist", function(o) {
	o.onUpdate = function( _properties )
	{
		// Overwrite vanilla function
	}

	o.onAnySkillUsed <- function( _skill, _targetEntity, _properties )
	{
		if (_skill.isDuelistValid())
		{
			local weapon = this.getContainer().getActor().getMainhandItem();
			if (weapon == null || weapon.isItemType((this.Const.Items.ItemType.OneHanded)))
			{
				_properties.DamageDirectAdd += 0.25;
			}
			else
			{
				_properties.DamageDirectAdd += 0.15;
			}
		}
	}
});
