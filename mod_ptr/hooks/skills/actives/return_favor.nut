::mods_hookExactClass("skills/actives/return_favor", function(o) {
	o.getTooltip = function()
	{
		local tooltip = this.skill.getDefaultUtilityTooltip();
		tooltip.extend([
			{
				id = 7,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Until this character\'s next turn, any attacker within this character\'s attack range who misses a melee attack against this character will have a:"
			},
			{
				id = 7,
				type = "text",
				icon = "ui/icons/special.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] chance to be Stunned"
			},
			{
				id = 7,
				type = "text",
				icon = "ui/icons/ranged_defense.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to be Dazed"
			},
			{
				id = 7,
				type = "text",
				icon = "ui/icons/initiative.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]75%[/color] chance to be Staggered"
			}
		]);

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && !weapon.isItemType(::Const.Items.ItemType.MeleeWeapon))
		{
			tooltip.push({
				id = 7,
				type = "text",
				icon = "ui/icons/warning.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]Requires being unarmed or armed with a melee weapon[/color]"
			});
		}

		return tooltip;
	}

	local isUsable = o.isUsable;
	o.isUsable = function()
	{
		local ret = isUsable();
		if (ret)
		{
			local weapon = this.getContainer().getActor().getMainhandItem();
			if (weapon != null && !weapon.isItemType(::Const.Items.ItemType.MeleeWeapon)) return false;
		}
		return ret;
	}
});
