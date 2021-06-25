this.perk_ptr_survival_instinct <- this.inherit("scripts/skills/skill", {
	m = {
		Stacks = 0,
		BonusPerStack = 5
	},
	function create()
	{
		this.m.ID = "perk.ptr_survival_instinct";
		this.m.Name = this.Const.Strings.PerkName.PTRSurvivalInstinct;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSurvivalInstinct;
		this.m.Icon = "ui/perks/ptr_survival_instinct.png";
		//this.m.IconMini = "ptr_survival_instinct_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = true;
	}

	function isHidden()
	{
		return this.m.Stacks == 0;
	}

	function getDescription()
	{
		return "This character\'s senses are heightened when faced with mortal danger.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.extend(
			[
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "[/color] Melee Defense"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/ranged_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "[/color] Ranged Defense"
				}
			]
		);

		return tooltip;
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (_skill == null || !_skill.isAttack() || _attacker == null || _attacker.getID() == this.getContainer().getActor().getID())
		{
			return;
		}

		this.m.Stacks += 1;
	}

	function onUpdate( _properties )
	{
		local bonus = this.m.Stacks * this.m.BonusPerStack;
		_properties.MeleeDefense += bonus;
		_properties.RangedDefense += bonus;
	}

	function onTurnStart()
	{
		this.m.Stacks = 0;
	}

	function onCombatStarted()
	{
		this.m.Stacks = 0;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.Stacks = 0;
	}
});
