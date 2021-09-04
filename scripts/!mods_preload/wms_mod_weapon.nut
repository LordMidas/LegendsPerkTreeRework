local gt = this.getroottable();

gt.Const.WMS.modWeapon <- function()
{
	::mods_hookExactClass("items/weapons/weapon", function ( o ) {
		local tooltipFunc = o.getTooltip;
		o.getTooltip = function()
		{
			local tooltip = tooltipFunc();

			if (this.m.WeaponType != this.Const.Items.WeaponType.None)
			{
				local masteriesList = this.getStringOfApplicableMasteries();
				tooltip.push({
					id = 20,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Applicable masteries: " + masteriesList
				});
			}

			return tooltip;
		}

		o.getStringOfApplicableMasteries <- function()
		{
			local masteries = "";

			foreach (k, weaponType in this.Const.Items.WeaponType)
			{
				if (this.isWeaponType(weaponType))
				{
					masteries += k + ", ";
				}
			}

			if (masteries == "")
			{
				masteries = "None"
			}
			else
			{
				masteries = masteries.slice(0, -2);
			}

			return masteries;
		}
	});
};
