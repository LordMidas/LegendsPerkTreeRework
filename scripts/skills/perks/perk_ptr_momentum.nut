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

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !_targetEntity.isPlacedOnMap())
		{
			return;
		}

		this.m.TargetTile = _targetEntity.getTile();

		if (this.m.TargetTile == null)
		{
			return;
		}

		local bonus = this.getBonus();

		if (bonus == 0 || !_skill.isAttack() || !_skill.isRanged())
		{
			return;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Throwing Weapon") == null)
		{
			return;
		}

		_properties.RangedDamageMult *= 1.0 + (this.getBonus() * 0.01);
	}

	function getBonus()
	{
		local actor = this.getContainer().getActor();
		if (this.m.PrevTile == null || this.m.CurrTile == null || this.m.TargetTile == null || !actor.isPlacedOnMap() || actor.getTile() == null)
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
		if (bonus > 0)
		{
			if (!actor.isHiddenToPlayer() && targetTile.IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + " dealt +" + bonus + "% damage due to Momentum");
			}
		}

		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
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

	function onMovementStarted(_tile)
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}

	function onMovementFinished (_tile, _numTiles) {
		this.m.CurrTile = this.getContainer().getActor().getTile();
		this.m.TargetTile = null;
	}
});
