local gt = this.getroottable();

gt.Const.PTR.modItems <- function()
{
	::mods_hookNewObject("items/misc/potion_of_oblivion_item", function(o) {
		local onUse = o.onUse;
		o.onUse = function(_actor, _item = null)
		{
			local hasDiscoveredTalent = false;
			if (_actor.getSkills().hasSkill("perk.ptr_discovered_talent"))
			{
				hasDiscoveredTalent = true;
			}

			local hasRisingStar = false;
			if (_actor.getSkills().hasSkill("perk.ptr_rising_star"))
			{
				hasRisingStar = true;
			}

			onUse(_actor, _item);

			if (hasDiscoveredTalent)
			{
				_actor.m.PerkPoints -= 1;
				_actor.m.PerkPointsSpent += 1;
				local dtPerk = this.new("scripts/skills/perks/perk_ptr_discovered_talent");
				dtPerk.m.IsApplied = true;
				_actor.getSkills().add(dtPerk);
			}

			if (hasRisingStar)
			{
				_actor.m.PerkPoints -= 1;
				_actor.m.PerkPointsSpent += 1;
				_actor.getSkills().add(this.new("scripts/skills/perks/perk_ptr_rising_star"));
			}

			return true;
		}
	});
}
