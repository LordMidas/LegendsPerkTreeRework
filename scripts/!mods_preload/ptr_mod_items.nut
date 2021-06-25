local gt = this.getroottable();

gt.Const.PTR.modItems <- function()
{
	::mods_hookNewObject("items/misc/potion_of_oblivion_item", function(o) {
		local onUse = o.onUse;
		o.onUse = function(_actor, _item = null)
		{
			this.Sound.play("sounds/combat/drink_03.wav", this.Const.Sound.Volume.Inventory);

			_actor.resetPerks();

			this.Const.Tactical.Common.checkDrugEffect(_actor);
			this.updateAchievement("MemoryLoss", 1, 1);
			return true;
		}
	});
}
