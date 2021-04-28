local gt = this.getroottable();

local id = gt.Const.AI.Behavior.ID.COUNT;

gt.Const.AI.Behavior.ID.KataStep <- id;
gt.Const.AI.Behavior.Name.push("KataStep");

id++;

gt.Const.AI.Behavior.ID.COUNT = id;

gt.Const.AI.Behavior.Order.KataStep <- this.Const.AI.Behavior.Order.Adrenaline;
gt.Const.AI.Behavior.Score.KataStep <- this.Const.AI.Behavior.Score.Attack;
