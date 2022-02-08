this.ptr_armor_fatigue_recovery_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_armor_fatigue_recovery";
		this.m.Name = "Encumbrance";
		this.m.Description = "This character\'s armor\'s weight is reducing %their% endurance. Encumbrance levels increase at total head and body armor Fatigue penalty of -40, -60, -80, -100.";
		this.m.Icon = "skills/ptr_armor_fatigue_recovery_effect.png";
		//this.m.IconMini = "ptr_armor_fatigue_recovery_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;		
	}

	function isHidden()
	{
		return this.getEncumbranceLevel() == 0 || !this.getContainer().getActor().isPlayerControlled();
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		local level = this.getEncumbranceLevel();

		tooltip.push(
			{
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Current Encumbrance Level: [color=" + this.Const.UI.Color.NegativeValue + "]" + level + "[/color]"
			}
		);

		switch (level)
		{
			case 1:
				tooltip.push({
					id = 10,
					type = "text",
					icon = "ui/icons/fatigue.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-1[/color] Fatigue Recovery per turn"
				});
				break;

			case 2:
				tooltip.extend([
					{
						id = 10,
						type = "text",
						icon = "ui/icons/fatigue.png",
						text = "[color=" + this.Const.UI.Color.NegativeValue + "]-2[/color] Fatigue Recovery per turn"
					},
					{
						id = 10,
						type = "text",
						icon = "ui/icons/fatigue.png",
						text = "[color=" + this.Const.UI.Color.NegativeValue + "]+1[/color] Fatigue built per tile traveled"
					},
				]);
				break;

			case 3:
				tooltip.extend([
					{
						id = 10,
						type = "text",
						icon = "ui/icons/fatigue.png",
						text = "[color=" + this.Const.UI.Color.NegativeValue + "]-2[/color] Fatigue Recovery per turn"
					},
					{
						id = 10,
						type = "text",
						icon = "ui/icons/fatigue.png",
						text = "[color=" + this.Const.UI.Color.NegativeValue + "]+3[/color] Fatigue built per tile traveled"
					},
				]);
				break;

			default:
				tooltip.extend([
					{
						id = 10,
						type = "text",
						icon = "ui/icons/fatigue.png",
						text = "[color=" + this.Const.UI.Color.NegativeValue + "]-3[/color] Fatigue Recovery per turn"
					},
					{
						id = 10,
						type = "text",
						icon = "ui/icons/fatigue.png",
						text = "[color=" + this.Const.UI.Color.NegativeValue + "]+3[/color] Fatigue built per tile traveled"
					},
				]);
				break;
		}

		return tooltip;		
	}

	function getEncumbranceLevel()
	{
		local fat = this.getContainer().getActor().getTotalArmorStaminaModifier(); // Returns a negative number
		return this.Math.max(0, (-1 * fat / 20) - 1); // Level 1 at 40, 2 at 60, 3 at 80, 4 at 100
	}

	function onUpdate( _properties )
	{
		switch (this.getEncumbranceLevel())
		{
			case 0:
				return;

			case 1:
				_properties.FatigueRecoveryRate -= 1;
				break;

			case 2:
				_properties.FatigueRecoveryRate -= 2;
				_properties.MovementFatigueCostAdditional += 1;
				break;

			case 3:
				_properties.FatigueRecoveryRate -= 2;
				_properties.MovementFatigueCostAdditional += 3;
				break;

			default:
				_properties.FatigueRecoveryRate -= 3;
				_properties.MovementFatigueCostAdditional += 3;
				break;
		}
	}
});
