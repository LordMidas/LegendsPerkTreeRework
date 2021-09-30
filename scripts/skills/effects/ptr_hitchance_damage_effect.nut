this.ptr_hitchance_damage_effect <- this.inherit("scripts/skills/skill", {
	m = {
		DamageMult = 1.0,
		IsUpdating = false
	},
	function create()
	{
		this.m.ID = "effects.ptr_hitchance_damage";
		this.m.Name = "";
		this.m.Description = "";
		this.m.Icon = "";		
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = true;
	}

	function getMult()
	{
		return this.m.DamageMult;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !_skill.isAttack() || this.m.IsUpdating)
		{
			return;
		}

		this.m.DamageMult = 1.0;

		this.m.IsUpdating = true;

		if (this.Math.rand(1, 100) > this.getChanceFullDamage(_skill, _targetEntity))
		{
			this.m.DamageMult = 0.5;
		}

		this.m.IsUpdating = false;

		_properties.DamageTotalMult *= this.m.DamageMult;
	}

	function getChanceFullDamage(_skill, _targetEntity)
	{
		return this.Math.max(30, _skill.getHitchance(_targetEntity));		
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		if (this.m.DamageMult < 1.0)
		{
			this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(this.getContainer().getActor()) + "\'s attack is clumsy and does [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] reduced damage!");
		}
	}

	// function getCombatLogFluff()
	// {
	// 	if (this.m.DamageMult == 1.0)
	// 	{
	// 		return " got a perfect hit dealing as much damage as possible!";
	// 	}
	// }
});
