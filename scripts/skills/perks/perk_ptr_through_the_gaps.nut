this.perk_ptr_through_the_gaps <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_through_the_gaps";
		this.m.Name = this.Const.Strings.PerkName.PTRThroughTheGaps;
		this.m.Description = this.Const.Strings.PerkDescription.PTRThroughTheGaps;
		this.m.Icon = "ui/perks/ptr_through_the_gaps.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill.isAttack() && !_skill.isRanged() && _skill.hasPiercingDamage())
		{
			_properties.DamageDirectAdd += 0.1;
		}
	}
});
