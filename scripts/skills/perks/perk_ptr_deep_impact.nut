this.perk_ptr_deep_impact <- this.inherit("scripts/skills/skill", {
	m = {
		ArmorEffectivenessMult = 0.25,
		IsForceEnabled = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_deep_impact";
		this.m.Name = this.Const.Strings.PerkName.PTRDeepImpact;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDeepImpact;
		this.m.Icon = "ui/perks/ptr_deep_impact.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isEnabled()
	{
		return true;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !_skill.isAttack() || (!_skill.getDamageType().contains(this.Const.Damage.DamageType.Blunt) && !this.m.IsForceEnabled))
		{
			return;
		}
	
		_properties.ThresholdToInflictInjuryMult *= 1.0 - this.Math.minf(0.99, (this.m.ArmorEffectivenessMult * _properties.DamageArmorMult));
	}
});
