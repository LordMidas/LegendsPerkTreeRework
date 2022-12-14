::mods_hookNewObject("skills/effects/duelist_defense_effect", function(o) {
	local isEnabled = o.isEnabled;
	o.isEnabled = function()
	{
		local ret = isEnabled();
		if (!ret)
		{
			local attack = this.getContainer().getAttackOfOpportunity();
			if (attack != null && attack.isDuelistValid())
			{
				return true;
			}
		}

		return ret;
	}
});
