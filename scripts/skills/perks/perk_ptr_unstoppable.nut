this.perk_ptr_unstoppable <- this.inherit("scripts/skills/skill", {
	m = {
		Stacks = 0,
		BonusPerStack = 5,
		MaxStacks = 10,
		Distance = 0
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

	function getName()
	{
		return this.m.Stacks == 0 ? this.m.Name : this.m.Name + " (x" + this.m.Stacks + ")";
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

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		this.m.Distance = 0;

		if (_skill == null || !_skill.isAttack() || _targetEntity == null || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}

		this.m.Distance = _targetEntity.getTile().getDistanceTo(this.getContainer().getActor().getTile());
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (_skill == null || !_skill.isAttack() || _targetEntity == null || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}

		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != _attacker.getID())
		{
			return;
		}

		local stacksToAdd = this.m.Distance > 1 ? 0.5 : 1;

		this.m.Stacks = this.Math.min(this.m.MaxStacks, this.m.Stacks + stacksToAdd);
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		if (_skill == null || !_skill.isAttack() || _targetEntity == null || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}

		this.m.Stacks = this.Math.floor(this.m.Stacks / 2);
	}

	function onDamageReceived( _attacker, _damageHitpoints, _damageArmor )
	{
		if (_attacker == null || _attacker == this.getContainer().getActor())
		{
			return;
		}

		this.m.Stacks = this.Math.floor(this.m.Stacks / 2);
	}

	function getBonus()
	{
		return this.Math.floor(this.m.Stacks) * this.m.BonusPerStack;
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
