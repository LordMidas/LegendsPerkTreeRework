this.perk_ptr_skirmisher <- this.inherit("scripts/skills/skill", {
	m = {
		Count = 2
	},
	function create()
	{
		this.m.ID = "perk.ptr_skirmisher";
		this.m.Name = this.Const.Strings.PerkName.PTRSkirmisher;
		this.m.Description = "This character is skilled at using the early stages of the battle to quickly throw deadly weapons at %their% enemies."
		this.m.Icon = "ui/perks/ptr_skirmisher.png";
		this.m.IconMini = "ptr_skirmisher_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return !this.isEnabled();
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		local bonus = this.getBonus();
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/action_points.png",
			text = "The next [color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Count + "[/color] Throwing attacks have their Action Point costs [color=" + this.Const.UI.Color.NegativeValue + "]halved[/color]"
		});
		
		return tooltip;
	}

	function isEnabled()
	{
		if (this.m.Count == 0 || !this.getContainer().getActor().isPlacedOnMap())
		{
			return false;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Throwing))
		{
			return false;
		}

		return true;
	}

	function onAfterUpdate( _properties )
	{
		if (this.isEnabled())
		{
			local attacks = this.getContainer().getSkillsByFunction(this, @(_skill) _skill.isAttack() && _skill.m.IsWeaponSkill)
			foreach (a in attacks)
			{
				a.m.ActionPointCost /= 2;
			}
		}
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity )
	{
		if (this.isEnabled() && _skill.isAttack() && _skill.m.IsWeaponSkill)
		{
			this.m.Count--;
		}
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.Count = 2;
	}
});
