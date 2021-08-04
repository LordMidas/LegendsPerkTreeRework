this.perk_ptr_fresh_and_furious <- this.inherit("scripts/skills/skill", {
	m = {
		IsInCombat = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_fresh_and_furious";
		this.m.Name = this.Const.Strings.PerkName.PTRFreshAndFurious;
		this.m.Description = this.Const.Strings.PerkDescription.PTRFreshAndFurious;
		this.m.Icon = "ui/perks/ptr_fresh_and_furious.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.getBonus() <= 0;
	}

	function getDescription()
	{
		return "This character hits harder when not fatigued.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push(
			{
				id = 10,
				type = "text",
				icon = "ui/icons/damage_dealt.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "%[/color] Damage Dealt"
			}
		);

		return tooltip;
	}

	function getBonus()
	{
		if (!this.m.IsInCombat)
		{
			return 0;
		}

		local actor = this.getContainer().getActor();
		return this.Math.floor(100 * (0.25 * (1.0 - (actor.getFatigue() / actor.getFatigueMax()) / 0.3)));
	}

	function onUpdate( _properties )
	{
		local bonus = this.getBonus();
		if (bonus > 0)
		{
			_properties.DamageTotalMult *= 1.0 + bonus / 100.0;
		}
	}

	function onAdded()
	{
		if (("State" in this.Tactical) && this.Tactical.State != null)
		{
			this.m.IsInCombat = true;
		}
	}

	function onCombatStarted()
	{
		this.m.IsInCombat = true;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.IsInCombat = false;
	}
});
