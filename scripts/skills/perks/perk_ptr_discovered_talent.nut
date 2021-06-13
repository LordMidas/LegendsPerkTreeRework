this.perk_ptr_discovered_talent <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_discovered_talent";
		this.m.Name = this.Const.Strings.PerkName.PTRDiscoveredTalent;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDiscoveredTalent;
		this.m.Icon = "ui/perks/ptr_discovered_talent.png";
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

		foreach (talent in this.getContainer().getActor().getTalents())
		{
			talent++;
		}

		this.m.IsSpent = true;
	}

	function onSerialize(_out)
	{
		this.skill.onSerialize(_out);
		_out.writeBool(this.m.IsSpent);
	}

	function onDeserialize(_in)
	{
		this.skill.onDeserialize(_in);
		this.m.IsSpent = _in.readBool();
	}
});
