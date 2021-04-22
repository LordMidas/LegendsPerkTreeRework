local gt = this.getroottable();

gt.Const.PTR.hookAI <- function()
{
	local maxID = 0;
	foreach (id in gt.Const.AI.Behavior.ID)
	{
		if (id > maxID)
		{
			maxID = id;
		}
	}
	gt.Const.AI.Behavior.ID.KataStep <- maxID;
	gt.Const.AI.Behavior.ID.COUNT = maxID + 1;
	gt.Const.AI.Behavior.Order.KataStep <- 25;
	gt.Const.AI.Behavior.Score.KataStep <- 350;

	::mods_hookBaseClass("skills/skill", function(o) {
		// while (!("getContainer" in o.m))
		// {
			// o = o[o.SuperName];
		// }

		//local oldgetHitFactors = o.getHitFactors;
		//o.getHitFactors = function( _targetTile )
		local oldgetHitFactors = ::mods_getMember(o, "getHitFactors");
		::mods_override(o, "getHitFactors", function(_targetTile)
		{
			local ret = oldgetHitFactors(_targetTile);

			//local user = this.m.Container.getActor();
			//local myTile = user.getTile();
			local targetEntity = _targetTile.IsOccupiedByActor ? _targetTile.getEntity() : null;

			if (targetEntity != null && !targetEntity.isArmedWithShield() && this.getContainer().hasSkill("perk.ptr_pointy_end") && this.isAttack() && !this.isRanged() && this.hasPiercingDamage())
			{
				ret.push({
					icon = "ui/tooltips/positive.png",
					text = "Pointy End"
				});
			}

			if (targetEntity != null && targetEntity.isArmedWithRangedWeapon() && this.getContainer().hasSkill("perk.ptr_ranged_supremacy") && this.isAttack() && this.isRanged())
			{
				ret.push({
					icon = "ui/tooltips/positive.png",
					text = "Ranged Supremacy"
				});
			}

			return ret;
		});
	});
}
