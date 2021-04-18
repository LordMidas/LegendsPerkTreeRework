this.perk_ptr_deep_impact <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_deep_impact";
		this.m.Name = this.Const.Strings.PerkName.PTRDeepImpact;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDeepImpact;
		this.m.Icon = "ui/perks/ptr_deep_impact.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (!_skill.isAttack() || !_skill.hasBluntDamage())
		{
			return;
		}
		
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null)
		{
			return;
		}
		
		_properties.ThresholdToInflictInjuryMult *= 1.0 - (0.1 * weapon.getArmorDamageMult());
	}
});

