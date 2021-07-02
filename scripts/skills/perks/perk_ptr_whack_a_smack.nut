this.perk_ptr_whack_a_smack <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_whack_a_smack";
		this.m.Name = this.Const.Strings.PerkName.PTRWhackASmack;
		this.m.Description = this.Const.Strings.PerkDescription.PTRWhackASmack;
		this.m.Icon = "ui/perks/ptr_whack_a_smack.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onCombatStarted()
	{
		this.getContainer().add(this.new("scripts/skills/effects/ptr_whack_a_smack_effect"));
	}

	function onAdded()
	{
		if ("State" in this.Tactical)
		{
			this.getContainer().add(this.new("scripts/skills/effects/ptr_whack_a_smack_effect"));
		}
	}
});
