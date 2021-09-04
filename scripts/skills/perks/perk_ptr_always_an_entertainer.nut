this.perk_ptr_always_an_entertainer <- this.inherit("scripts/skills/skill", {
	m = {
		MinMoney = 20,
		MaxMoney = 40,
		BonusPerLevel = 2,
		IsSpent = false,
		SettlementsVisited = []
	},
	function create()
	{
		this.m.ID = "perk.ptr_always_an_entertainer";
		this.m.Name = this.Const.Strings.PerkName.PTRAlwaysAnEntertainer;
		this.m.Description = this.Const.Strings.PerkDescription.PTRAlwaysAnEntertainer;
		this.m.Icon = "ui/perks/ptr_always_an_entertainer.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.m.IsSpent;
	}

	function getDescription()
	{
		return "This character is eager to entertain the crowds and earn some coin at the next settlement.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		local levelBonus = this.getLevelBonus();
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Will earn between [color=" + this.Const.UI.Color.PositiveValue + "]+" + (this.m.MinMoney * levelBonus) + "[/color] and [color=" + this.Const.UI.Color.PositiveValue + "]+" + (this.m.MaxMoney * levelBonus) + "[/color] gold. This is doubled for medium-sized settlements and tripled for large settlements."
		});

		if (this.m.SettlementsVisited.len() > 0)
		{
			local settlementNames = "";
			foreach (settlementName in this.m.SettlementsVisited)
			{
				settlementNames += settlementName + ", ";
			}
			settlementNames = settlementNames.slice(0, -2);

			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Will [color=" + this.Const.UI.Color.NegativeValue + "]not[/color] be able to entertain at the following cities today because another character has already done so: " + settlementNames
			});
		}

		return tooltip;
	}

	function getLevelBonus()
	{
		return (this.getContainer().getActor().getLevel() - 1) * this.m.BonusPerLevel;
	}

	function earnMoneyFromSettlement(_settlement)
	{
		if (this.m.IsSpent || !this.canEarnFromSettlement(_settlement))
		{
			return 0;
		}

		this.m.IsSpent = true;
		local levelBonus = this.getLevelBonus();
		return this.Math.rand(this.m.MinMoney + levelBonus, this.m.MaxMoney + levelBonus) * _settlement.getSize();
	}

	function addSettlementVisited(_settlement)
	{
		if (!this.hasVisitedSettlement(_settlement))
		{
			this.m.SettlementsVisited.push(_settlement.getName());
		}
	}

	function hasVisitedSettlement(_settlement)
	{
		return this.m.SettlementsVisited.find(_settlement.getName());
	}

	function canEarnFromSettlement(_settlement)
	{
		if (!this.World.getTime().IsDaytime || _settlement.isMilitary() || this.hasVisitedSettlement(_settlement))
		{
			return false;
		}

		return true;
	}

	function onNewDay()
	{
		this.m.IsSpent = false;
		this.m.SettlementsVisited.clear();
	}

	function onSerialize(_out)
	{
		this.skill.onSerialize(_out);

		_out.writeBool(this.m.IsSpent);

		_out.writeU8(this.m.SettlementsVisited.len());
		foreach (s in this.m.SettlementsVisited)
		{
			_out.writeString(s);
		}
	}

	function onDeserialize(_in)
	{
		this.skill.onDeserialize(_in);

		if (this.Const.PTR.Version >= 1)
		{
			this.m.IsSpent = _in.readBool();

			for (local i = 0; i < _in.readU8(); i++)
			{
				this.m.SettlementsVisited.push(_in.readString());
			}
		}
	}
});
