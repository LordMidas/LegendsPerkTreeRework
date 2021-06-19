this.perk_ptr_unstoppable <- this.inherit("scripts/skills/skill", {
	m = {
		Stacks = 0,
		BonusPerStack = 5
	},
	function create()
	{
		this.m.ID = "perk.ptr_unstoppable";
		this.m.Name = this.Const.Strings.PerkName.PTRUnstoppable;
		this.m.Description = this.Const.Strings.PerkDescription.PTRUnstoppable;
		this.m.Icon = "ui/perks/ptr_unstoppable.png";
		//this.m.IconMini = "perk_19_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = true;
	}

	function getDescription()
	{
		return "This character\'s attacks seem to not miss at all.";
	}

	function isHidden()
	{
		return this.m.Stacks == 0;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/hitchance.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Melee Skill"
		});

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/damage_dealt.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "%[/color] Melee Damage"
		});

		return tooltip;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_skill.isAttack() || _targetEntity == null || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}

		this.m.Stacks++;
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		if (!_skill.isAttack() || _targetEntity == null || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}

		this.m.Stacks = this.Math.floor(this.m.Stacks / 2);
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (!_skill.isAttack() || _attacker = this.getContainer().getActor())
		{
			return;
		}

		this.m.Stacks = 0;
	}

	function getBonus()
	{
		return this.m.Stacks * this.m.BonusPerStack;
	}

	function onUpdate( _properties )
	{
		local bonus = this.getBonus();
		_properties.MeleeSkill += bonus;
		_properties.MeleeDamageMult *= 1.0 + (bonus * 0.01);
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
