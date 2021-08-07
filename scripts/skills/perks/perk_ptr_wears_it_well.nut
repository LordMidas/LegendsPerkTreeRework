this.perk_ptr_wears_it_well <- this.inherit("scripts/skills/skill", {
	m = {
		FatigueRecoveryBonusPercentage = 5
	},
	function create()
	{
		this.m.ID = "perk.ptr_wears_it_well";
		this.m.Name = this.Const.Strings.PerkName.PTRWearsItWell;
		this.m.Description = this.Const.Strings.PerkDescription.PTRWearsItWell;
		this.m.Icon = "ui/perks/ptr_wears_it_well.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate(_properties)
	{
		_properties.FatigueRecoveryRate += this.Math.floor(0.01 * this.m.FatigueRecoveryBonusPercentage * this.getContainer().getActor().getFatigueMax());
	}
});
