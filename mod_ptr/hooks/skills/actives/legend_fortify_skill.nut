::mods_hookExactClass("skills/actives/legend_fortify_skill", function(o) {
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
});
