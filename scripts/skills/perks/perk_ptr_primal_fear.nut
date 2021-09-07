this.perk_ptr_primal_fear <- this.inherit("scripts/skills/skill", {
	m = {
		Chance = 25,
		ForceFullChance = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_primal_fear";
		this.m.Name = this.Const.Strings.PerkName.PTRPrimalFear;
		this.m.Description = this.Const.Strings.PerkDescription.PTRPrimalFear;
		this.m.Icon = "ui/perks/ptr_primal_fear.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getChance()
	{
		if (this.m.ForceFullChance)
		{
			return 100;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && weapon.isWeaponType(this.Const.Items.WeaponType.Crossbow))
		{
			return 100;
		}

		return this.m.Chance;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (_bodyPart != this.Const.BodyPart.Head || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.getMoraleState() == this.Const.MoraleState.Ignore || _targetEntity.getMoraleState() == this.Const.MoraleState.Fleeing)
		{
			return;
		}

		if (this.Math.rand(1, 100) > this.getChance())
		{
			return;
		}

		local user = this.getContainer().getActor()
		local targetTile = _targetEntity.getTile();
		if (!user.isHiddenToPlayer() && targetTile.IsVisibleForPlayer)
		{
			this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(_targetEntity) + "\'s loses morale due to Primal Fear");
		}

		this.spawnIcon("perk_ptr_primal_fear", targetTile);
		_targetEntity.setMoraleState(this.Math.max(0, _targetEntity.getMoraleState() - 1));
	}
});
