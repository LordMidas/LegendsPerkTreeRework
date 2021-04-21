this.ptr_arrow_to_the_knee_debuff_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_arrow_to_the_knee_debuff";
		this.m.Name = "Took an Arrow to the Knee";
		this.m.Description = "This character has taken an arrow to the knee.";
		this.m.Icon = "ui/perks/ptr_arrow_to_the_knee.png";
		//this.m.IconMini = "ptr_arrow_to_the_knee_debuff_effect_mini";
		this.m.Overlay = "ptr_arrow_to_the_knee_debuff_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] Melee and Ranged defense."
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]2[/color] additional Action Points per tile moved."
			}
		];
	}

	function onUpdate( _properties )
	{
		_properties.MeleeDefenseMult *= 0.9;
		_properties.RangedDefenseMult *= 0.9;
		_properties.MovementAPCostAdditional += 2;
	}

	function onTurnEnd()
	{
		this.removeSelf();
	}

});
