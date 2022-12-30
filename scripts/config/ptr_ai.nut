local id = ::Const.AI.Behavior.ID.COUNT;

::Const.AI.Behavior.ID.PTRKataStep <- id;
::Const.AI.Behavior.Name.push("PTR.KataStep");
id++;
::Const.AI.Behavior.ID.PTRArrowToTheKnee <- id;
::Const.AI.Behavior.Name.push("PTR.ArrowToTheKnee");
id++;
::Const.AI.Behavior.ID.PTRFollowUp <- id;
::Const.AI.Behavior.Name.push("PTR.FollowUp");
id++;
::Const.AI.Behavior.ID.LegendHoldTheLine <- id;
::Const.AI.Behavior.Name.push("Legend.HoldTheLine");
id++;
::Const.AI.Behavior.ID.LegendPushForward <- id;
::Const.AI.Behavior.Name.push("Legend.PushForward");
id++;
::Const.AI.Behavior.ID.STRCoverAlly <- id;
::Const.AI.Behavior.Name.push("STR.CoverAlly");
id++;
::Const.AI.Behavior.ID.PTRBlitzkrieg <- id;
::Const.AI.Behavior.Name.push("PTR.Blitzkrieg");
id++;

::Const.AI.Behavior.ID.COUNT = id;

::Const.AI.Behavior.Order.PTRKataStep <- this.Const.AI.Behavior.Order.Adrenaline;
::Const.AI.Behavior.Score.PTRKataStep <- this.Const.AI.Behavior.Score.Attack;

::Const.AI.Behavior.Order.PTRArrowToTheKnee <- this.Const.AI.Behavior.Order.Distract;
::Const.AI.Behavior.Score.PTRArrowToTheKnee <- 625;

::Const.AI.Behavior.Order.PTRFollowUp <- this.Const.AI.Behavior.Order.AttackDefault;
::Const.AI.Behavior.Score.PTRFollowUp <- 1;

::Const.AI.Behavior.Order.LegendHoldTheLine <- this.Const.AI.Behavior.Order.BoostMorale;
::Const.AI.Behavior.Score.LegendHoldTheLine <- this.Const.AI.Behavior.Score.BoostMorale;

::Const.AI.Behavior.Order.LegendPushForward <- this.Const.AI.Behavior.Order.BoostMorale;
::Const.AI.Behavior.Score.LegendPushForward <- this.Const.AI.Behavior.Score.BoostMorale;

::Const.AI.Behavior.Order.STRCoverAlly <- this.Const.AI.Behavior.Order.Adrenaline;
::Const.AI.Behavior.Score.STRCoverAlly <- 60;

::Const.AI.Behavior.Order.PTRBlitzkrieg <- this.Const.AI.Behavior.Order.Rally;
::Const.AI.Behavior.Score.PTRBlitzkrieg <- this.Const.AI.Behavior.Score.Rally;
