this.perk_ptr_impaler <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_impaler";
		this.m.Name = this.Const.Strings.PerkName.PTRImpaler;
		this.m.Description = this.Const.Strings.PerkDescription.PTRImpaler;
		this.m.Icon = "ui/perks/ptr_impaler.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill.isAttack() && _skill.hasDamageType(this.Const.Damage.DamageType.Piercing))
		{
			_properties.ThresholdToInflictInjuryMult *= 0.85;
		}
	}
});

