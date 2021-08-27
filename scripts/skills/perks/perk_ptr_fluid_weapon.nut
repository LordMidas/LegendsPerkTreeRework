this.perk_ptr_heightened_reflexes <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		PivotFat = 35,
		InitiativeBonusAtPivot = 25,
		InitiativeMaxBonus = 50,
		FatReductionBonusAtPivot = 25,
		FatReductionMaxBonus = 50
	},
	function create()
	{
		this.m.ID = "perk.ptr_heightened_reflexes";
		this.m.Name = this.Const.Strings.PerkName.PTRHeightenedReflexes;
		this.m.Description = this.Const.Strings.PerkDescription.PTRHeightenedReflexes;
		this.m.Icon = "ui/perks/ptr_heightened_reflexes.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getDescription()
	{
		return "Wielding a well-balanced sword gives this character increased mobility and endurance.";
	}

	function isHidden()
	{
		return !this.isEnabled();
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		local fat = this.getTotalArmorFat();

		local initiativeBonus = this.getInitiativeBonus(fat);
		if (initiativeBonus > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/initiative.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + initiativeBonus + "[/color] Initiative"
			});
		}

		local fatReductionBonus = this.getFatigueReductionBonus(fat);
		if (fatReductionBonus > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "Weapon skills build up [color=" + this.Const.UI.Color.PositiveValue + "]-" + fatReductionBonus + "%[/color] Fatigue"
			});
		}

		return tooltip;
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.WMS.WeaponType.Sword))
		{
			return false;
		}

		return true;
	}

	function getTotalArmorFat()
	{
		local fat = 0;

		local body = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Body);
		local head = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Head);

		if (body != null)
		{
			fat = fat + body.getStaminaModifier();
		}

		if (head != null)
		{
			fat = fat + head.getStaminaModifier();
		}

		return this.Math.abs(fat);
	}

	function onUpdate(_properties)
	{
		if (!this.isEnabled())
		{
			return;
		}

		local fat = this.getTotalArmorFat();

		_properties.Initiative += this.getInitiativeBonus(fat);
	}

	function onAfterUpdate(_properties)
	{
		if (!this.isEnabled())
		{
			return;
		}

		local fat = this.getTotalArmorFat();
		local skills = this.getContainer().getAllSkillsOfType(this.Const.SkillType.Active)
		foreach (s in skills)
		{
			if (s.m.IsWeaponSkill)
			{
				s.m.FatigueCostMult *= 1.0 - this.getFatigueReductionBonus(fat) * 0.01;
			}
		}
	}

	function getInitiativeBonus(_armorFat)
	{
		local multiplier = this.Math.max(0, this.Math.min(this.m.InitiativeMaxBonus, this.m.InitiativeBonusAtPivot + this.m.PivotFat - _armorFat))
		return this.Math.floor(0.01 * multiplier * this.getContainer().getActor().getBaseProperties().getMeleeDefense());
	}

	function getFatigueReductionBonus(_armorFat)
	{
		local multiplier = this.Math.max(0, this.Math.min(this.m.FatReductionMaxBonus, this.m.FatReductionBonusAtPivot + _armorFat - this.m.PivotFat));
		return this.Math.floor(0.01 * multiplier * this.getContainer().getActor().getBaseProperties().getMeleeDefense());
	}
});
