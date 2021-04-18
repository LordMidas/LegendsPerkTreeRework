this.ptr_sweeping_strikes_debuff_effect <- this.inherit("scripts/skills/skill", {
	m = {
		Malus = 0
	},
	function create()
	{
		this.m.ID = "effects.sweeping_strikes_debuff_effect";
		this.m.Name = "Sweeping Strikes";
		this.m.Description = "This character has been attacked by a large sweeping strike, which makes it difficult to act offensively.";
		this.m.Icon = "ui/perks/ptr_sweeping_strikes.png";
		//this.m.IconMini = "ptr_sweeping_strikes_debuff_effect_mini";
		this.m.Overlay = "ptr_sweeping_strikes_debuff_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsHidden = false;
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
				icon = "ui/icons/melee_skill.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.Malus + "%[/color] Melee Skill"
			}
		];
	}

	function onUpdate ( _properties )
	{
		_properties.MeleeSkillMult *= 1.0 - (this.m.Malus * 0.01);
	}
	
	function onTurnEnd()
	{
		this.removeSelf();
	}
});

