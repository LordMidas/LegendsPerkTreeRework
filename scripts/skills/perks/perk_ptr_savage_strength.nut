this.perk_ptr_savage_strength <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_savage_strength";
		this.m.Name = this.Const.Strings.PerkName.PTRSavageStrength;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSavageStrength;
		this.m.Icon = "ui/perks/ptr_savage_strength.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAfterUpdate( _properties )
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && weapon.m.FatigueOnSkillUse > 0)
		{
			local skills = weapon.getSkills();
			foreach (skill in skills)
			{
				skill.m.FatigueCost -= 5;
			}
		}
	}
});
