this.ptr_follow_up_effect <- this.inherit("scripts/skills/skill", {
	m = {
		DamageMalus = 50,
		ProcCount = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_follow_up";
		this.m.Name = "Follow Up";
		this.m.Description = "This character will quickly attack any enemies in range who get hit by his allies.";
		this.m.Icon = "ui/perks/ptr_follow_up.png";
		//this.m.IconMini = "ptr_follow_up_effect_mini";
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
					icon = "ui/icons/damage_dealt.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + (100 - this.getCurrentMalus()) + "%[/color] Damage inflicted"
				}
			);

		local actor = this.getContainer().getActor();
		if (actor.isEngagedInMelee())
		{
			tooltip.push(
					{
						id = 10,
						type = "text",
						icon = "ui/tooltips/warning.png",
						text = "Cannot Follow Up when when engaged in melee"
					}
				);
		}

		local weapon = actor.getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Polearm") == null)
		{
			tooltip.push(
					{
						id = 10,
						type = "text",
						icon = "ui/tooltips/warning.png",
						text = "Can only Follow Up when using a Polearm"
					}
				);
		}

		return tooltip;
	}

	function canFollowUp()
	{
		local actor = this.getContainer().getActor();

		if (!actor.getCurrentProperties().IsAbleToUseWeaponSkills || !actor.hasZoneOfControl() || actor.isEngagedInMelee())
		{
			return false;
		}

		local weapon = actor.getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Polearm") == null)
		{
			return false;
		}

		return true;
	}

	function onUpdate( _properties )
	{
		if (!this.getContainer().getActor().isPlacedOnMap())
		{
			return;
		}

		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() == this.getContainer().getActor().getID())
		{
			return;
		}

		_properties.DamageTotalMult *= this.getCurrentMalus() / 100.0;
	}

	function getCurrentMalus()
	{
		return this.Math.maxf(10, this.m.DamageMalus - (this.m.ProcCount * 10));
	}

	function onTurnStart()
	{
		this.removeSelf();
	}
});
