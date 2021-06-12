this.ptr_worn_down_effect <- this.inherit("scripts/skills/skill", {
	m = {
		FatigueEffectMultIncrease = 1.1
	},
	function create()
	{
		this.m.ID = "effects.ptr_worn_down";
		this.m.Name = "Worn Down";
		this.m.Icon = "ui/perks/ptr_wear_them_down.png";
		//this.m.IconMini = "ptr_rattled_effect_mini";
		this.m.Overlay = "ptr_worn_down";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getDescription()
	{
		return "This character is feeling worn down after taking blows from a staff.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/fatigue.png",
			text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.FatigueCostMultIncrease + "%[/color] Fatigue built"
		});

		return tooltip;
	}

	function onUpdate( _properties )
	{
		if (!this.isGarbage())
		{
			_properties.FatigueEffectMult *= this.m.FatigueEffectMultIncrease;
		}
	}

	function onTurnEnd()
	{
		this.removeSelf();
	}
});
