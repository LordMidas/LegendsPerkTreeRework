this.perk_ptr_between_the_ribs <- this.inherit("scripts/skills/skill", {
	m = {
		DamageBonusPerSurroundCount = 0.05
	},
	function create()
	{
		this.m.ID = "perk.ptr_between_the_ribs";
		this.m.Name = this.Const.Strings.PerkName.PTRBetweenTheRibs;
		this.m.Description = this.Const.Strings.PerkDescription.PTRBetweenTheRibs;
		this.m.Icon = "ui/perks/ptr_between_the_ribs.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (!_skill.isAttack() || _targetEntity == null || _targetEntity.getCurrentProperties().IsImmuneToSurrounding || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}
		
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Dagger") == null)
		{
			return;
		}
	
		local count = _targetEntity.getSurroundedCount();
		_properties.DamageTotalMult *= 1.0 + (this.m.DamageBonusPerSurroundCount * count);
	}
});
