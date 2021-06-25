this.perk_ptr_promised_potential <- this.inherit("scripts/skills/skill", {
	m = {
		StatBoost = 15,
		ChanceToSucceed = 50,
		IsSet = false,
		IsSpent = false,
		WillSucceed = true
	},
	function create()
	{
		this.m.ID = "perk.ptr_promised_potential";
		this.m.Name = this.Const.Strings.PerkName.PTRPromisedPotential;
		this.m.Description = this.Const.Strings.PerkDescription.PTRPromisedPotential;
		this.m.Icon = "ui/perks/ptr_promised_potential.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function updatePerkVisuals()
	{
		foreach (perk in this.getContainer().getActor().getBackground().m.PerkTree[0])
		{
			if (perk.ID == "perk.ptr_promised_potential")
			{
				if (this.m.WillSucceed)
				{
					perk.Name = "Realized Potential";
					perk.Icon = "ui/perks/ptr_realized_potential.png";
					perk.Tooltip = this.Const.Strings.PerkDescription.PTRRealizedPotential;
					break;
				}
				else
				{
					perk.Name = "Failed Potential";
					perk.Icon = "ui/perks/ptr_failed_potential.png";
					perk.Tooltip = this.Const.Strings.PerkDescription.PTRFailedPotential;
				}
			}
		}
	}

	function onAdded()
	{
		if (this.m.IsSpent)
		{
			this.updatePerkVisuals();
		}

		if (this.m.IsSet)
		{
			return;
		}

		if (this.Math.rand(1, 100) > this.m.ChanceToSucceed - (this.getContainer().getActor().getPerkPointsSpent() * 10))
		{
			this.m.WillSucceed = false;
		}

		this.m.IsSet = true;
	}

	function onSerialize(_out)
	{
		_out.writeBool(this.m.IsSpent);
		_out.writeBool(this.m.WillSucceed);
	}

	function onDeserialize(_in)
	{
		this.m.IsSet = true;
		this.m.IsSpent = _in.readBool();
		this.m.WillSucceed = _in.readBool();
	}
});
