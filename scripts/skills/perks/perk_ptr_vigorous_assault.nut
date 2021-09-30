this.perk_ptr_vigorous_assault <- this.inherit("scripts/skills/skill", {
	m = {
		BonusEveryXTiles = 2,
		APReduction = 1,
		FatCostReduction = 10,
		StartingTile = null
	},
	function create()
	{
		this.m.ID = "perk.ptr_vigorous_assault";
		this.m.Name = this.Const.Strings.PerkName.PTRVigorousAssault;
		this.m.Description = this.Const.Strings.PerkDescription.PTRVigorousAssault;
		this.m.Icon = "ui/perks/ptr_vigorous_assault.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		local APBonus = this.getAPBonus();

		if (APBonus > 0)
		{
			tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/action_points.png",
					text = "The next attack costs [color=" + this.Const.UI.Color.PositiveValue + "]-" + this.getAPBonus() + "[/color] Action Point(s)"
				}
			);
		}

		local fatBonus = this.getFatBonus();

		if (fatBonus > 0)
		{
			tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/fatigue.png",
					text = "The next attack builds up [color=" + this.Const.UI.Color.PositiveValue + "]-" + this.getFatBonus() + "[/color] Fatigue"
				}
			);
		}

		if (APBonus != 0 || fatBonus != 0)
		{
			tooltip.push(
				{
					id = 10,
					type = "text",
					icon = "ui/icons/warning.png",
					text = "Will expire upon waiting or ending the turn, swapping your weapon, or using any skill"
				}
			);
		}

		return tooltip;
	}

	function onAdded()
	{
		if (this.getContainer().getActor().getFaction() == this.Const.Faction.Barbarians)
		{
			this.m.Icon = "ui/perks/ptr_vigorous_assault_barbarian.png";
			this.m.IconMini = "ptr_vigorous_assault_barbarian_mini";
		}
	}

	function isEnabled()
	{
		local actor = this.getContainer().getActor();
		if (!actor.isPlacedOnMap() || this.m.StartingTile == null)
		{
			return false;
		}

		local weapon = actor.getMainhandItem();
		if (weapon != null && !weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon))
		{
			return false;
		}

		return true;
	}

	function onAfterUpdate( _properties )
	{
		if (!this.isEnabled() || this.m.StartingTile == null)
		{
			return;
		}
		
		foreach (skill in this.getContainer().getSkillsByFunction(this, @(_skill) _skill.isAttack()))
		{
			skill.m.FatigueCostMult *= 1.0 - this.getFatBonus() * 0.01;
			skill.m.ActionPointCost -= this.getAPBonus() ;
		}
	}

	function getAPBonus()
	{
		local actor = this.getContainer().getActor();
		local distanceMoved = this.m.StartingTile.getDistanceTo(actor.getTile());

		// Give bonus to AI when they don't have adjacent enemy so that the ai_engage_melee behavior
		// can properly anticipate the reduced action point cost of the attack skills after movement
		if (actor.isPlayerControlled())
		{			
			return this.m.APReduction * (distanceMoved / this.m.BonusEveryXTiles);
		}
		else		
		{
			if (distanceMoved < this.m.BonusEveryXTiles && actor.getActorsAtDistanceAsArray(1, this.Const.FactionRelation.Enemy).len() == 0 && actor.getActorsAtDistanceAsArray(this.m.BonusEveryXTiles + 1, this.Const.FactionRelation.Enemy).len() > 0)
			{
				return this.m.APReduction;
			}
			else 
			{
				return this.m.APReduction * (distanceMoved / this.m.BonusEveryXTiles);
			}
		}

		return 0;
	}

	function getFatBonus()
	{
		local actor = this.getContainer().getActor();
		local distanceMoved = this.m.StartingTile.getDistanceTo(actor.getTile());

		// Give bonus to AI when they don't have adjacent enemy so that the ai_engage_melee behavior
		// can properly anticipate the reduced action point cost of the attack skills after movement
		if (actor.isPlayerControlled())
		{			
			return this.m.FatCostReduction * (distanceMoved / this.m.BonusEveryXTiles);
		}
		else		
		{
			if (distanceMoved < this.m.BonusEveryXTiles && actor.getActorsAtDistanceAsArray(1, this.Const.FactionRelation.Enemy).len() == 0 && actor.getActorsAtDistanceAsArray(this.m.BonusEveryXTiles + 1, this.Const.FactionRelation.Enemy).len() > 0)
			{
				return this.m.FatCostReduction;
			}
			else 
			{
				return this.m.FatCostReduction * (distanceMoved / this.m.BonusEveryXTiles);
			}
		}

		return 0;
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity )
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}

	function onWaitTurn()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}

	function onPayForItemAction( _skill, _items )
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}

	function onCombatStarted()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.StartingTile = null
	}

	function onTurnStart()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}
});
