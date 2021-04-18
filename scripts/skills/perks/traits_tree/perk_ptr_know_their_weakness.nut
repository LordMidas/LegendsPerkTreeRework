this.perk_ptr_know_their_weakness <- this.inherit("scripts/skills/skill", {
	m = {
		Stacks = 0,
		BonusPerStack = 0.05,
		BonusMax = 1.3
	},
	function create()
	{
		this.m.ID = "perk.ptr_know_their_weakness";
		this.m.Name = this.Const.Strings.PerkName.PTRKnowTheirWeakness;
		this.m.Description = this.Const.Strings.PerkDescription.PTRKnowTheirWeakness;
		this.m.Icon = "ui/perks/ptr_know_their_weakness.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function getName()
	{
		return "Knows their Weakness";
	}
	
	function getDescription()
	{
		return "With each enemy felled, this character finds it easier to kill those who remain.";
	}
	
	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Melee Skill"
		});
		
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Ranged Skill"
		});
		
		return tooltip;
	}
	
	function isHidden()
	{
		return this.m.Stacks == 0;
	}
	
	function onTargetKilled( _targetEntity, _skill )
	{
		if (!_skill.isAttack())
		{
			return;
		}
		this.m.Stacks++;
	}
	
	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (_attacker == null || _attacker.getID() == this.getContainer().getActor().getID() || _skill == null || !_skill.isAttack())
		{
			this.m.Stacks--;
		}
	}
	
	function getBonus()
	{
		return this.Math.maxf(this.m.BonusMax, 1.0 + this.m.Stacks * this.m.BonusPerStack);
	}
	
	function onUpdate( _properties )
	{
		_properties.MeleeSkillMult *= this.getBonus();
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

