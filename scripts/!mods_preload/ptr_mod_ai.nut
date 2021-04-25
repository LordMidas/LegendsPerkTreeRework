local gt = this.getroottable();

gt.Const.PTR.hookAI <- function()
{
	local maxID  = gt.Const.AI.Behavior.ID.COUNT;
	gt.Const.AI.Behavior.ID.KataStep <- maxID;
	gt.Const.AI.Behavior.ID.COUNT = maxID + 1;
	gt.Const.AI.Behavior.Order.KataStep <- 25;
	gt.Const.AI.Behavior.Score.KataStep <- 9000;
}
