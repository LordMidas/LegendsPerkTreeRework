this.perk_ptr_tempo <- this.inherit("scripts/skills/skill", {
	m = {
		BonusInitiative = 15,
		Stacks = 0,
		SkillCount = 0,
		LastTargetID = 0
	},
	function create()
	{
		this.m.ID = "perk.ptr_tempo";
		this.m.Name = this.Const.Strings.PerkName.PTRTempo;
		this.m.Description = "This character has the advantage of going first in the flow of battle.";
		this.m.Icon = "ui/perks/ptr_tempo.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
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
			icon = "ui/icons/initiative.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Initiative"
		});

		return tooltip;
	}

	function getBonus()
	{
		return this.m.Stacks * this.m.BonusInitiative;
	}

	function gainStackIfApplicable(_skill, _targetEntity)
	{
		local actor = this.getContainer().getActor();
		if (!_skill.isAttack() || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}

		if (_targetEntity.isTurnDone() || _targetEntity.isTurnStarted())
		{
			return;
		}

		if (this.m.SkillCount == this.Const.SkillCounter && this.m.LastTargetID == _targetEntity.getID())
		{
			return;
		}

		this.m.SkillCount = this.Const.SkillCounter;
		this.m.LastTargetID = _targetEntity.getID();

		this.m.Stacks++;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		gainStackIfApplicable(_skill, _targetEntity);
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		gainStackIfApplicable(_skill, _targetEntity);
	}

	function onUpdate( _properties )
	{
		_properties.Initiative += this.getBonus();
	}

	function onTurnStart()
	{
		this.m.Stacks = 0;
	}

	function onCombatStarted()
	{
		this.m.Stacks = 0;
		this.m.SkillCount = 0;
		this.m.LastTargetID = 0;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.Stacks = 0;
		this.m.SkillCount = 0;
		this.m.LastTargetID = 0;
	}
});
