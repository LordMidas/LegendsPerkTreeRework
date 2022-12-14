::mods_hookExactClass("skills/traits/huge_trait", function(o) {
	o.m.Skills <- [];

	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SkillOrder <- ::Const.SkillOrder.Last;

		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.LargeTree],
			[4, ::Const.Perks.HeavyArmorTree]
		];
	}

	local getTooltip = o.getTooltip;
	o.getTooltip = function()
	{
		local tooltip = getTooltip();
		tooltip.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Weapons with extra Fatigue build-up on skills have this penalty reduced by [color=" + ::Const.UI.Color.PositiveValue + "]-2[/color]"
		});

		return tooltip;
	}

	o.onAfterUpdate <- function( _properties )
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null)
		{
			local skills = weapon.getSkills();
			if (skills.len() == 0)
			{
				this.m.Skills.clear();
				return;
			}

			if (weapon.m.FatigueOnSkillUse > 0)
			{
				foreach (skill in skills)
				{
					if (this.m.Skills.find(skill.getID()) == null)
					{
						this.m.Skills.push(skill.getID());
						skill.m.FatigueCost -= ::Math.min(2, weapon.m.FatigueOnSkillUse);
					}
				}
			}
		}
	}

	o.onRemoved <- function()
	{
		local equippedItem = this.getContainer().getActor().getItems().getItemAtSlot(::Const.ItemSlot.Mainhand);
		if (equippedItem != null)
		{
			this.getContainer().getActor().getItems().unequip(equippedItem);
			this.getContainer().getActor().getItems().equip(equippedItem);
		}
	}
});
