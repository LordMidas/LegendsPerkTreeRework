this.perk_ptr_promised_potential <- this.inherit("scripts/skills/skill", {
	m = {
		StatBoost = 15,
		ChanceToSucceed = 50,
		IsSet = false,
		IsSpent = false,
		WillSucceed = true,
		IsVisualsUpdated = false
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

		this.m.IsVisualsUpdated = true;
	}

	function onUpdate(_properties)
	{
		if (this.m.IsSpent && !this.m.IsVisualsUpdated)
		{
			this.updatePerkVisuals();
		}
	}

	function onUpdateLevel()
	{
		local actor = this.getContainer().getActor();
		if (this.m.WillSucceed && (actor.m.Level == 11 || actor.m.Level == 7 && this.World.Assets.getOrigin().getID() == "scenario.manhunters" && this.getBackground().getID() == "background.slave"))
		{
			++actor.m.PerkPoints;
		}
	}

	function onAdded()
	{
		if (this.m.IsSet)
		{
			return;
		}

		local actor = this.getContainer().getActor();

		if (actor.getFlags().get("IsKingsGuard"))
		{
			actor.m.PerkPoints += 1;
			actor.m.PerkPointsSpent -= 1;
			this.removeSelf();
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
		this.skill.onSerialize(_out);
		_out.writeBool(this.m.IsSpent);
		_out.writeBool(this.m.WillSucceed);
	}

	function onDeserialize(_in)
	{
		this.skill.onDeserialize(_in);

		this.m.IsSet = true;

		if (this.Const.PTR.Version >= 1)
		{
			this.m.IsSpent = _in.readBool();
			this.m.WillSucceed = _in.readBool();
		}
	}
});
