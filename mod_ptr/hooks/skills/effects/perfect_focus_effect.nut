::mods_hookExactClass("skills/effects/perfect_focus_effect", function(o) {
	o.m.StartingAPFraction <- 1;
	o.m.SkillsUsedCount <- 0;
	o.m.MalusPerCount <- 10;
	o.m.IsSpent <- false;

	local create = o.create;
	o.create = function()
	{
		this.m.Description = "This character has achieved perfect focus as if time itself were to stand still, gaining additional Action Points for this turn.";
	}

	o.getTooltip <- function()
	{
		local tooltip = this.skill.getTooltip();
		if (this.m.SkillsUsedCount > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]+" + this.getMalus() + "%[/color] Fatigue built"
			});
		}

		if (this.m.IsSpent)
		{
			tooltip.extend([
				{
					id = 10,
					type = "text",
					icon = "ui/icons/warning.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]This character has lost focus due to switching to a ranged weapon[/color]"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Action Point and Fatigue costs of movement are greatly increased"
				}
			]);
		}
		else
		{
			tooltip.extend([
				{
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Cannot move from this position"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Immune to being knocked back, grabbed, or swallowed"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/warning.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]Will be lost upon switching to a ranged weapon[/color]"
				}
			]);
		}

		return tooltip;
	}

	o.onAdded <- function()
	{
		local actor = this.getContainer().getActor();
		actor.setActionPoints(this.Math.min(18, actor.getActionPoints() * 2));
	}

	o.onUpdate = function (_properties)
	{
		if (this.m.IsSpent)
		{
			_properties.MovementAPCostAdditional += 99;
			_properties.MovementFatigueCostAdditional += 99;
			return;
		}

		local actor  = this.getContainer().getActor();
		if (actor.isArmedWithRangedWeapon())
		{
			actor.setActionPoints(actor.getActionPoints() / 2);
			this.m.IsSpent = true;
			return;
		}
		else
		{
			_properties.IsRooted = true;
			_properties.IsImmuneToKnockBackAndGrab = true;
			_properties.ActionPointsMult = 2.0;
		}
	}

	o.onRemoved <- function()
	{
		this.getContainer().add(this.new("scripts/skills/effects/ptr_exhausted_effect"));
	}

	o.onAnySkillExecuted <- function(_skill, _targetTile, _targetEntity, _forFree)
	{
		if (this.Tactical.TurnSequenceBar.getActiveEntity() != null && this.Tactical.TurnSequenceBar.getActiveEntity().getID() == this.getContainer().getActor().getID())
		{
			this.m.SkillsUsedCount++;
		}
	}

	o.getMalus <- function()
	{
		return this.m.SkillsUsedCount * this.m.MalusPerCount;
	}

	o.onAnySkillUsed <- function( _skill, _targetEntity, _properties )
	{
		local malus = this.getMalus() * 0.01;
		_properties.FatigueEffectMult *= 1.0 + malus;
	}
});
