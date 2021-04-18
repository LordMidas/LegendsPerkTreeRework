local gt = this.getroottable();

gt.Const.PTR.hookCharacterBackgrounds <- function()
{
	::mods_hookNewObject("skills/backgrounds/farmhand_background", function(o) {			
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [				
			],
			WeightMultipliers = [
				{Multiplier = 1000, Tree = this.Const.Perks.FarmerTree}			
			]
		};
	});
}