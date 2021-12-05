this.perk_ptr_en_garde <- this.inherit("scripts/skills/skill", {
	m = {
		HasMoved = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_en_garde";
		this.m.Name = this.Const.Strings.PerkName.PTREnGarde;
		this.m.Description = this.Const.Strings.PerkDescription.PTREnGarde;
		this.m.Icon = "ui/perks/ptr_en_garde.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onTurnStart()
	{
		this.m.HasMoved = false;
	}

	function onUpdate( _properties )
	{
		if (this.getContainer().getActor().m.IsMoving)
		{
			this.m.HasMoved = true;
		}
	}

	function onTurnEnd()
	{
		if (this.m.HasMoved)
		{
			return;
		}

		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap() || !actor.hasZoneOfControl())
		{
			return;
		}

		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Sword))
		{
			return;
		}

		if (!("State" in this.Tactical) || this.Tactical.State.isBattleEnded() || this.Tactical.State.isAutoRetreat() || this.getContainer().hasSkill("effects.riposte"))
		{
			return;
		}

		local skill = this.getContainer().getSkillByID("actives.riposte");
		if (skill != null)
		{
			if (skill.isAffordableBasedOnFatigue())
			{
				skill.useForFree(actor.getTile());
			}
		}
		else
		{
			this.getContainer().add(this.new("scripts/skills/effects/ptr_en_garde_effect"));
		}
	}
});
