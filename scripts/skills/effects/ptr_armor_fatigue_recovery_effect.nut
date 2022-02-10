this.ptr_armor_fatigue_recovery_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_armor_fatigue_recovery";
		this.m.Name = "Encumbrance";
		this.m.Description = "This character\'s armor\'s weight is reducing %their% endurance. Encumbrance has 4 levels and it increases when your total remaining Fatigue after gear is less than 50, 40, 30, 20. Only applies when the total penalty to Fatigue from head and body armor is at least -20.";
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
		if (this.getContainer().getActor().getTotalArmorStaminaModifier() > -20)
		{
			return 0;
		}

		local fat = this.getContainer().getActor().getFatigueMax();
		if (fat < 20)
		{
			return 4;
		}
		else if (fat < 30)
		{
			return 3;
		}
		else if (fat < 40)
		{
			return 2;
		}
		else if (fat < 50)
		{
			return 1;
		}

		return 0;
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
