this.ptr_armor_fatigue_recovery_effect <- this.inherit("scripts/skills/skill", {
	m = {
		Malus = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_armor_fatigue_recovery";
		this.m.Name = "Encumbrance";
		this.m.Description = "This character\'s armor\'s weight is reducing %their% Fatigue Recovery.";
		this.m.Icon = "skills/ptr_armor_fatigue_recovery_effect.png";
		//this.m.IconMini = "ptr_armor_fatigue_recovery_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;		
	}

	function isHidden()
	{
		return this.m.Malus == 0;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		tooltip.push(
			{
				id = 10,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]" + this.m.Malus + "[/color] Fatigue Recovery per turn"
			}
		);

		return tooltip;
		
	}

	function onUpdate( _properties )
	{
		local fat = this.getContainer().getActor().getTotalArmorStaminaModifier(); // Returns a negative number
		this.m.Malus = (fat * 0.025).tointeger();
		_properties.FatigueRecoveryRate += this.m.Malus;
	}
});
