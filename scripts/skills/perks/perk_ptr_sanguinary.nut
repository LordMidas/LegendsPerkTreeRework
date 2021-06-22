this.perk_ptr_sanguinary <- this.inherit("scripts/skills/skill", {
	m = {
		FatigueCostRefundPercentage = 0.25
	},
	function create()
	{
		this.m.ID = "perk.ptr_sanguinary";
		this.m.Name = this.Const.Strings.PerkName.PTRSanguinary;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSanguinary;
		this.m.Icon = "ui/perks/ptr_sanguinary.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		_properties.FatalityChanceMult *= 1.5;
	}
});
