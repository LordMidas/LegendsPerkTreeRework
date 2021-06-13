this.perk_ptr_discovered_talent <- this.inherit("scripts/skills/skill", {
	m = {
		IsApplied = false
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
		if (this.m.IsApplied)
		{
			return;
		}

		this.logInfo("discovering talent");

		local actor = this.getContainer().getActor();
		local talents = actor.getTalents();
		for (local i = 0; i < talents.len(); i++)
		{
			if (talents[i] < 3)
			{
				talents[i] += 1;
			}
		}

		actor.m.LevelUps += 1;
		actor.fillAttributeLevelUpValues(1);

		this.m.IsApplied = true;
	}

	function onDeserialize(_in)
	{
		this.skill.onDeserialize(_in);
		this.m.IsApplied = true;
	}
});
