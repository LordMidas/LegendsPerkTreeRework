this.perk_ptr_momentum <- this.inherit("scripts/skills/skill", {
	m = {
		BonusPerTile = 10,
		PrevTile = null,
		CurrTile = null
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
		local bonus = this.getBonus();

		if (bonus == 0 || !_skill.isAttack() || !_skill.isRanged())
		{
			return;
		}

		_properties.RangedDamageMult *= 1.0 + (this.getBonus() * 0.01);
	}

	function getBonus(_targetTile)
	{
		local actor = this.getContainer().getActor();
		if (this.m.PrevTile == null || this.m.CurrTile == null || !actor.isPlacedOnMap() || actor.getTile() == null)
		{
			return 0;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Throwing Weapon") == null)
		{
			return 0;
		}

		local distanceMoved = this.m.PrevTile.getDistanceTo(_targetTile) - this.m.CurrTile.getDistanceTo(_targetTile);

		return this.Math.max(0, distanceMoved * this.m.BonusPerTile);
	}

	function onWaitTurn()
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
	}

	function onAdded()
	{
		if (this.getContainer().getActor().isPlacedOnMap())
		{
			this.m.PrevTile = this.getContainer().getActor().getTile();
			this.m.CurrTile = this.getContainer().getActor().getTile();
		}
	}

	function onCombatStarted()
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.PrevTile = null;
		this.m.CurrTile = null;
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
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
	}

	function onTurnEnd()
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
	}

	function onTurnStart()
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
		this.m.CurrTile = this.getContainer().getActor().getTile();
	}

	function onMovementStarted(_tile)
	{
		this.m.PrevTile = this.getContainer().getActor().getTile();
	}

	function onMovementFinished (_tile, _numTiles) {
		this.m.CurrTile = this.getContainer().getActor().getTile();
	}
});
