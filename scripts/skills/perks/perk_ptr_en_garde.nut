this.perk_ptr_en_garde <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_en_garde";
		this.m.Name = this.Const.Strings.PerkName.PTREnGarde;
		this.m.Description = this.Const.Strings.PerkDescription.PTREnGarde;
		this.m.Icon = "ui/perks/ptr_en_garde.png";
		this.m.SoundOnUse = [
			"sounds/combat/return_favor_01.wav"
		];
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onTurnStart()
	{
		this.m.IsSpent = false;
	}

	function onUpdate( _properties )
	{
		if (this.getContainer().getActor().m.IsMoving)
		{
			this.m.IsSpent = true;
		}
	}

	function onTurnEnd()
	{
		if (this.m.IsSpent)
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

		local skill = this.getContainer().getSkillByID("actives.riposte");
		if (skill != null)
		{
			if (skill.isAffordableBasedOnFatigue())
			{
				skill.useForFree(actor.getTile());
			}
		}
		else if (this.getContainer().getAttackOfOpportunity().isAffordableBasedOnFatigue())
		{
			this.getContainer().add(this.new("scripts/skills/effects/return_favor_effect"));
			if (actor.getTile().IsVisibleForPlayer)
			{
				this.Sound.play(this.m.SoundOnUse[this.Math.rand(0, this.m.SoundOnUse.len() - 1)], this.Const.Sound.Volume.Skill * this.m.SoundVolume, actor.getPos());
			}
		}
	}
});
