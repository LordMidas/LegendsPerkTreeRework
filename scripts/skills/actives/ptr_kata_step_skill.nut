this.ptr_kata_step_skill <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = false
	},
	function create()
	{
		this.m.ID = "actives.ptr_kata_step";
		this.m.Name = "Kata Step";
		this.m.Description = "Use the flow of your sword\'s swings to take a step through Zone of Control without triggering attacks of opportunity.";
		this.m.Icon = "skills/ptr_kata_step_skill.png";
		this.m.IconDisabled = "skills/ptr_kata_step_skill_bw.png";
		this.m.Overlay = "ptr_kata_step_skill";
		this.m.SoundOnUse = [
			"sounds/combat/footwork_01.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.Any;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = true;
		this.m.IsTargetingActor = false;
		this.m.IsVisibleTileNeeded = false;
		this.m.IsStacking = false;
		this.m.IsAttack = false;
		this.m.IsIgnoredAsAOO = true;
		this.m.IsDisengagement = true;
		this.m.ActionPointCost = 0;
		this.m.FatigueCost = 0;
		this.m.MinRange = 1;
		this.m.MaxRange = 1;
		this.m.MaxLevelDifference = 1;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		
		tooltip.push({
			id = 3,
			type = "text",
			text = "Does not cost any Action Points or Fatigue"
		});

		if (this.getContainer().getActor().getCurrentProperties().IsRooted)
		{
			tooltip.push({
				id = 9,
				type = "text",
				icon = "ui/tooltips/warning.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]Can not be used while rooted[/color]"
			});
		}

		return tooltip;
	}
	
	function tileHasAdjacentEnemy(_tile)
	{
		for( local i = 0; i < 6; i++ )
		{
			if (_tile.hasNextTile(i))
			{
				local nextTile = _tile.getNextTile(i);

				if (nextTile.IsOccupiedByActor)
				{
					local entity = nextTile.getEntity();

					if (!entity.isAlliedWith(this.getContainer().getActor()))
					{
						return true;
					}
				}
			}
		}
		
		return false;
	}
	
	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_skill.isAttack())
		{
			return;
		}		
		
		local actor = this.getContainer().getActor();	
		local weapon = actor.getMainhandItem();		
		if (weapon == null || weapon.getCategories().find("Sword") == null)
		{
			return;
		}

		this.m.IsSpent = false;
	}

	function isUsable()
	{
		if (!this.m.IsSpent && this.skill.isUsable() && !this.getContainer().getActor().getCurrentProperties().IsRooted)
		{
			local myTile = this.getContainer().getActor().getTile();
			local hasAdjacentEnemy = false;
			local anAdjacentTileHasAdjacentEnemy = false;

			for( local i = 0; i < 6; i++ )
			{
				if (myTile.hasNextTile(i))
				{
					local nextTile = myTile.getNextTile(i);
					
					if (nextTile.IsEmpty && this.tileHasAdjacentEnemy(nextTile) && !(this.Math.abs(nextTile.Level - myTile.Level) > 1))
					{
						anAdjacentTileHasAdjacentEnemy = true;
					}

					if (nextTile.IsOccupiedByActor && !(this.Math.abs(nextTile.Level - myTile.Level) > 1))
					{
						local entity = nextTile.getEntity();

						if (!entity.getCurrentProperties().IsStunned && !entity.isAlliedWith(this.getContainer().getActor()))
						{
							hasAdjacentEnemy = true;
						}
					}
				}
			}
			
			if (hasAdjacentEnemy && anAdjacentTileHasAdjacentEnemy)
			{
				return true;
			}
		}
		else
		{
			return false;
		}
	}

	function onVerifyTarget( _originTile, _targetTile )
	{
		if (!this.skill.onVerifyTarget(_originTile, _targetTile))
		{
			return false;
		}

		if (!_targetTile.IsEmpty)
		{
			return false;
		}
		
		if (this.tileHasAdjacentEnemy(_targetTile))
		{
			return true;
		}

		return false;
	}

	function onUse( _user, _targetTile )
	{
		this.Tactical.getNavigator().teleport(_user, _targetTile, null, null, false);
		this.m.IsSpent = true;
		return true;
	}
	
	function onTurnStart()
	{
		this.m.IsSpent = false;
	}
	
	function onCombatStarted()
	{
		this.m.IsSpent = false;
	}
	
	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.IsSpent = false;
	}

});

