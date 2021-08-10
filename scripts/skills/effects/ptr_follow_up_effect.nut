this.ptr_follow_up_effect <- this.inherit("scripts/skills/skill", {
	m = {
		DamageMalus = 50,
		DamageMalusIncreasePerProc = 10,
		ProcCount = 0,
		Charges = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_follow_up";
		this.m.Name = "Follow Up";
		this.m.Description = "Every time an enemy gets hit in this character\'s attack range by an ally, this character gains a free attack that does reduced damage. These free attacks can be used during this character\'s turn. This effect ends immediately if this character moves or is engaged in Melee.";
		this.m.Icon = "ui/perks/ptr_follow_up.png";
		//this.m.IconMini = "ptr_follow_up_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsHidden = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function isHidden()
	{
		return false;
	}

	function getName()
	{
		return this.m.Charges == 0 ? this.m.Name : this.m.Name + " (x" + this.m.Charges + ")";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/damage_dealt.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.getCurrentMalus() + "%[/color] Damage inflicted"
				}
			);

		if (!this.canFollowUp())
		{
			tooltip.push(
					{
						id = 10,
						type = "text",
						icon = "ui/tooltips/warning.png",
						text = "Can only Follow Up when not engaged in Melee and wielding a Two-Handed Weapon with a range of 2 tiles"
					}
				);
		}

		return tooltip;
	}

	function getCurrentMalus()
	{
		return this.Math.min(90, this.m.DamageMalus + (this.m.ProcCount * this.m.DamageMalusIncreasePerProc));
	}

	function canFollowUp()
	{
		local actor = this.getContainer().getActor();

		if (!actor.getCurrentProperties().IsAbleToUseWeaponSkills || !actor.hasZoneOfControl() || actor.isEngagedInMelee())
		{
			return false;
		}

		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isItemType(this.Const.Items.ItemType.TwoHanded) || !weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon))
		{
			return false;
		}

		return true;
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();
		if (actor.m.IsMoving || !actor.isPlacedOnMap())
		{
			this.removeSelf();
			return;
		}
	}

	function onAfterUpdate(_properties)
	{
		local attack = this.getContainer().getAttackOfOpportunity();
		if (attack == null)
		{
			this.removeSelf();
			return;
		}

		if (this.m.Charges > 0)
		{
			attack.m.ActionPointCost = 0;
			attack.m.FatigueCost = 0;
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap() || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}

		local attack = this.getContainer().getAttackOfOpportunity();
		if (attack == null || _skill != attack)
		{
			return;
		}

		_properties.DamageTotalMult *= 1.0 - this.getCurrentMalus() * 0.01;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap() || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}
		this.m.ProcCount++;
		this.m.Charges--;
		if (this.m.Charges < 1)
		{
			this.removeSelf();
		}
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap() || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}
		this.m.Charges--;
		this.m.ProcCount++;
		if (this.m.Charges < 1)
		{
			this.removeSelf();
		}
	}

	function onTurnStart()
	{
		if (!this.canFollowUp() || this.m.Charges == 0)
		{
			this.removeSelf();
		}
	}
});
