this.perk_ptr_vigorous_assault <- this.inherit("scripts/skills/skill", {
	m = {
		BonusEveryXTiles = 2,
		APReduction = 1,
		FatCostReduction = 10,
		StartingTile = null,
		IsIconSet = false,
		CurrAPBonus = 0,
		CurrFatBonus = 0,
	},
	function create()
	{
		this.m.ID = "perk.ptr_vigorous_assault";
		this.m.Name = this.Const.Strings.PerkName.PTRVigorousAssault;
		this.m.Description = "This character is adding the momentum of their movement to %their% next attack.";
		this.m.Icon = "ui/perks/ptr_vigorous_assault.png";
		this.m.IconMini = "ptr_vigorous_assault_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.getContainer().getActor().isPlayerControlled() && this.m.CurrAPBonus == 0 && this.m.CurrFatBonus == 0;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		if (this.m.CurrAPBonus > 0)
		{
			tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/action_points.png",
					text = "The next attack costs [color=" + this.Const.UI.Color.PositiveValue + "]-" + this.m.CurrAPBonus + "[/color] Action Point(s)"
				}
			);
		}

		if (this.m.CurrFatBonus > 0)
		{
			tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/fatigue.png",
					text = "The next attack builds up [color=" + this.Const.UI.Color.PositiveValue + "]-" + this.m.CurrFatBonus + "%[/color] Fatigue"
				}
			);
		}

		if (this.m.CurrAPBonus != 0 || this.m.CurrFatBonus != 0)
		{
			tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/warning.png",
					text = "Will expire upon waiting or ending the turn, using any skill, or swapping your weapon except to/from a throwing weapon"
				}
			);
		}

		return tooltip;
	}

	function isEnabled()
	{
		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap() || this.m.StartingTile == null)
		{
			return false;
		}

		local weapon = actor.getMainhandItem();
		if (weapon != null && (!weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon) && !weapon.isWeaponType(this.Const.Items.WeaponType.Throwing)))
		{
			return false;
		}

		return true;
	}

	function onNewRound()
	{
		if (!this.m.IsIconSet)
		{
			if (this.getContainer().getActor().getFaction() == this.World.FactionManager.getFactionOfType(this.Const.FactionType.Barbarians).getID())
			{
				this.m.Icon = "ui/perks/ptr_vigorous_assault_barbarian.png";
				this.m.IconMini = "ptr_vigorous_assault_barbarian_mini";
			}

			this.m.IsIconSet = true;
		}
	}

	function onAfterUpdate( _properties )
	{
		this.resetBonus();

		if (!this.isEnabled() || this.m.StartingTile == null || this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != this.getContainer().getActor().getID())
		{
			return;
		}

		local actor = this.getContainer().getActor();		
		
		local distanceMoved = this.m.StartingTile.getDistanceTo(actor.getTile());

		local mult = distanceMoved / this.m.BonusEveryXTiles;

		if (!actor.isPlayerControlled() && !this.getContainer().getActor().isArmedWithRangedWeapon() && distanceMoved < this.m.BonusEveryXTiles && actor.getActorsAtDistanceAsArray(1, this.Const.FactionRelation.Enemy).len() == 0 && actor.getActorsAtDistanceAsArray(this.m.BonusEveryXTiles + 1, this.Const.FactionRelation.Enemy).len() > 0)
		{
			mult = 1;
		}

		this.m.CurrAPBonus = this.m.APReduction * mult;
		this.m.CurrFatBonus = this.m.FatCostReduction * mult;

		foreach (skill in this.getContainer().getSkillsByFunction(this, @(_skill) _skill.isAttack()))
		{
			skill.m.ActionPointCost = this.Math.max(1, skill.m.ActionPointCost - this.m.CurrAPBonus);
			skill.m.FatigueCostMult *= 1.0 - this.m.CurrFatBonus * 0.01;
		}
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity )
	{
		if (!this.getContainer().m.IsExecutingMoveSkill)
		{
			this.m.StartingTile = this.getContainer().getActor().getTile();
		}
	}

	function onWaitTurn()
	{
		this.m.StartingTile = null;
		this.resetBonus();
	}

	function onResumeTurn()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();		
		this.resetBonus();
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

		this.m.StartingTile = this.getContainer().getActor().getTile();	
		this.resetBonus();
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.StartingTile = null;
		this.resetBonus();
	}

	function onTurnStart()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();		
		this.resetBonus();
	}

	function onTurnEnd()
	{	
		this.m.StartingTile = null;
		this.resetBonus();
	}

	function resetBonus()
	{
		this.m.CurrAPBonus = 0;
		this.m.CurrFatBonus = 0;
	}
});
