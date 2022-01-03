this.perk_ptr_fresh_and_furious <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_fresh_and_furious";
		this.m.Name = this.Const.Strings.PerkName.PTRFreshAndFurious;
		this.m.Description = "This character hits exceptionally hard when not fatigued.";
		this.m.Icon = "ui/perks/ptr_fresh_and_furious.png";
		this.m.IconMini = "ptr_fresh_and_furious_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.getBonus() <= 0;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push(
			{
				id = 10,
				type = "text",
				icon = "ui/icons/damage_dealt.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "%[/color] Damage Dealt"
			}
		);

		return tooltip;
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && (weapon.isWeaponType(this.Const.Items.WeaponType.Throwing) || weapon.isWeaponType(this.Const.Items.WeaponType.Bow)))
		{
			return true;
		}

		return false;
	}

	function getBonus()
	{
		if (!this.getContainer().getActor().isPlacedOnMap())
		{
			return 0;
		}

		local actor = this.getContainer().getActor();
		return this.Math.floor(100 * (0.25 * (1.0 - (actor.getFatigue() / actor.getFatigueMax()) / 0.3)));
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if ((_skill.isAttack() && !_skill.isRanged()) || this.isEnabled())
		{
			local bonus = this.getBonus();
			if (bonus > 0)
			{
				_properties.DamageTotalMult *= 1.0 + bonus / 100.0;
			}
		}
	}
});
