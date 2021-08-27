this.ptr_take_aim_effect <- this.inherit("scripts/skills/skill", {
	m = {
		Perk = null
	},
	function create()
	{
		this.m.ID = "effects.ptr_take_aim";
		this.m.Name = "Taking Aim";
		this.m.Description = "This character is expending significant effort into taking a better aim.";
		this.m.Icon = "ui/perks/ptr_take_aim.png";
		//this.m.IconMini = "ptr_arrow_to_the_knee_attack_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Any;
		this.m.IsActive = false;
		this.m.IsHidden = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 7,
			type = "text",
			icon = "ui/icons/special.png",
			text = "For the next ranged attack:"
		});

		tooltip.push({
			id = 7,
			type = "text",
			icon = "ui/icons/hitchance.png",
			text = "Crossbows ignore any hitchance penalty from obstacles, and the shot cannot go astray."
		});

		tooltip.push({
			id = 7,
			type = "text",
			icon = "ui/icons/hitchance.png",
			text = "Handgonnes have their Maximum Range increased by 1 and if used at shorter range, have their area of effect increased by 1 instead."
		});

		return tooltip;
	}

	function onAdded()
	{
		this.m.Perk = this.getContainer().getSkillByID("perk.ptr_take_aim");
	}

	function isEnabled()
	{
		return this.m.Perk != null && this.m.Perk.isEnabled();
	}

	function onUpdate( _properties )
	{
		this.m.IsHidden = true;
		if (this.isEnabled())
		{
			this.m.IsHidden = false;
			_properties.RangedAttackBlockedChanceMult = 0;
		}
	}

	function onAfterUpdate(_properties)
	{
		local skill = this.getContainer().getSkillByID("actives.fire_handgonne_skill");
		if (skill != null)
		{
			skill.m.MaxRange += 1;
		}
	}

	function onAnySkillExecuted(_skill, _targetTile)
	{
		if (_skill.isAttack() && _skill.isRanged())
		{
			this.removeSelf();
		}
	}

	function onTurnEnd()
	{
		this.m.IsHidden = true;
		this.removeSelf();
	}
});
