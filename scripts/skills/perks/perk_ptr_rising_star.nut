this.perk_ptr_rising_star <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_rising_star";
		this.m.Name = this.Const.Strings.PerkName.PTRRisingStar;
		this.m.Description = this.Const.Strings.PerkDescription.PTRRisingStar;
		this.m.Icon = "ui/perks/ptr_rising_star.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate( _properties )
	{
		if (this.getContainer().getActor().getLevel() < 13)
		{
			_properties.XPGainMult *= 1.5;
		}
		else
		{
			_properties.XPGainMult *= 1.05;
		}
	}
});
