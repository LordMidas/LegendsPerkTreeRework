this.perk_ptr_skirmisher <- this.inherit("scripts/skills/skill", {
	m = {
		AttacksRemaining = 2
		TurnCount = 0,
		ActionPointCostsBackup = null,
		FatigueCostsBackup = null,
		LevelActionPointCostBackup = null
	},
	function create()
	{
		this.m.ID = "perk.ptr_skirmisher";
		this.m.Name = this.Const.Strings.PerkName.PTRSkirmisher;
		this.m.Description = "This character is skilled at using the early stages of the battle to quickly throw deadly weapons at %their% enemies."
		this.m.Icon = "ui/perks/ptr_skirmisher.png";
		this.m.IconMini = "ptr_skirmisher_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return !this.isEnabled();
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/action_points.png",
			text = "The next [color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.AttacksRemaining + "[/color] Throwing attacks have their Action Point costs [color=" + this.Const.UI.Color.NegativeValue + "]halved[/color]"
		});

		if (this.m.TurnCount == 1)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "The Action Point and Fatigue costs of movement during your first turn are as if you have the Pathfinder perk"
			});
		}
		
		return tooltip;
	}

	function isEnabled()
	{
		if (this.m.AttacksRemaining == 0 || !this.getContainer().getActor().isPlacedOnMap())
		{
			return false;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Throwing))
		{
			return false;
		}

		return true;
	}

	function onTurnStart()
	{
		this.m.TurnCount++;

		local actor = this.getContainer().getActor();

		if (this.m.TurnCount == 1)
		{
			this.m.ActionPointCostsBackup = clone actor.m.ActionPointCosts;
			this.m.FatigueCostsBackup = clone actor.m.FatigueCosts;
			this.m.LevelActionPointCostBackup = actor.m.LevelActionPointCost;

			actor.m.ActionPointCosts = clone this.Const.PathfinderMovementAPCost;
			actor.m.FatigueCosts = clone this.Const.PathfinderMovementFatigueCost;
			actor.m.LevelActionPointCost = 0;
		}
		else
		{
			actor.m.ActionPointCosts = clone this.m.ActionPointCostsBackup;
			actor.m.FatigueCosts = clone this.m.FatigueCostsBackup;
			actor.m.LevelActionPointCost = this.m.LevelActionPointCostBackup;
		}
	}

	function onAfterUpdate( _properties )
	{
		if (this.isEnabled())
		{
			local attacks = this.getContainer().getSkillsByFunction(this, @(_skill) _skill.isAttack() && _skill.m.IsWeaponSkill)
			foreach (a in attacks)
			{
				a.m.ActionPointCost /= 2;
			}
		}
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity )
	{
		if (this.isEnabled() && _skill.isAttack() && _skill.m.IsWeaponSkill)
		{
			this.m.AttacksRemaining--;
		}
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.AttacksRemaining = 2;
		this.m.TurnCount = 0;
		this.m.ActionPointCostsBackup = null;
		this.m.FatigueCostsBackup = null;
		this.m.LevelActionPointCostBackup = null;
	}
});
