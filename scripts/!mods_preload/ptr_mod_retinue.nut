local gt = this.getroottable();

gt.Const.PTR.modRetinue <- function()
{
	local retinuesToFixGuaranteedTooltip = [
		"retinue/followers/blacksmith_follower",
		"retinue/followers/cook_follower",
		"retinue/followers/lookout_follower",
		"retinue/followers/minstrel_follower",
		"retinue/followers/negotiator_follower",
		"retinue/followers/paymaster_follower",
		"retinue/followers/quartermaster_follower",
		"retinue/followers/recruiter_follower",
		"retinue/followers/surgeon_follower"
	];

	foreach (retinue in retinuesToFixGuaranteedTooltip)
	{
		::mods_hookNewObject(retinue, function(o) {
			local create = o.create;
			o.create = function()
			{
				create();
				local textArray = split(this.m.Requirements.Text, "Guaranteed");
				if (textArray.len() != 0)
				{
					this.m.Requirements.Text = textArray[0];
				}
			}
		});
	}
}