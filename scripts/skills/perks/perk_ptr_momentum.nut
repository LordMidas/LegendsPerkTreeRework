this.perk_ptr_momentum <- this.inherit("scripts/skills/skill", {
	m = {
		BonusPerTile = 5,
		PrevTile = null,		
		TilesMovedThisTurn = 0,
		BeforeSkillExecutedTile = null
	},
	function create()
	{
		this.m.ID = "perk.ptr_momentum";
		this.m.Name = this.Const.Strings.PerkName.PTRMomentum;
		this.m.Description = "A running start goes a long way to throwing better!";
		this.m.Icon = "ui/perks/ptr_momentum.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.m.TilesMovedThisTurn == 0;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/action_points.png",
			text = "The next Throwing attack costs [color=" + this.Const.UI.Color.NegativeValue + "]" + this.m.TilesMovedThisTurn + "[/color] fewer Action Points"
		});

		local damageBonus = this.getBonus();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/damage_dealt.png",
			text = "The next Throwing attack does [color=" + this.Const.UI.Color.PositiveValue + "]" + damageBonus + "%[/color] more damage"
		});

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/warning.png",
			text = "Will expire upon waiting or ending the turn, using any skill, or swapping your weapon except to/from a throwing weapon"
		});
		
		return tooltip;
	}

	function isEnabled()
	{
		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap())
		{
			return false;
		}

		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Throwing))
		{
			return false;
		}

		return true;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (!_skill.isAttack() || !_skill.isRanged() || !_skill.m.IsWeaponSkill || this.m.TilesMovedThisTurn == 0 || !this.isEnabled())
		{
			return;
		}

		_properties.RangedDamageMult *= 1.0 + this.getBonus() * 0.01;
	}

	function onAfterUpdate( _properties )
	{
		if (this.isEnabled() && this.m.TilesMovedThisTurn > 0)
		{

			local attacks = this.getContainer().getSkillsByFunction(this, @(_skill) _skill.isAttack() && _skill.m.IsWeaponSkill)
			foreach (a in attacks)
			{
				a.m.ActionPointCost = this.Math.max(1, a.m.ActionPointCost - this.m.TilesMovedThisTurn);
			}
		}
	}

	function getBonus()
	{
		return this.m.TilesMovedThisTurn * this.m.BonusPerTile;
	}

	function onWaitTurn()
	{
		this.m.TilesMovedThisTurn = 0;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.TilesMovedThisTurn = 0;
	}

	function onBeforeAnySkillExecuted( _skill, _targetTile, _targetEntity )
	{
		this.m.BeforeSkillExecutedTile = this.getContainer().getActor().getTile();
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity )
	{
		if (this.m.BeforeSkillExecutedTile != null && this.getContainer().getActor().getTile().isSameTileAs(this.m.BeforeSkillExecutedTile))
		{
			this.m.TilesMovedThisTurn = 0;
		}
	}

	function onPayForItemAction( _skill, _items )
	{
		foreach (item in _items)
		{
			if (item != null && item.isWeaponType(this.Const.Items.WeaponType.Throwing))
			{
				return;
			}
		}
		
		this.m.TilesMovedThisTurn = 0;
	}

	function onTurnEnd()
	{		
		this.m.TilesMovedThisTurn = 0;
	}

	function onMovementStarted(_tile, _numTiles)
	{
		this.m.PrevTile = _tile;
	}

	function onMovementFinished (_tile) 
	{		
		this.m.TilesMovedThisTurn += _tile.getDistanceTo(this.m.PrevTile);
	}
});
