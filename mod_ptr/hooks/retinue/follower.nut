::mods_hookBaseClass("retinue/follower", function(o) {
	o = o[o.SuperName];

	// Remove "Guaranteed on XYZ background" tooltip from the follower's requirements tooltip
	local getRequirements = o.getRequirements;
	o.getRequirements = function()
	{
		local ret = getRequirements();
		if (ret.len() != 0 && ("Text" in ret[0]))
		{
			local idx = ret[0].Text.find("Guaranteed");
			if (idx != null)
			{
				ret[0].Text = ret[0].Text.slice(0, idx);
			}
		}

		return ret;
	}		
});
