this.perk_ptr_soft_metal <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_soft_metal";
		this.m.Name = this.Const.Strings.PerkName.PTRSoftMetal;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSoftMetal;
		this.m.Icon = "ui/perks/ptr_soft_metal.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity != null && _skill.isAttack() && _skill.m.InjuriesOnBody == this.Const.Injury.BluntBody)
		{
			local remArmorFraction = _targetEntity.getRemainingArmorFraction();
			local weapon = this.getContainer().getActor().getMainhandItem();
			if (remArmorFraction < 0.25 || (remArmorFraction < 0.5 && weapon != null && weapon.getCategories().find("Hammer") != null))
			_properties.DamageDirectAdd += 0.1;
		}
	}
});

