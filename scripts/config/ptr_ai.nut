local gt = this.getroottable();

local id = gt.Const.AI.Behavior.ID.COUNT;

gt.Const.AI.Behavior.ID.PTRKataStep <- id;
gt.Const.AI.Behavior.Name.push("PTR.KataStep");
id++;
gt.Const.AI.Behavior.ID.PTRArrowToTheKnee <- id;
gt.Const.AI.Behavior.Name.push("PTR.ArrowToTheKnee");
id++;
gt.Const.AI.Behavior.ID.PTRFollowUp <- id;
gt.Const.AI.Behavior.Name.push("PTR.FollowUp");
id++;

gt.Const.AI.Behavior.ID.COUNT = id;

gt.Const.AI.Behavior.Order.PTRKataStep <- this.Const.AI.Behavior.Order.Adrenaline;
gt.Const.AI.Behavior.Score.PTRKataStep <- this.Const.AI.Behavior.Score.Attack;

gt.Const.AI.Behavior.Order.PTRArrowToTheKnee <- this.Const.AI.Behavior.Order.Distract;
gt.Const.AI.Behavior.Score.PTRArrowToTheKnee <- 625;

gt.Const.AI.Behavior.Order.PTRFollowUp <- this.Const.AI.Behavior.Order.AttackDefault;
gt.Const.AI.Behavior.Score.PTRFollowUp <- 1;
