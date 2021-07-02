this.perk_ptr_entrenched <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_entrenched";
		this.m.Name = this.Const.Strings.PerkName.PTREntrenched;
		this.m.Description = this.Const.Strings.PerkDescription.PTREntrenched;
		this.m.Icon = "ui/perks/ptr_entrenched.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onCombatStarted()
	{
		this.getContainer().add(this.new("scripts/skills/effects/ptr_entrenched_effect"));
	}

	function onAdded()
	{
		if ("State" in this.Tactical)
		{
			this.getContainer().add(this.new("scripts/skills/effects/ptr_entrenched_effect"));
		}
	}
});
