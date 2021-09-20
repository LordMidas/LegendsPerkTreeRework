this.perk_ptr_pointy_end <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		MeleeSkillBonus = 10
	},
	function create()
	{
		this.m.ID = "perk.ptr_pointy_end";
		this.m.Name = this.Const.Strings.PerkName.PTRPointyEnd;
		this.m.Description = this.Const.Strings.PerkDescription.PTRPointyEnd;
		this.m.Icon = "ui/perks/ptr_pointy_end.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getBonus()
	{
		return this.m.MeleeSkillBonus;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !_targetEntity.isArmedWithShield() || !_skill.isAttack())
		{
			return;
		}

		if (this.m.IsForceEnabled || (!_skill.isRanged() && _skill.hasDamageType(this.Const.Damage.DamageType.Piercing)))
		{
			_properties.MeleeSkill += this.getBonus();
		}
	}
});
