this.perk_ptr_professional <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_professional";
		this.m.Name = this.Const.Strings.PerkName.PTRProfessional;
		this.m.Description = this.Const.Strings.PerkDescription.PTRProfessional;
		this.m.Icon = "ui/perks/ptr_professional.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAdded()
	{
		if (this.m.IsSpent)
		{
			return;
		}

		if (!this.getContainer().hasSkill("perk.duelist"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_duelist"));
		}

		if (!this.getContainer().hasSkill("perk.ptr_exploit_opening"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_exploit_opening"));
		}

		if (!this.getContainer().hasSkill("perk.reach_advantage"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_reach_advantage"));
		}

		if (!this.getContainer().hasSkill("perk.ptr_bloody_harvest"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_bloody_harvest"));
		}

		this.m.IsSpent = true;
	}

	function onRemoved()
	{
		this.getContainer().removeByID("perk.duelist");
		this.getContainer().removeByID("perk.ptr_exploit_opening");
		this.getContainer().removeByID("perk.reach_advantage");
		this.getContainer().removeByID("perk.perk_ptr_bloody_harvest");
	}

	function onDeserialize(_in)
	{
		this.skill.onDeserialize(_in);
		this.m.IsSpent = true;
	}
});
