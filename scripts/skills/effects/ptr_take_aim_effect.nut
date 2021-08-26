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
		this.m.IsActive = false;
		this.m.IsHidden = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "The next ranged attack ignores hitchance penalty from obstacles"
				}
		);

		return tooltip;
	}

	function onAdded()
	{
		this.m.Perk = this.getContainer().getSkillByID("perk.ptr_take_aim");
	}

	function onUpdate( _properties )
	{
		this.m.IsHidden = true;
		if (this.m.Perk != null && this.m.Perk.isEnabled())
		{
			this.m.IsHidden = false;
			_properties.RangedAttackBlockedChanceMult = 0;
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
