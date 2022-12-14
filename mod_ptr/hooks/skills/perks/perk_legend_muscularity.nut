::mods_hookExactClass("skills/perks/perk_legend_muscularity", function(o) {
	local onUpdate = o.onUpdate;
	o.onUpdate = function( _properties )
	{
		// Overwrite base function
	}

	o.onAnySkillUsed <- function( _skill, _targetEntity, _properties )
	{
		local item = _skill.getItem();
		if (!_skill.isRanged() || (item != null && item.isItemType(this.Const.Items.ItemType.Weapon) && item.isWeaponType(this.Const.Items.WeaponType.Throwing)))
		{
			local hp = this.getContainer().getActor().getHitpoints();
			local bonus = _skill.b.ActionPointCost <= 4 ? this.Math.min(50, this.Math.floor(hp * 0.075)) : this.Math.min(50, this.Math.floor(hp * 0.15));
			_properties.DamageRegularMin += bonus;
			_properties.DamageRegularMax += bonus;
		}
	}
});
