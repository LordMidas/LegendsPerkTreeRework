this.perk_ptr_momentum <- this.inherit("scripts/skills/skill", {
	m = {
		BonusPerTile = 10,
		PrevTile = null,
		CurrTile = null,
		TargetTile = null
	},
	function create()
	{
		this.m.ID = "perk.ptr_momentum";
		this.m.Name = this.Const.Strings.PerkName.PTRMomentum;
		this.m.Description = this.Const.Strings.PerkDescription.PTRMomentum;
		this.m.Icon = "ui/perks/ptr_momentum.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isEnabled()
	{
		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap())
		{
			return false;
		}

		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.WMS.WeaponType.Throwing))
		{
			return false;
		}

		return true;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (!_skill.isAttack() || !_skill.isRanged() || _targetEntity == null || !_targetEntity.isPlacedOnMap() || !this.isEnabled())
		{
			return;
		}

		this.m.TargetTile = _targetEntity.getTile();

		local bonus = this.getBonus();
		if (bonus != 0)
		{
			_properties.RangedDamageMult *= 1.0 + (this.getBonus() * 0.01);
		}
	}

	function getBonus()
	{
		local actor = this.getContainer().getActor();
		if (this.m.PrevTile == null || this.m.CurrTile == null || this.m.TargetTile == null || !this.isEnabled())
		{
			return 0;
		}

		local distanceMoved = this.m.PrevTile.getDistanceTo(this.m.TargetTile) - this.m.CurrTile.getDistanceTo(this.m.TargetTile);

		return this.Math.max(0, distanceMoved * this.m.BonusPerTile);
	}

	function onWaitTurn()
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}

	function onAdded()
	{
		if (this.getContainer().getActor().isPlacedOnMap())
		{
			this.m.PrevTile = this.getContainer().getActor().getTile();
			this.m.CurrTile = this.getContainer().getActor().getTile();
			this.m.TargetTile = null;
		}
	}

	function onCombatStarted()
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.PrevTile = null;
		this.m.CurrTile = null;
		this.m.TargetTile = null;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local bonus = this.getBonus();

		local actor = this.getContainer().getActor();
		if (_skill.isRanged() && bonus > 0)
		{
			if (!actor.isHiddenToPlayer() && this.m.TargetTile.IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + " dealt +" + bonus + "% Damage due to Momentum");
			}
		}

		this.m.PrevTile = actor.getTile();
		this.m.CurrTile = actor.getTile();
		this.m.TargetTile = null;
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}

	function onTurnEnd()
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}

	function onTurnStart()
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}

	function onMovementStarted(_tile, _numTiles)
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}

	function onMovementFinished (_tile) {
		this.m.CurrTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}
});
