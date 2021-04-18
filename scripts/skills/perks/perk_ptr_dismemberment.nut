this.perk_ptr_dismemberment <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_dismemberment";
		this.m.Name = this.Const.Strings.PerkName.PTRDismemberment;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDismemberment;
		this.m.Icon = "ui/perks/ptr_dismemberment.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}	
	
	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill.isAttack() && _skill.hasCuttingDamage())
		{
			_properties.ThresholdToInflictInjuryMult *= 0.85;			
		}
	}
	
	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		if (!_targetEntity.getFlags().has("undead") || _targetEntity.getFlags().has("ghoul"))
		{
			return;
		}
		
		if (!_targetEntity.getSkills().hasSkill("effects.ptr_undead_dismembered"))
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_undead_dismembered_effect"));
		}
						
		if (_skill.isAttack() && _skill.hasCuttingDamage())
		{
			local p = _targetEntity.getCurrentProperties();		
			p.IsAffectedByInjuries = true;
			p.IsAffectedByFreshInjuries = true;
		}		
	}
});

