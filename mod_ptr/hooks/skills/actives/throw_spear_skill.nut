::mods_hookExactClass("skills/actives/throw_spear_skill", function(o) {
	o.m.ShieldDamage <- 0;
	o.onAdded <- function()
	{
		this.m.ShieldDamage = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand).getShieldDamage();
	}

	local onAnySkillUsed = o.onAnySkillUsed;
	o.onAnySkillUsed = function( _skill, _targetEntity, _properties )
	{
		onAnySkillUsed( _skill, _targetEntity, _properties );
		if (_skill == this && _properties.IsSpecializedInThrowing)
		{
			local weapon = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand);
			weapon.m.ShieldDamage = this.m.ShieldDamage;
			if (_targetEntity != null && _targetEntity.getCurrentProperties().IsSpecializedInShields)
			{
				weapon.m.ShieldDamage *= 2;
			}
		}
	}
});
