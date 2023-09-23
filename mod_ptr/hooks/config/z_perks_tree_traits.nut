::Const.Perks.TraitsTrees.getBaseAttributes = function()
{
	return {
		Hitpoints = [
			-1,
			-1
		],
		Bravery = [
			-1,
			-1
		],
		Stamina = [
			-1,
			-1
		],
		MeleeSkill = [
			-1,
			-1
		],
		RangedSkill = [
			-1,
			-1
		],
		MeleeDefense = [
			-1,
			-1
		],
		RangedDefense = [
			-1,
			-1
		],
		Initiative = [
			-1,
			-1
		]
	};
}

// ::Const.Perks.AgileTree.PerkGroupMultipliers <- [
// 	[1.5, ::Const.Perks.FastTree]
// ];

::Const.Perks.AgileTree.Descriptions = [
	"is agile",
	"moves with grace and agility",
	"is naturally agile",
	"is impressively agile",
	"has an agile physique",
	"is agile like a fox",
	"is particularly agile"
],
::Const.Perks.AgileTree.Tree = array(7);
::Const.Perks.AgileTree.Tree[0] = [::Const.Perks.PerkDefs.Pathfinder];
::Const.Perks.AgileTree.Tree[1] = [::Const.Perks.PerkDefs.Anticipation];
::Const.Perks.AgileTree.Tree[2] = [::Const.Perks.PerkDefs.Sprint];
::Const.Perks.AgileTree.Tree[3] = [::Const.Perks.PerkDefs.PTRDynamicDuo];
::Const.Perks.AgileTree.Tree[4] = [::Const.Perks.PerkDefs.Footwork];
::Const.Perks.AgileTree.Tree[5] = [::Const.Perks.PerkDefs.PTRFreshAndFurious];
::Const.Perks.AgileTree.Tree[6] = [::Const.Perks.PerkDefs.Rebound];


::Const.Perks.IndestructibleTree.Name = "Resilient";
::Const.Perks.IndestructibleTree.Descriptions = [
	"is unnaturally resilient",
	"is stubbornly resilient",
	"is staunchly resilient",
	"has a resilient will",
	"resiliently persists",
	"seems unwaveringly resilient",
	"is resilient beyond measure"
],

::Const.Perks.IndestructibleTree.Tree = array(7);
::Const.Perks.IndestructibleTree.Tree[0] = [::Const.Perks.PerkDefs.NineLives];
::Const.Perks.IndestructibleTree.Tree[1] = [::Const.Perks.PerkDefs.PTRSurvivalInstinct];
::Const.Perks.IndestructibleTree.Tree[2] = [::Const.Perks.PerkDefs.HoldOut];
::Const.Perks.IndestructibleTree.Tree[3] = [];
::Const.Perks.IndestructibleTree.Tree[4] = [::Const.Perks.PerkDefs.LegendSecondWind];
::Const.Perks.IndestructibleTree.Tree[5] = [];
::Const.Perks.IndestructibleTree.Tree[6] = [::Const.Perks.PerkDefs.LastStand];

::Const.Perks.ViciousTree.Descriptions = [
	"is vicious",
	"seems fiendishly vicious",
	"is ferociously vicious",
	"is brutal and vicious",
	"appears diabolically vicious",
	"is beastially vicious",
	"enjoys vicious butchery"
],

::Const.Perks.ViciousTree.Tree = array(7);
::Const.Perks.ViciousTree.Tree[0] = [::Const.Perks.PerkDefs.CripplingStrikes];
::Const.Perks.ViciousTree.Tree[1] = [::Const.Perks.PerkDefs.CoupDeGrace];
::Const.Perks.ViciousTree.Tree[2] = [::Const.Perks.PerkDefs.Debilitate];
::Const.Perks.ViciousTree.Tree[3] = [];
::Const.Perks.ViciousTree.Tree[4] = [::Const.Perks.PerkDefs.Berserk];
::Const.Perks.ViciousTree.Tree[5] = [::Const.Perks.PerkDefs.LegendAssuredConquest];
::Const.Perks.ViciousTree.Tree[6] = [::Const.Perks.PerkDefs.Fearsome];

::Const.Perks.DeviousTree.Descriptions = [
	"is devious",
	"strikes you as devious",
	"has a devious appearance",
	"is insincere and devious",
	"is devious and sneaky",
	"carries themselves deviously",
	"is shrewd and devious"
],

::Const.Perks.DeviousTree.Tree = array(7);
::Const.Perks.DeviousTree.Tree[0] = [::Const.Perks.PerkDefs.Pathfinder];
::Const.Perks.DeviousTree.Tree[1] = [::Const.Perks.PerkDefs.Backstabber];
::Const.Perks.DeviousTree.Tree[2] = [::Const.Perks.PerkDefs.LegendBlendIn];
::Const.Perks.DeviousTree.Tree[3] = [];
::Const.Perks.DeviousTree.Tree[4] = [::Const.Perks.PerkDefs.LegendEvasion];
::Const.Perks.DeviousTree.Tree[5] = [];
::Const.Perks.DeviousTree.Tree[6] = [::Const.Perks.PerkDefs.LegendUntouchable];

::Const.Perks.IntelligentTree.Name = "Talented";
::Const.Perks.IntelligentTree.Descriptions = [
	"is talented",
	"lives with talented ease",
	"has unparalleled talent",
	"is bright and talented",
	"is talented in many ways",
	"is talented beyond belief",
	"succeeds easily and with talent"
],

::Const.Perks.IntelligentTree.Tree = array(7);
::Const.Perks.IntelligentTree.Tree[0] = [::Const.Perks.PerkDefs.Student];
::Const.Perks.IntelligentTree.Tree[1] = [::Const.Perks.PerkDefs.Gifted];
::Const.Perks.IntelligentTree.Tree[2] = [];
::Const.Perks.IntelligentTree.Tree[3] = [::Const.Perks.PerkDefs.PTRDiscoveredTalent];
::Const.Perks.IntelligentTree.Tree[4] = [];
::Const.Perks.IntelligentTree.Tree[5] = [::Const.Perks.PerkDefs.PTRKnowTheirWeakness];
::Const.Perks.IntelligentTree.Tree[6] = [];

::Const.Perks.CalmTree.Descriptions = [
	"is calm",
	"breathes calmly",
	"projects peace and calm",
	"seems calm and unflustered",
	"calmly follows the flow",
	"is calm and unworried"
],

::Const.Perks.CalmTree.Tree = array(7);
::Const.Perks.CalmTree.Tree[0] = [::Const.Perks.PerkDefs.FastAdaption];
::Const.Perks.CalmTree.Tree[1] = [::Const.Perks.PerkDefs.LegendTrueBeliever];
::Const.Perks.CalmTree.Tree[2] = [::Const.Perks.PerkDefs.FortifiedMind];
::Const.Perks.CalmTree.Tree[3] = [::Const.Perks.PerkDefs.LegendPeaceful];
::Const.Perks.CalmTree.Tree[4] = [];
::Const.Perks.CalmTree.Tree[5] = [::Const.Perks.PerkDefs.LegendMindOverBody];
::Const.Perks.CalmTree.Tree[6] = [];

::Const.Perks.FastTree.Descriptions = [
	"is fast",
	"runs fast",
	"is fast like a flash",
	"has fast feet",
	"maneuvers fast",
	"has fast steps",
	"is a fast sprinter"
],

::Const.Perks.FastTree.Tree = array(7);
::Const.Perks.FastTree.Tree[0] = [::Const.Perks.PerkDefs.LegendAlert];
::Const.Perks.FastTree.Tree[1] = [::Const.Perks.PerkDefs.QuickHands];
::Const.Perks.FastTree.Tree[2] = [::Const.Perks.PerkDefs.Relentless];
::Const.Perks.FastTree.Tree[3] = [::Const.Perks.PerkDefs.PTRTheRushOfBattle];
::Const.Perks.FastTree.Tree[4] = [];
::Const.Perks.FastTree.Tree[5] = [::Const.Perks.PerkDefs.Overwhelm];
::Const.Perks.FastTree.Tree[6] = [::Const.Perks.PerkDefs.KillingFrenzy];

::Const.Perks.LargeTree.Descriptions = [
	"is large",
	"is large and hulking",
	"has impressively large shoulders",
	"is a large sort",
	"looms large above you",
	"is mountainously large",
	"has large musculature"
],

::Const.Perks.LargeTree.Tree = array(7);
::Const.Perks.LargeTree.Tree[0] = [::Const.Perks.PerkDefs.Colossus];
::Const.Perks.LargeTree.Tree[1] = [];
::Const.Perks.LargeTree.Tree[2] = [::Const.Perks.PerkDefs.Steadfast];
::Const.Perks.LargeTree.Tree[3] = [];
::Const.Perks.LargeTree.Tree[4] = [];
::Const.Perks.LargeTree.Tree[5] = [::Const.Perks.PerkDefs.SunderingStrikes];
::Const.Perks.LargeTree.Tree[6] = [::Const.Perks.PerkDefs.LegendMuscularity];

::Const.Perks.OrganisedTree.Descriptions = [
	"is organized",
	"coordinates activities with organization",
	"formulates organized plans",
	"Keeps supplies organized",
	"wants to organize your gear",
	"organized the supplies",
	"is fastidiously organized"
],

::Const.Perks.OrganisedTree.Tree = array(7);
::Const.Perks.OrganisedTree.Tree[0] = [::Const.Perks.PerkDefs.BagsAndBelts];
::Const.Perks.OrganisedTree.Tree[1] = [];
::Const.Perks.OrganisedTree.Tree[2] = [::Const.Perks.PerkDefs.LegendEfficientPacking];
::Const.Perks.OrganisedTree.Tree[3] = [];
::Const.Perks.OrganisedTree.Tree[4] = [::Const.Perks.PerkDefs.LegendSkillfulStacking];
::Const.Perks.OrganisedTree.Tree[5] = [::Const.Perks.PerkDefs.LegendPacifist];
::Const.Perks.OrganisedTree.Tree[6] = [];

::Const.Perks.SturdyTree.Descriptions = [
	"is sturdy",
	"is sturdily built",
	"looks strong and sturdy",
	"is stouthearted and sturdy",
	"is sturdy and robust",
	"seems sturdy",
	"is sturdy as a mountain"
],

::Const.Perks.SturdyTree.Tree = array(7);
::Const.Perks.SturdyTree.Tree[0] = [::Const.Perks.PerkDefs.Recover];
::Const.Perks.SturdyTree.Tree[1] = [::Const.Perks.PerkDefs.SteelBrow];
::Const.Perks.SturdyTree.Tree[2] = [::Const.Perks.PerkDefs.Taunt];
::Const.Perks.SturdyTree.Tree[3] = [];
::Const.Perks.SturdyTree.Tree[4] = [::Const.Perks.PerkDefs.ReturnFavor];
::Const.Perks.SturdyTree.Tree[5] = [::Const.Perks.PerkDefs.Vengeance];
::Const.Perks.SturdyTree.Tree[6] = [::Const.Perks.PerkDefs.Indomitable];

::Const.Perks.FitTree.Name = "Unstoppable";
::Const.Perks.FitTree.Descriptions = [
	"seems unstoppable",
	"lifts weights unstoppably",
	"seems unstoppably resolute",
	"acts unstoppable",
	"has unstoppable stamina",
	"is unstoppably strong"
],

::Const.Perks.FitTree.Tree = array(7);
::Const.Perks.FitTree.Tree[0] = [::Const.Perks.PerkDefs.Adrenaline];
::Const.Perks.FitTree.Tree[1] = [];
::Const.Perks.FitTree.Tree[2] = [];
::Const.Perks.FitTree.Tree[3] = [::Const.Perks.PerkDefs.PTRVigorousAssault];
::Const.Perks.FitTree.Tree[4] = [::Const.Perks.PerkDefs.LoneWolf];
::Const.Perks.FitTree.Tree[5] = [::Const.Perks.PerkDefs.PTRUnstoppable];
::Const.Perks.FitTree.Tree[6] = [::Const.Perks.PerkDefs.BattleFlow];

::Const.Perks.TrainedTree.SelfWeightMultiplier <- 0.75;
::Const.Perks.TrainedTree.Descriptions = [
	"is well trained",
	"has great training",
	"is drilled and trained",
	"has combat training",
	"has trained a great deal",
	"has been trained by someone skillful",
	"is trained and disciplined",
	"has genuine training"
],

::Const.Perks.TrainedTree.Tree = array(7);
::Const.Perks.TrainedTree.Tree[0] = [::Const.Perks.PerkDefs.LegendBackToBasics];
::Const.Perks.TrainedTree.Tree[1] = [];
::Const.Perks.TrainedTree.Tree[2] = [::Const.Perks.PerkDefs.Rotation];
::Const.Perks.TrainedTree.Tree[3] = [::Const.Perks.PerkDefs.PTRVigilant];
::Const.Perks.TrainedTree.Tree[4] = [::Const.Perks.PerkDefs.Underdog];
::Const.Perks.TrainedTree.Tree[5] = [::Const.Perks.PerkDefs.LegendClarity];
::Const.Perks.TrainedTree.Tree[6] = [::Const.Perks.PerkDefs.PerfectFocus];

::Const.Perks.ResilientTree <- ::Const.Perks.IndestructibleTree;
::Const.Perks.TalentedTree <- ::Const.Perks.IntelligentTree;
::Const.Perks.TalentedTree.SelfWeightMultiplier <- 0.25;
::Const.Perks.TalentedTree.SpecialPerkMultipliers <- [
	[2, ::Const.Perks.PerkDefs.PTRRisingStar]
];
::Const.Perks.UnstoppableTree <- ::Const.Perks.FitTree;

::Const.Perks.TraitsTrees.Tree = [
	::Const.Perks.AgileTree,
	::Const.Perks.ResilientTree,
	::Const.Perks.ViciousTree,
	::Const.Perks.DeviousTree,
	::Const.Perks.TalentedTree,
	::Const.Perks.CalmTree,
	::Const.Perks.FastTree,
	::Const.Perks.LargeTree,
	::Const.Perks.OrganisedTree,
	::Const.Perks.SturdyTree,
	::Const.Perks.UnstoppableTree,
	::Const.Perks.TrainedTree
];
