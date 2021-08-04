this.perk_ptr_swordlike <- this.inherit("scripts/skills/skill", {
	m = {
		HitChanceBonus = 10
	},
	function create()
	{
		this.m.ID = "perk.ptr_swordlike";
		this.m.Name = this.Const.Strings.PerkName.PTRSwordlike;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSwordlike;
		this.m.Icon = "ui/perks/ptr_swordlike.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill.getID() == "actives.cleave")
    {
      _properties.MeleeSkill += this.m.HitChanceBonus;
    }
	}
});
