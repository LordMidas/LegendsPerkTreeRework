this.perk_ptr_fresh_and_furious <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = true
	},
	function create()
	{
		this.m.ID = "perk.ptr_fresh_and_furious";
		this.m.Name = this.Const.Strings.PerkName.PTRFreshAndFurious;
		this.m.Description = "This character is exceptionally fast when not fatigued.";
		this.m.Icon = "ui/perks/ptr_fresh_and_furious.png";
		this.m.IconMini = "ptr_fresh_and_furious_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return !this.m.IsSpent && this.isEnabled();
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/special.png",
			text = "The next skill used has its Action Point cost [color=" + this.Const.UI.Color.PositiveValue + "]halved[/color] and Fatigue Cost reduced by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color]"
		});

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/warning.png",
			text = "[color=" + this.Const.UI.Color.NegativeValue + "]Will expire upon using a skill or when current Fatigue reaches 30% of Maximum Fatigue[/color]"
		});

		return tooltip;
	}

	function isEnabled()
	{
		return this.getContainer().getActor().getFatigue() < 0.3 * this.getContainer().getActor().getFatigueMax();
	}

	function onUpdate( _properties )
	{
		if (!this.m.IsSpent && this.isEnabled())
		{
			_properties.IsSkillUseHalfCost = true;
			foreach (skill in this.getContainer().getAllSkillsOfType(::Const.SkillType.Active))
			{
				skill.m.FatigueCostMult *= 0.75;
			}
		}
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity, _forFree )
	{
		this.m.IsSpent = true;
	}

	function onTurnStart()
	{
		this.m.IsSpent = false;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.IsSpent = true;
	}
});
