::mods_hookExactClass("skills/actives/shieldwall", function(o) {
	local getTooltip = o.getTooltip;
	o.getTooltip = function()
	{
		local tooltip = getTooltip();
		tooltip.push(
			{
				id = 6,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Grants immunity to stun, but is removed upon receiving a stunning blow"
			}
		);

		return tooltip;
	}

	o.onAfterUpdate <- function( _properties )
	{
		if (!::Tactical.isActive()) return;
		local actor = this.getContainer().getActor();
		if (actor.isPlacedOnMap())
		{
			local adjacentAllies = ::Tactical.Entities.getFactionActors(actor.getFaction(), actor.getTile(), 2)
			foreach (ally in adjacentAllies)
			{
				if (ally.getID() == actor.getID()) continue;

				if (ally.getSkills().hasSkill("perk.legend_shields_up"))
				{
					this.m.ActionPointCost = this.Math.max(this.m.ActionPointCost * 0.5, 2);
					this.m.FatigueCostMult *= 0.5;
					return;
				}
			}
		}
	}

	o.onTurnStart <- function()
	{
		local actor = this.getContainer().getActor();
		if (actor.getCurrentProperties().IsStunned || actor.getMoraleState() == this.Const.MoraleState.Fleeing || this.getContainer().hasSkill("effects.shieldwall"))
		{
			return;
		}

		local hasPerk = this.getContainer().hasSkill("perk.legend_shields_up");
		local adjacentAllies = ::Tactical.Entities.getFactionActors(actor.getFaction(), actor.getTile(), 1);
		foreach (ally in adjacentAllies)
		{
			if (ally.getID() == actor.getID()) continue;

			if (this.Math.abs(ally.getTile().Level - actor.getTile().Level) <= 1 && ally.getSkills().hasSkill("actives.shieldwall") && (hasPerk || ally.getSkills().hasSkill("perk.legend_shields_up")))
			{
				this.getContainer().add(this.new("scripts/skills/effects/shieldwall_effect"));					
				this.Sound.play(this.m.SoundOnUse[this.Math.rand(0, this.m.SoundOnUse.len() - 1)], this.Const.Sound.Volume.Skill * this.m.SoundVolume, actor.getPos());
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + " uses Shieldwall due to " + this.Const.UI.getColorizedEntityName(hasPerk ? actor : ally) + "\'s Shields Up perk");
				return;
			}
		}
	}

	o.onTurnEnd <- function()
	{
		local actor = this.getContainer().getActor();
		if (actor.getCurrentProperties().IsStunned || actor.getMoraleState() == this.Const.MoraleState.Fleeing || this.getContainer().hasSkill("effects.shieldwall"))
		{
			return;
		}
		
		local hasPerk = this.getContainer().hasSkill("perk.legend_shields_up");
		local adjacentAllies = ::Tactical.Entities.getFactionActors(actor.getFaction(), actor.getTile(), 1);
		foreach (ally in adjacentAllies)
		{
			if (ally.getID() == actor.getID()) continue;

			if (this.Math.abs(ally.getTile().Level - actor.getTile().Level) <= 1 && ally.getSkills().hasSkill("actives.shieldwall") && (hasPerk || ally.getSkills().hasSkill("perk.legend_shields_up")))
			{
				this.getContainer().add(this.new("scripts/skills/effects/shieldwall_effect"));					
				this.Sound.play(this.m.SoundOnUse[this.Math.rand(0, this.m.SoundOnUse.len() - 1)], this.Const.Sound.Volume.Skill * this.m.SoundVolume, actor.getPos());
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + " uses Shieldwall due to " + this.Const.UI.getColorizedEntityName(hasPerk ? actor : ally) + "\'s Shields Up perk");
				return;
			}
		}
	}
});
