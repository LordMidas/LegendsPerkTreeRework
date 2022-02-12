local gt = this.getroottable();

gt.Const.PTR.overwriteTree <- function(_tree, _newSetup, _weightMultipliers)
{
	local emptyArray = [];
	while (_tree.Tree.len() < 7)
	{
		_tree.Tree.push(emptyArray);
	}

	_tree.WeightMultipliers <- _weightMultipliers;
}

gt.Const.PTR.modLegendsEnemyTrees <- function()
{
	local emptyArray = [];

	# Beasts Tree
	while (this.Const.Perks.BeastsTree.Tree.len() < 7)
	{
		this.Const.Perks.BeastsTree.Tree.push(emptyArray);
	}
	this.Const.Perks.BeastsTree.WeightMultipliers <- [
		{Multiplier = 1.25, Tree = this.Const.Perks.SwordTree},
		{Multiplier = 1.25, Tree = this.Const.Perks.SpearTree},
	];
	this.Const.Perks.BeastsTree.Tree[0] = [];
	this.Const.Perks.BeastsTree.Tree[1] = [];
	this.Const.Perks.BeastsTree.Tree[2] = [];
	this.Const.Perks.BeastsTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyGhoul,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyDirewolf,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySpider,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyLindwurm
	];
	this.Const.Perks.BeastsTree.Tree[4] = [];
	this.Const.Perks.BeastsTree.Tree[5] = [];
	this.Const.Perks.BeastsTree.Tree[6] = [];

	# Ghoul Tree
	while (this.Const.Perks.GhoulTree.Tree.len() < 7)
	{
		this.Const.Perks.GhoulTree.Tree.push(emptyArray);
	}
	this.Const.Perks.GhoulTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.SwordTree}
	];
	this.Const.Perks.GhoulTree.Tree[0] = [];
	this.Const.Perks.GhoulTree.Tree[1] = [];
	this.Const.Perks.GhoulTree.Tree[2] = [];
	this.Const.Perks.GhoulTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyGhoul
	];
	this.Const.Perks.GhoulTree.Tree[4] = [];
	this.Const.Perks.GhoulTree.Tree[5] = [];
	this.Const.Perks.GhoulTree.Tree[6] = [];

	# DirewolfTree
	while (this.Const.Perks.DirewolfTree.Tree.len() < 7)
	{
		this.Const.Perks.DirewolfTree.Tree.push(emptyArray);
	}
	this.Const.Perks.DirewolfTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.SpearTree}
	];
	this.Const.Perks.DirewolfTree.Tree[0] = [];
	this.Const.Perks.DirewolfTree.Tree[1] = [];
	this.Const.Perks.DirewolfTree.Tree[2] = [];
	this.Const.Perks.DirewolfTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyDirewolf
	];
	this.Const.Perks.DirewolfTree.Tree[4] = [];
	this.Const.Perks.DirewolfTree.Tree[5] = [];
	this.Const.Perks.DirewolfTree.Tree[6] = [];

	# SpiderTree
	while (this.Const.Perks.SpiderTree.Tree.len() < 7)
	{
		this.Const.Perks.SpiderTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SpiderTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.SpearTree}
	];
	this.Const.Perks.SpiderTree.Tree[0] = [];
	this.Const.Perks.SpiderTree.Tree[1] = [];
	this.Const.Perks.SpiderTree.Tree[2] = [];
	this.Const.Perks.SpiderTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySpider
	];
	this.Const.Perks.SpiderTree.Tree[4] = [];
	this.Const.Perks.SpiderTree.Tree[5] = [];
	this.Const.Perks.SpiderTree.Tree[6] = [];

	# LindwurmTree
	while (this.Const.Perks.LindwurmTree.Tree.len() < 7)
	{
		this.Const.Perks.LindwurmTree.Tree.push(emptyArray);
	}
	this.Const.Perks.LindwurmTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.PolearmTree}
	];
	this.Const.Perks.LindwurmTree.Tree[0] = [];
	this.Const.Perks.LindwurmTree.Tree[1] = [];
	this.Const.Perks.LindwurmTree.Tree[2] = [];
	this.Const.Perks.LindwurmTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyLindwurm
	];
	this.Const.Perks.LindwurmTree.Tree[4] = [];
	this.Const.Perks.LindwurmTree.Tree[5] = [];
	this.Const.Perks.LindwurmTree.Tree[6] = [];

	# MysticTree
	while (this.Const.Perks.MysticTree.Tree.len() < 7)
	{
		this.Const.Perks.MysticTree.Tree.push(emptyArray);
	}
	this.Const.Perks.MysticTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.TalentedTree}
	];
	this.Const.Perks.MysticTree.Tree[0] = [];
	this.Const.Perks.MysticTree.Tree[1] = [];
	this.Const.Perks.MysticTree.Tree[2] = [];
	this.Const.Perks.MysticTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySchrat,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyHexen,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyAlps
	];
	this.Const.Perks.MysticTree.Tree[4] = [];
	this.Const.Perks.MysticTree.Tree[5] = [];
	this.Const.Perks.MysticTree.Tree[6] = [];

	# SchratTree
	while (this.Const.Perks.SchratTree.Tree.len() < 7)
	{
		this.Const.Perks.SchratTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SchratTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.AxeTree}
	];
	this.Const.Perks.SchratTree.Tree[0] = [];
	this.Const.Perks.SchratTree.Tree[1] = [];
	this.Const.Perks.SchratTree.Tree[2] = [];
	this.Const.Perks.SchratTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySchrat
	];
	this.Const.Perks.SchratTree.Tree[4] = [];
	this.Const.Perks.SchratTree.Tree[5] = [];
	this.Const.Perks.SchratTree.Tree[6] = [];

	# HexenTree
	while (this.Const.Perks.HexenTree.Tree.len() < 7)
	{
		this.Const.Perks.HexenTree.Tree.push(emptyArray);
	}
	this.Const.Perks.HexenTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.CalmTree}
	];
	this.Const.Perks.HexenTree.Tree[0] = [];
	this.Const.Perks.HexenTree.Tree[1] = [];
	this.Const.Perks.HexenTree.Tree[2] = [];
	this.Const.Perks.HexenTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyHexen
	];
	this.Const.Perks.HexenTree.Tree[4] = [];
	this.Const.Perks.HexenTree.Tree[5] = [];
	this.Const.Perks.HexenTree.Tree[6] = [];

	# AlpTree
	while (this.Const.Perks.AlpTree.Tree.len() < 7)
	{
		this.Const.Perks.AlpTree.Tree.push(emptyArray);
	}
	this.Const.Perks.AlpTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.HoundmasterClassTree}
	];
	this.Const.Perks.AlpTree.Tree[0] = [];
	this.Const.Perks.AlpTree.Tree[1] = [];
	this.Const.Perks.AlpTree.Tree[2] = [];
	this.Const.Perks.AlpTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyAlps
	];
	this.Const.Perks.AlpTree.Tree[4] = [];
	this.Const.Perks.AlpTree.Tree[5] = [];
	this.Const.Perks.AlpTree.Tree[6] = [];

	# UndeadTree
	while (this.Const.Perks.UndeadTree.Tree.len() < 7)
	{
		this.Const.Perks.UndeadTree.Tree.push(emptyArray);
	}
	this.Const.Perks.UndeadTree.WeightMultipliers <- [
		{Multiplier = 1.25, Tree = this.Const.Perks.MaceTree},
		{Multiplier = 1.25, Tree = this.Const.Perks.CleaverTree},
	];
	this.Const.Perks.UndeadTree.Tree[0] = [];
	this.Const.Perks.UndeadTree.Tree[1] = [];
	this.Const.Perks.UndeadTree.Tree[2] = [];
	this.Const.Perks.UndeadTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySkeleton,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyZombie,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyVampire
	];
	this.Const.Perks.UndeadTree.Tree[4] = [];
	this.Const.Perks.UndeadTree.Tree[5] = [];
	this.Const.Perks.UndeadTree.Tree[6] = [];

	# SkeletonTree
	while (this.Const.Perks.SkeletonTree.Tree.len() < 7)
	{
		this.Const.Perks.SkeletonTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SkeletonTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.MaceTree}
	];
	this.Const.Perks.SkeletonTree.Tree[0] = [];
	this.Const.Perks.SkeletonTree.Tree[1] = [];
	this.Const.Perks.SkeletonTree.Tree[2] = [];
	this.Const.Perks.SkeletonTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySkeleton
	];
	this.Const.Perks.SkeletonTree.Tree[4] = [];
	this.Const.Perks.SkeletonTree.Tree[5] = [];
	this.Const.Perks.SkeletonTree.Tree[6] = [];

	# ZombieTree
	while (this.Const.Perks.ZombieTree.Tree.len() < 7)
	{
		this.Const.Perks.ZombieTree.Tree.push(emptyArray);
	}
	this.Const.Perks.ZombieTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.CleaverTree}
	];
	this.Const.Perks.ZombieTree.Tree[0] = [];
	this.Const.Perks.ZombieTree.Tree[1] = [];
	this.Const.Perks.ZombieTree.Tree[2] = [];
	this.Const.Perks.ZombieTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyZombie
	];
	this.Const.Perks.ZombieTree.Tree[4] = [];
	this.Const.Perks.ZombieTree.Tree[5] = [];
	this.Const.Perks.ZombieTree.Tree[6] = [];

	# VampireTree
	while (this.Const.Perks.VampireTree.Tree.len() < 7)
	{
		this.Const.Perks.VampireTree.Tree.push(emptyArray);
	}
	this.Const.Perks.VampireTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.TrapperClassTree}
	];
	this.Const.Perks.VampireTree.Tree[0] = [];
	this.Const.Perks.VampireTree.Tree[1] = [];
	this.Const.Perks.VampireTree.Tree[2] = [];
	this.Const.Perks.VampireTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyVampire
	];
	this.Const.Perks.VampireTree.Tree[4] = [];
	this.Const.Perks.VampireTree.Tree[5] = [];
	this.Const.Perks.VampireTree.Tree[6] = [];

	# OrcsTree
	while (this.Const.Perks.OrcsTree.Tree.len() < 7)
	{
		this.Const.Perks.OrcsTree.Tree.push(emptyArray);
	}
	this.Const.Perks.OrcsTree.WeightMultipliers <- [
		{Multiplier = 1.25, Tree = this.Const.Perks.AgileTree},
		{Multiplier = 1.25, Tree = this.Const.Perks.SturdyTree}
	];
	this.Const.Perks.OrcsTree.Tree[0] = [];
	this.Const.Perks.OrcsTree.Tree[1] = [];
	this.Const.Perks.OrcsTree.Tree[2] = [];
	this.Const.Perks.OrcsTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyOrk,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyGoblin,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyUnhold
	];
	this.Const.Perks.OrcsTree.Tree[4] = [];
	this.Const.Perks.OrcsTree.Tree[5] = [];
	this.Const.Perks.OrcsTree.Tree[6] = [];

	# OrcTree
	while (this.Const.Perks.OrcTree.Tree.len() < 7)
	{
		this.Const.Perks.OrcTree.Tree.push(emptyArray);
	}
	this.Const.Perks.OrcTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.HammerTree}
	];
	this.Const.Perks.OrcTree.Tree[0] = [];
	this.Const.Perks.OrcTree.Tree[1] = [];
	this.Const.Perks.OrcTree.Tree[2] = [];
	this.Const.Perks.OrcTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyOrk
	];
	this.Const.Perks.OrcTree.Tree[4] = [];
	this.Const.Perks.OrcTree.Tree[5] = [];
	this.Const.Perks.OrcTree.Tree[6] = [];

	# GoblinTree
	while (this.Const.Perks.GoblinTree.Tree.len() < 7)
	{
		this.Const.Perks.GoblinTree.Tree.push(emptyArray);
	}
	this.Const.Perks.GoblinTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.AgileTree}
	];
	this.Const.Perks.GoblinTree.Tree[0] = [];
	this.Const.Perks.GoblinTree.Tree[1] = [];
	this.Const.Perks.GoblinTree.Tree[2] = [];
	this.Const.Perks.GoblinTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyGoblin
	];
	this.Const.Perks.GoblinTree.Tree[4] = [];
	this.Const.Perks.GoblinTree.Tree[5] = [];
	this.Const.Perks.GoblinTree.Tree[6] = [];

	# UnholdTree
	while (this.Const.Perks.UnholdTree.Tree.len() < 7)
	{
		this.Const.Perks.UnholdTree.Tree.push(emptyArray);
	}
	this.Const.Perks.UnholdTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree}
	];
	this.Const.Perks.UnholdTree.Tree[0] = [];
	this.Const.Perks.UnholdTree.Tree[1] = [];
	this.Const.Perks.UnholdTree.Tree[2] = [];
	this.Const.Perks.UnholdTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyUnhold
	];
	this.Const.Perks.UnholdTree.Tree[4] = [];
	this.Const.Perks.UnholdTree.Tree[5] = [];
	this.Const.Perks.UnholdTree.Tree[6] = [];

	# CivilizationTree
	while (this.Const.Perks.CivilizationTree.Tree.len() < 7)
	{
		this.Const.Perks.CivilizationTree.Tree.push(emptyArray);
	}
	this.Const.Perks.CivilizationTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.TrainedTree}
	];
	this.Const.Perks.CivilizationTree.Tree[0] = [];
	this.Const.Perks.CivilizationTree.Tree[1] = [];
	this.Const.Perks.CivilizationTree.Tree[2] = [];
	this.Const.Perks.CivilizationTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyMercenary,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySoutherner
	];
	this.Const.Perks.CivilizationTree.Tree[4] = [];
	this.Const.Perks.CivilizationTree.Tree[5] = [];
	this.Const.Perks.CivilizationTree.Tree[6] = [];

	# CaravanTree
	while (this.Const.Perks.CaravanTree.Tree.len() < 7)
	{
		this.Const.Perks.CaravanTree.Tree.push(emptyArray);
	}
	this.Const.Perks.CaravanTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.UnstoppableTree}
	];
	this.Const.Perks.CaravanTree.Tree[0] = [];
	this.Const.Perks.CaravanTree.Tree[1] = [];
	this.Const.Perks.CaravanTree.Tree[2] = [];
	this.Const.Perks.CaravanTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan
	];
	this.Const.Perks.CaravanTree.Tree[4] = [];
	this.Const.Perks.CaravanTree.Tree[5] = [];
	this.Const.Perks.CaravanTree.Tree[6] = [];

	# MercenaryTree
	while (this.Const.Perks.MercenaryTree.Tree.len() < 7)
	{
		this.Const.Perks.MercenaryTree.Tree.push(emptyArray);
	}
	this.Const.Perks.MercenaryTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.TrainedTree}
	];
	this.Const.Perks.MercenaryTree.Tree[0] = [];
	this.Const.Perks.MercenaryTree.Tree[1] = [];
	this.Const.Perks.MercenaryTree.Tree[2] = [];
	this.Const.Perks.MercenaryTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyMercenary
	];
	this.Const.Perks.MercenaryTree.Tree[4] = [];
	this.Const.Perks.MercenaryTree.Tree[5] = [];
	this.Const.Perks.MercenaryTree.Tree[6] = [];

	# NoblesTree
	while (this.Const.Perks.NoblesTree.Tree.len() < 7)
	{
		this.Const.Perks.NoblesTree.Tree.push(emptyArray);
	}
	this.Const.Perks.NoblesTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.TrainedTree}
	];
	this.Const.Perks.NoblesTree.Tree[0] = [];
	this.Const.Perks.NoblesTree.Tree[1] = [];
	this.Const.Perks.NoblesTree.Tree[2] = [];
	this.Const.Perks.NoblesTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyNoble
	];
	this.Const.Perks.NoblesTree.Tree[4] = [];
	this.Const.Perks.NoblesTree.Tree[5] = [];
	this.Const.Perks.NoblesTree.Tree[6] = [];

	# SouthernersTree
	while (this.Const.Perks.SouthernersTree.Tree.len() < 7)
	{
		this.Const.Perks.SouthernersTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SouthernersTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.TrainedTree}
	];
	this.Const.Perks.SouthernersTree.Tree[0] = [];
	this.Const.Perks.SouthernersTree.Tree[1] = [];
	this.Const.Perks.SouthernersTree.Tree[2] = [];
	this.Const.Perks.SouthernersTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySoutherner
	];
	this.Const.Perks.SouthernersTree.Tree[4] = [];
	this.Const.Perks.SouthernersTree.Tree[5] = [];
	this.Const.Perks.SouthernersTree.Tree[6] = [];

	# OutlandersTree
	while (this.Const.Perks.OutlandersTree.Tree.len() < 7)
	{
		this.Const.Perks.OutlandersTree.Tree.push(emptyArray);
	}
	this.Const.Perks.OutlandersTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.FlailTree},
		{Multiplier = 1.5, Tree = this.Const.Perks.ViciousTree}
	];
	this.Const.Perks.OutlandersTree.Tree[0] = [];
	this.Const.Perks.OutlandersTree.Tree[1] = [];
	this.Const.Perks.OutlandersTree.Tree[2] = [];
	this.Const.Perks.OutlandersTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyBandit,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyNomad,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyBarbarian
	];
	this.Const.Perks.OutlandersTree.Tree[4] = [];
	this.Const.Perks.OutlandersTree.Tree[5] = [];
	this.Const.Perks.OutlandersTree.Tree[6] = [];

	# BanditTree
	while (this.Const.Perks.BanditTree.Tree.len() < 7)
	{
		this.Const.Perks.BanditTree.Tree.push(emptyArray);
	}
	this.Const.Perks.BanditTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.FlailTree}
	];
	this.Const.Perks.BanditTree.Tree[0] = [];
	this.Const.Perks.BanditTree.Tree[1] = [];
	this.Const.Perks.BanditTree.Tree[2] = [];
	this.Const.Perks.BanditTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyBandit
	];
	this.Const.Perks.BanditTree.Tree[4] = [];
	this.Const.Perks.BanditTree.Tree[5] = [];
	this.Const.Perks.BanditTree.Tree[6] = [];

	# NomadsTree
	while (this.Const.Perks.NomadsTree.Tree.len() < 7)
	{
		this.Const.Perks.NomadsTree.Tree.push(emptyArray);
	}
	this.Const.Perks.NomadsTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.FlailTree}
	];
	this.Const.Perks.NomadsTree.Tree[0] = [];
	this.Const.Perks.NomadsTree.Tree[1] = [];
	this.Const.Perks.NomadsTree.Tree[2] = [];
	this.Const.Perks.NomadsTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyNomad
	];
	this.Const.Perks.NomadsTree.Tree[4] = [];
	this.Const.Perks.NomadsTree.Tree[5] = [];
	this.Const.Perks.NomadsTree.Tree[6] = [];

	# BarbarianTree
	while (this.Const.Perks.BarbarianTree.Tree.len() < 7)
	{
		this.Const.Perks.BarbarianTree.Tree.push(emptyArray);
	}
	this.Const.Perks.BarbarianTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.ViciousTree}
	];
	this.Const.Perks.BarbarianTree.Tree[0] = [];
	this.Const.Perks.BarbarianTree.Tree[1] = [];
	this.Const.Perks.BarbarianTree.Tree[2] = [];
	this.Const.Perks.BarbarianTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyBarbarian
	];
	this.Const.Perks.BarbarianTree.Tree[4] = [];
	this.Const.Perks.BarbarianTree.Tree[5] = [];
	this.Const.Perks.BarbarianTree.Tree[6] = [];

	# ArchersTree
	while (this.Const.Perks.ArchersTree.Tree.len() < 7)
	{
		this.Const.Perks.ArchersTree.Tree.push(emptyArray);
	}
	this.Const.Perks.ArchersTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.BowTree},
		{Multiplier = 1.5, Tree = this.Const.Perks.RangedTree}
	];
	this.Const.Perks.ArchersTree.Tree[0] = [];
	this.Const.Perks.ArchersTree.Tree[1] = [];
	this.Const.Perks.ArchersTree.Tree[2] = [];
	this.Const.Perks.ArchersTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyArcher
	];
	this.Const.Perks.ArchersTree.Tree[4] = [];
	this.Const.Perks.ArchersTree.Tree[5] = [];
	this.Const.Perks.ArchersTree.Tree[6] = [];

	# SwordmastersTree
	while (this.Const.Perks.SwordmastersTree.Tree.len() < 7)
	{
		this.Const.Perks.SwordmastersTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SwordmastersTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.TrapperClassTree}
	];
	this.Const.Perks.SwordmastersTree.Tree[0] = [];
	this.Const.Perks.SwordmastersTree.Tree[1] = [];
	this.Const.Perks.SwordmastersTree.Tree[2] = [];
	this.Const.Perks.SwordmastersTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySwordmaster
	];
	this.Const.Perks.SwordmastersTree.Tree[4] = [];
	this.Const.Perks.SwordmastersTree.Tree[5] = [];
	this.Const.Perks.SwordmastersTree.Tree[6] = [];
}

gt.Const.PTR.modTraitsTrees <- function()
{
	local emptyArray = [];
	while (this.Const.Perks.AgileTree.Tree.len() < 7)
	{
		this.Const.Perks.AgileTree.Tree.push(emptyArray);
	}
	// this.Const.Perks.AgileTree.WeightMultipliers <- [
	// 	{Multiplier = 1.5, Tree = this.Const.Perks.FastTree}
	// ];

	this.Const.Perks.AgileTree.Descriptions = [
		"is agile",
		"moves with grace and agility",
		"is naturally agile",
		"is impressively agile",
		"has an agile physique",
		"is agile like a fox",
		"is particularly agile"
	],

	this.Const.Perks.AgileTree.Tree[0] = [this.Const.Perks.PerkDefs.Pathfinder];
	this.Const.Perks.AgileTree.Tree[1] = [this.Const.Perks.PerkDefs.Anticipation];
	this.Const.Perks.AgileTree.Tree[2] = [this.Const.Perks.PerkDefs.Sprint];
	this.Const.Perks.AgileTree.Tree[3] = [];
	this.Const.Perks.AgileTree.Tree[4] = [this.Const.Perks.PerkDefs.Footwork];
	this.Const.Perks.AgileTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRFreshAndFurious];
	this.Const.Perks.AgileTree.Tree[6] = [this.Const.Perks.PerkDefs.BattleFlow];

	while (this.Const.Perks.IndestructibleTree.Tree.len() < 7)
	{
		this.Const.Perks.IndestructibleTree.Tree.push(emptyArray);
	}
	this.Const.Perks.IndestructibleTree.Name = "Resilient";

	this.Const.Perks.IndestructibleTree.Descriptions = [
		"is unnaturally resilient",
		"is stubbornly resilient",
		"is staunchly resilient",
		"has a resilient will",
		"resiliently persists",
		"seems unwaveringly resilient",
		"is resilient beyond measure"
	],

	this.Const.Perks.IndestructibleTree.Tree[0] = [this.Const.Perks.PerkDefs.NineLives];
	this.Const.Perks.IndestructibleTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRSurvivalInstinct];
	this.Const.Perks.IndestructibleTree.Tree[2] = [this.Const.Perks.PerkDefs.HoldOut];
	this.Const.Perks.IndestructibleTree.Tree[3] = [];
	this.Const.Perks.IndestructibleTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendSecondWind];
	this.Const.Perks.IndestructibleTree.Tree[5] = [];
	this.Const.Perks.IndestructibleTree.Tree[6] = [this.Const.Perks.PerkDefs.LastStand];

	while (this.Const.Perks.ViciousTree.Tree.len() < 7)
	{
		this.Const.Perks.ViciousTree.Tree.push(emptyArray);
	}

	this.Const.Perks.ViciousTree.Descriptions = [
		"is vicious",
		"seems fiendishly vicious",
		"is ferociously vicious",
		"is brutal and vicious",
		"appears diabolically vicious",
		"is beastially vicious",
		"enjoys vicious butchery"
	],

	this.Const.Perks.ViciousTree.Tree[0] = [this.Const.Perks.PerkDefs.CripplingStrikes];
	this.Const.Perks.ViciousTree.Tree[1] = [this.Const.Perks.PerkDefs.CoupDeGrace];
	this.Const.Perks.ViciousTree.Tree[2] = [this.Const.Perks.PerkDefs.Debilitate];
	this.Const.Perks.ViciousTree.Tree[3] = [];
	this.Const.Perks.ViciousTree.Tree[4] = [this.Const.Perks.PerkDefs.LoneWolf];
	this.Const.Perks.ViciousTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendAssuredConquest];
	this.Const.Perks.ViciousTree.Tree[6] = [this.Const.Perks.PerkDefs.Fearsome];

	while (this.Const.Perks.DeviousTree.Tree.len() < 7)
	{
		this.Const.Perks.DeviousTree.Tree.push(emptyArray);
	}

	this.Const.Perks.DeviousTree.Descriptions = [
		"is devious",
		"strikes you as devious",
		"has a devious appearance",
		"is insincere and devious",
		"is devious and sneaky",
		"carries themselves deviously",
		"is shrewd and devious"
	],

	this.Const.Perks.DeviousTree.Tree[0] = [this.Const.Perks.PerkDefs.Pathfinder];
	this.Const.Perks.DeviousTree.Tree[1] = [this.Const.Perks.PerkDefs.Backstabber];
	this.Const.Perks.DeviousTree.Tree[2] = [this.Const.Perks.PerkDefs.LegendBlendIn];
	this.Const.Perks.DeviousTree.Tree[3] = [];
	this.Const.Perks.DeviousTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendEvasion];
	this.Const.Perks.DeviousTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendHidden];
	this.Const.Perks.DeviousTree.Tree[6] = [this.Const.Perks.PerkDefs.LegendUntouchable];

	while (this.Const.Perks.IntelligentTree.Tree.len() < 7)
	{
		this.Const.Perks.IntelligentTree.Tree.push(emptyArray);
	}
	this.Const.Perks.IntelligentTree.Name = "Talented";

	this.Const.Perks.IntelligentTree.Descriptions = [
		"is talented",
		"lives with talented ease",
		"has unparalleled talent",
		"is bright and talented",
		"is talented in many ways",
		"is talented beyond belief",
		"succeeds easily and with talent"
	],

	this.Const.Perks.IntelligentTree.Tree[0] = [this.Const.Perks.PerkDefs.Student];
	this.Const.Perks.IntelligentTree.Tree[1] = [this.Const.Perks.PerkDefs.Gifted];
	this.Const.Perks.IntelligentTree.Tree[2] = [];
	this.Const.Perks.IntelligentTree.Tree[3] = [this.Const.Perks.PerkDefs.PTRDiscoveredTalent];
	this.Const.Perks.IntelligentTree.Tree[4] = [];
	this.Const.Perks.IntelligentTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRKnowTheirWeakness];
	this.Const.Perks.IntelligentTree.Tree[6] = [];

	while (this.Const.Perks.CalmTree.Tree.len() < 7)
	{
		this.Const.Perks.CalmTree.Tree.push(emptyArray);
	}

	this.Const.Perks.CalmTree.Descriptions = [
		"is calm",
		"breathes calmly",
		"projects peace and calm",
		"seems calm and unflustered",
		"calmly follows the flow",
		"is calm and unworried"
	],

	this.Const.Perks.CalmTree.Tree[0] = [this.Const.Perks.PerkDefs.FastAdaption];
	this.Const.Perks.CalmTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendTrueBeliever];
	this.Const.Perks.CalmTree.Tree[2] = [this.Const.Perks.PerkDefs.FortifiedMind];
	this.Const.Perks.CalmTree.Tree[3] = [this.Const.Perks.PerkDefs.LegendPeaceful];
	this.Const.Perks.CalmTree.Tree[4] = [];
	this.Const.Perks.CalmTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendMindOverBody];
	this.Const.Perks.CalmTree.Tree[6] = [];

	while (this.Const.Perks.FastTree.Tree.len() < 7)
	{
		this.Const.Perks.FastTree.Tree.push(emptyArray);
	}
	 this.Const.Perks.FastTree.WeightMultipliers <- [
	 	{Multiplier = 1.5, Tree = this.Const.Perks.AgileTree}
	 ];

	this.Const.Perks.FastTree.Descriptions = [
		"is fast",
		"runs fast",
		"is fast like a flash",
		"has fast feet",
		"maneuvers fast",
		"has fast steps",
		"is a fast sprinter"
	],

	this.Const.Perks.FastTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendAlert];
	this.Const.Perks.FastTree.Tree[1] = [this.Const.Perks.PerkDefs.QuickHands];
	this.Const.Perks.FastTree.Tree[2] = [this.Const.Perks.PerkDefs.Relentless];
	this.Const.Perks.FastTree.Tree[3] = [this.Const.Perks.PerkDefs.PTRDynamicDuo];
	this.Const.Perks.FastTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRVigorousAssault];
	this.Const.Perks.FastTree.Tree[5] = [this.Const.Perks.PerkDefs.Overwhelm];
	this.Const.Perks.FastTree.Tree[6] = [this.Const.Perks.PerkDefs.Rebound];

	while (this.Const.Perks.LargeTree.Tree.len() < 7)
	{
		this.Const.Perks.LargeTree.Tree.push(emptyArray);
	}
	this.Const.Perks.LargeTree.WeightMultipliers <- [
		{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree}
	];

	this.Const.Perks.LargeTree.Descriptions = [
		"is large",
		"is large and hulking",
		"has impressively large shoulders",
		"is a large sort",
		"looms large above you",
		"is mountainously large",
		"has large musculature"
	],

	this.Const.Perks.LargeTree.Tree[0] = [this.Const.Perks.PerkDefs.Colossus];
	this.Const.Perks.LargeTree.Tree[1] = [];
	this.Const.Perks.LargeTree.Tree[2] = [this.Const.Perks.PerkDefs.Steadfast];
	this.Const.Perks.LargeTree.Tree[3] = [];
	this.Const.Perks.LargeTree.Tree[4] = [];
	this.Const.Perks.LargeTree.Tree[5] = [this.Const.Perks.PerkDefs.SunderingStrikes];
	this.Const.Perks.LargeTree.Tree[6] = [this.Const.Perks.PerkDefs.LegendMuscularity];

	while (this.Const.Perks.OrganisedTree.Tree.len() < 7)
	{
		this.Const.Perks.OrganisedTree.Tree.push(emptyArray);
	}

	this.Const.Perks.OrganisedTree.Descriptions = [
		"is organized",
		"coordinates activities with organization",
		"formulates organized plans",
		"Keeps supplies organized",
		"wants to organize your gear",
		"organized the supplies",
		"is fastidiously organized"
	],

	this.Const.Perks.OrganisedTree.Tree[0] = [this.Const.Perks.PerkDefs.BagsAndBelts];
	this.Const.Perks.OrganisedTree.Tree[1] = [];
	this.Const.Perks.OrganisedTree.Tree[2] = [gt.Const.Perks.PerkDefs.LegendEfficientPacking];
	this.Const.Perks.OrganisedTree.Tree[3] = [];
	this.Const.Perks.OrganisedTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendSkillfulStacking];
	this.Const.Perks.OrganisedTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendPacifist];
	this.Const.Perks.OrganisedTree.Tree[6] = [];

	while (this.Const.Perks.SturdyTree.Tree.len() < 7)
	{
		this.Const.Perks.SturdyTree.Tree.push(emptyArray);
	}
	# this.Const.Perks.AgileTree.WeightMultipliers <- [
	# 	{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree}
	# ];

	this.Const.Perks.SturdyTree.Descriptions = [
		"is sturdy",
		"is sturdily built",
		"looks strong and sturdy",
		"is stouthearted and sturdy",
		"is sturdy and robust",
		"seems sturdy",
		"is sturdy as a mountain"
	],

	this.Const.Perks.SturdyTree.Tree[0] = [this.Const.Perks.PerkDefs.Recover];
	this.Const.Perks.SturdyTree.Tree[1] = [this.Const.Perks.PerkDefs.SteelBrow];
	this.Const.Perks.SturdyTree.Tree[2] = [this.Const.Perks.PerkDefs.Taunt];
	this.Const.Perks.SturdyTree.Tree[3] = [];
	this.Const.Perks.SturdyTree.Tree[4] = [this.Const.Perks.PerkDefs.ReturnFavor];
	this.Const.Perks.SturdyTree.Tree[5] = [this.Const.Perks.PerkDefs.Vengeance];
	this.Const.Perks.SturdyTree.Tree[6] = [this.Const.Perks.PerkDefs.Indomitable];

	while (this.Const.Perks.FitTree.Tree.len() < 7)
	{
		this.Const.Perks.FitTree.Tree.push(emptyArray);
	}
	this.Const.Perks.FitTree.Name = "Unstoppable";

	this.Const.Perks.FitTree.Descriptions = [
		"seems unstoppable",
		"lifts weights unstoppably",
		"seems unstoppably resolute",
		"acts unstoppable",
		"has unstoppable stamina",
		"is unstoppably strong"
	],

	this.Const.Perks.FitTree.Tree[0] = [this.Const.Perks.PerkDefs.Adrenalin];
	this.Const.Perks.FitTree.Tree[1] = [];
	this.Const.Perks.FitTree.Tree[2] = [];
	this.Const.Perks.FitTree.Tree[3] = [this.Const.Perks.PerkDefs.PTRTheRushOfBattle];
	this.Const.Perks.FitTree.Tree[4] = [this.Const.Perks.PerkDefs.Berserk];
	this.Const.Perks.FitTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRUnstoppable];
	this.Const.Perks.FitTree.Tree[6] = [this.Const.Perks.PerkDefs.KillingFrenzy];

	while (this.Const.Perks.TrainedTree.Tree.len() < 7)
	{
		this.Const.Perks.TrainedTree.Tree.push(emptyArray);
	}
	this.Const.Perks.TrainedTree.SelfWeightMultiplier <- 0.75;

	this.Const.Perks.TrainedTree.Descriptions = [
		"is well trained",
		"has great training",
		"is drilled and trained",
		"has combat training",
		"has trained a great deal",
		"has been trained by someone skillful",
		"is trained and disciplined",		
		"has genuine training"
	],

	this.Const.Perks.TrainedTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendBackToBasics];
	this.Const.Perks.TrainedTree.Tree[1] = [];
	this.Const.Perks.TrainedTree.Tree[2] = [this.Const.Perks.PerkDefs.Rotation];
	this.Const.Perks.TrainedTree.Tree[3] = [this.Const.Perks.PerkDefs.PTRVigilant];
	this.Const.Perks.TrainedTree.Tree[4] = [this.Const.Perks.PerkDefs.Underdog];
	this.Const.Perks.TrainedTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendClarity];
	this.Const.Perks.TrainedTree.Tree[6] = [this.Const.Perks.PerkDefs.PerfectFocus];

	this.Const.Perks.ResilientTree <- this.Const.Perks.IndestructibleTree;
	this.Const.Perks.TalentedTree <- this.Const.Perks.IntelligentTree;
	this.Const.Perks.TalentedTree.SelfWeightMultiplier <- 0.25;
	this.Const.Perks.UnstoppableTree <- this.Const.Perks.FitTree;

	gt.Const.Perks.TraitsTrees.Tree = [
		gt.Const.Perks.AgileTree,
		gt.Const.Perks.ResilientTree,
		gt.Const.Perks.ViciousTree,
		gt.Const.Perks.DeviousTree,
		gt.Const.Perks.TalentedTree,
		gt.Const.Perks.CalmTree,
		gt.Const.Perks.FastTree,
		gt.Const.Perks.LargeTree,
		gt.Const.Perks.OrganisedTree,
		gt.Const.Perks.SturdyTree,
		gt.Const.Perks.UnstoppableTree,
		gt.Const.Perks.TrainedTree
	];
}

gt.Const.PTR.modClassTrees <- function()
{
	local emptyArray = [];

	gt.Const.Perks.SergeantClassTree <- {
		ID = "SergeantClassTree",
		Descriptions = [
			"inspiring men"
		],
		Name = "Sergeant",
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.PolearmTree}
		],
		Attributes = {
			Hitpoints = [
				0,
				0
			],
			Bravery = [
				4,
				4
			],
			Stamina = [
				0,
				0
			],
			MeleeSkill = [
				2,
				2
			],
			RangedSkill = [
				0,
				0
			],
			MeleeDefense = [
				2,
				2
			],
			RangedDefense = [
				0,
				0
			],
			Initiative = [
				0,
				0
			]
		},
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendCheerOn
			],
			[
				gt.Const.Perks.PerkDefs.RallyTheTroops
			],
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.InspiringPresence
			],
			[
				gt.Const.Perks.PerkDefs.Inspire
			]
		]
	};

	gt.Const.Perks.HealerClassTree <- {
		ID = "HealerClassTree",
		Descriptions = [
			"healing"
		],
		Name = "Healer",
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendMedIngredients
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecBandage
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendFieldTriage
			]
		]
	};

	gt.Const.Perks.TrapperClassTree <- {
		ID = "TrapperClassTree",
		Descriptions = [
			"trapping"
		],
		Name = "Trapper",
		Tree = [
			[],
			[
				gt.Const.Perks.PerkDefs.LegendNetRepair
			],
			[
				gt.Const.Perks.PerkDefs.LegendNetCasting
			],
			[
				gt.Const.Perks.PerkDefs.LegendMasteryNets
			],
			[
				gt.Const.Perks.PerkDefs.LegendEscapeArtist
			],
			[],
			[]
		]
	};

	gt.Const.Perks.ChefClassTree <- {
		ID = "ChefClassTree",
		Descriptions = [
			"cooking"
		],
		Name = "Chef",
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendMealPreperation
			],
			[
				gt.Const.Perks.PerkDefs.LegendCampCook
			],
			[
				gt.Const.Perks.PerkDefs.LegendAlcoholBrewing
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendQuartermaster
			],
			[
				gt.Const.Perks.PerkDefs.LegendFieldTreats
			]
		]
	};

	gt.Const.Perks.MenderClassTree <- {
		ID = "MenderClassTree",
		Descriptions = [
			"mending"
		],
		Name = "Mender",
		Tree = [
			[],
			[
				gt.Const.Perks.PerkDefs.LegendToolsDrawers
			],
			[
				gt.Const.Perks.PerkDefs.LegendToolsSpares
			],
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendFieldRepairs
			]
		]
	};

	gt.Const.Perks.ClerkClassTree <- {
		ID = "ClerkClassTree",
		Descriptions = [
			"bookkeeping"
		],
		Name = "Clerk",
		SelfWeightMultiplier = 0.33,
		Tree = [
			[],
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendDangerPay
			],
			[
				gt.Const.Perks.PerkDefs.LegendPaymaster
			],
			[
				gt.Const.Perks.PerkDefs.LegendBribe
			]
		]
	};

	this.Const.Perks.HoundmasterClassTree.WeightMultipliers <- [{Multiplier = 3, Tree = this.Const.Perks.CleaverTree}];
	while (this.Const.Perks.HoundmasterClassTree.Tree.len() < 7)
	{
		this.Const.Perks.HoundmasterClassTree.Tree.push(emptyArray);
	}
	this.Const.Perks.HoundmasterClassTree.Tree[0] = [];
	this.Const.Perks.HoundmasterClassTree.Tree[1] = [];
	this.Const.Perks.HoundmasterClassTree.Tree[2] = [this.Const.Perks.PerkDefs.LegendDogWhisperer];
	this.Const.Perks.HoundmasterClassTree.Tree[3] = [this.Const.Perks.PerkDefs.LegendDogBreeder];
	this.Const.Perks.HoundmasterClassTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendDogHandling];
	this.Const.Perks.HoundmasterClassTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendPackleader];
	this.Const.Perks.HoundmasterClassTree.Tree[6] = [this.Const.Perks.PerkDefs.LegendDogMaster];

	gt.Const.Perks.TacticianClassTree <- {
		ID = "TacticianClassTree",
		Descriptions = [
			"battlefield tactics"
		],
		Name = "Tactician",
		SelfWeightMultiplier = 0.33,
		WeightMultipliers = [
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendMarkTarget
			],
			[
				gt.Const.Perks.PerkDefs.LegendShieldsUp
			],
			[
				gt.Const.Perks.PerkDefs.LegendForwardPush
			],
			[
				gt.Const.Perks.PerkDefs.LegendHoldTheLine
			],
			[
				
			],
			[
				gt.Const.Perks.PerkDefs.PTRVanguardDeployment	
			],
			[
				gt.Const.Perks.PerkDefs.PTRBlitzkrieg
			]
		]
	};

	gt.Const.Perks.EntertainerClassTree <- {
		ID = "EntertainerClassTree",
		Descriptions = [
			"entertainment",
			"painting smiles on faces"
		],
		Name = "Entertainer",
		SelfWeightMultiplier = 0.33,
		Tree = [
			[
				gt.Const.Perks.PerkDefs.PTRAlwaysAnEntertainer
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRPaintASmile
			],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.ScoutClassTree <- {
		ID = "ScoutClassTree",
		Descriptions = [
			"organizing patrols",
			"keeping watch",
			"keeping a lookout"
		],
		Name = "Scout",
		SelfWeightMultiplier = 0.33,
		Tree = [
			[
				gt.Const.Perks.PerkDefs.Lookout
			],
			[],
			[],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.ClassTrees.Tree = [
		gt.Const.Perks.SergeantClassTree,
		gt.Const.Perks.HealerClassTree,
		gt.Const.Perks.TrapperClassTree,
		gt.Const.Perks.ChefClassTree,
		gt.Const.Perks.MenderClassTree,
		gt.Const.Perks.ClerkClassTree,
		gt.Const.Perks.HoundmasterClassTree,
		gt.Const.Perks.TacticianClassTree,
		gt.Const.Perks.EntertainerClassTree,
		gt.Const.Perks.ScoutClassTree
	];
}

gt.Const.PTR.modWeaponTrees <- function()
{
	local emptyArray = [];
	while (this.Const.Perks.AxeTree.Tree.len() < 7)
	{
		this.Const.Perks.AxeTree.Tree.push(emptyArray);
	}
	this.Const.Perks.AxeTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendSmashingShields];
	this.Const.Perks.AxeTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRHeft];
	this.Const.Perks.AxeTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRDismemberment];
	this.Const.Perks.AxeTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecAxe];
	this.Const.Perks.AxeTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRBetweenTheEyes];
	this.Const.Perks.AxeTree.Tree[5] = [this.Const.Perks.PerkDefs.SunderingStrikes];
	this.Const.Perks.AxeTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRCull];

	while (this.Const.Perks.BowTree.Tree.len() < 7)
	{
		this.Const.Perks.BowTree.Tree.push(emptyArray);
	}
	this.Const.Perks.BowTree.SelfWeightMultiplier <- 0.33;
	this.Const.Perks.BowTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRTargetPractice];
	this.Const.Perks.BowTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRRangedSupremacy];
	this.Const.Perks.BowTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRArrowToTheKnee];
	this.Const.Perks.BowTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecBow];
	this.Const.Perks.BowTree.Tree[4] = [this.Const.Perks.PerkDefs.PTREyesUp];
	this.Const.Perks.BowTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRFlamingArrows];
	this.Const.Perks.BowTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRHipShooter];

	while (this.Const.Perks.CleaverTree.Tree.len() < 7)
	{
		this.Const.Perks.CleaverTree.Tree.push(emptyArray);
	}
	this.Const.Perks.CleaverTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRDeepCuts];
	this.Const.Perks.CleaverTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRSanguinary];
	this.Const.Perks.CleaverTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRSwordlike];
	this.Const.Perks.CleaverTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecCleaver];
	this.Const.Perks.CleaverTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRBloodlust];
	this.Const.Perks.CleaverTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRBloodbath];
	this.Const.Perks.CleaverTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRMauler];


	while (this.Const.Perks.CrossbowTree.Tree.len() < 7)
	{
		this.Const.Perks.CrossbowTree.Tree.push(emptyArray);
	}
	this.Const.Perks.CrossbowTree.SelfWeightMultiplier <- 1.25;
	this.Const.Perks.CrossbowTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRTakeAim];
	this.Const.Perks.CrossbowTree.Tree[1] = [this.Const.Perks.PerkDefs.PTREntrenched];
	this.Const.Perks.CrossbowTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRPowerShot];
	this.Const.Perks.CrossbowTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecCrossbow];
	this.Const.Perks.CrossbowTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRIronSights];
	this.Const.Perks.CrossbowTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRPrimalFear];
	this.Const.Perks.CrossbowTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRMuscleMemory];

	while (this.Const.Perks.DaggerTree.Tree.len() < 7)
	{
		this.Const.Perks.DaggerTree.Tree.push(emptyArray);
	}
	this.Const.Perks.DaggerTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRBetweenTheRibs];
	this.Const.Perks.DaggerTree.Tree[1] = [this.Const.Perks.PerkDefs.Backstabber];
	this.Const.Perks.DaggerTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRLightWeapon];
	this.Const.Perks.DaggerTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecDagger];
	this.Const.Perks.DaggerTree.Tree[4] = [this.Const.Perks.PerkDefs.DoubleStrike];
	this.Const.Perks.DaggerTree.Tree[5] = [this.Const.Perks.PerkDefs.Overwhelm];
	this.Const.Perks.DaggerTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRSwiftStabs];

	while (this.Const.Perks.FlailTree.Tree.len() < 7)
	{
		this.Const.Perks.FlailTree.Tree.push(emptyArray);
	}
	this.Const.Perks.FlailTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRSmallTarget];
	this.Const.Perks.FlailTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRHeadSmasher];
	this.Const.Perks.FlailTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRFromAllSides];
	this.Const.Perks.FlailTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecFlail];
	this.Const.Perks.FlailTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRDeadlyPrecision];
	this.Const.Perks.FlailTree.Tree[5] = [this.Const.Perks.PerkDefs.HeadHunter];
	this.Const.Perks.FlailTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRFlailSpinner];

	while (this.Const.Perks.HammerTree.Tree.len() < 7)
	{
		this.Const.Perks.HammerTree.Tree.push(emptyArray);
	}
	this.Const.Perks.HammerTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendSmackdown];
	this.Const.Perks.HammerTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRRattle];
	this.Const.Perks.HammerTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRDeepImpact];
	this.Const.Perks.HammerTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecHammer];
	this.Const.Perks.HammerTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRDismantle];
	this.Const.Perks.HammerTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRInternalHemorrhage];
	this.Const.Perks.HammerTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRDentArmor];

	while (this.Const.Perks.MaceTree.Tree.len() < 7)
	{
		this.Const.Perks.MaceTree.Tree.push(emptyArray);
	}
	this.Const.Perks.MaceTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRPushIt];
	this.Const.Perks.MaceTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRHeavyStrikes];
	this.Const.Perks.MaceTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRBearDown];
	this.Const.Perks.MaceTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecMace];
	this.Const.Perks.MaceTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRConcussiveStrikes];
	this.Const.Perks.MaceTree.Tree[5] = [this.Const.Perks.PerkDefs.PushTheAdvantage];
	this.Const.Perks.MaceTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRBoneBreaker];

	while (this.Const.Perks.PolearmTree.Tree.len() < 7)
	{
		this.Const.Perks.PolearmTree.Tree.push(emptyArray);
	}
	//this.Const.Perks.PolearmTree.Tree[0].push(this.Const.Perks.PerkDefs.PTRTesting);
	this.Const.Perks.PolearmTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRBolster];
	this.Const.Perks.PolearmTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRLeverage];
	this.Const.Perks.PolearmTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRIntimidate];
	this.Const.Perks.PolearmTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecPolearm];
	this.Const.Perks.PolearmTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRUtilitarian];
	this.Const.Perks.PolearmTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRFollowUp];
	this.Const.Perks.PolearmTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRLongReach];

	while (this.Const.Perks.SlingsTree.Tree.len() < 7)
	{
		this.Const.Perks.SlingsTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SlingsTree.Tree[0] = [this.Const.Perks.PerkDefs.Lookout];
	this.Const.Perks.SlingsTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendSpecialistSlingSkill];
	this.Const.Perks.SlingsTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRPatience];
	this.Const.Perks.SlingsTree.Tree[3] = [this.Const.Perks.PerkDefs.LegendMasterySlings];
	this.Const.Perks.SlingsTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendSpecialistSlingDamage];
	this.Const.Perks.SlingsTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRHeavyProjectiles];
	this.Const.Perks.SlingsTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRDeathFromAfar];

	while (this.Const.Perks.SpearTree.Tree.len() < 7)
	{
		this.Const.Perks.SpearTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SpearTree.SelfWeightMultiplier <- 1.5;
	this.Const.Perks.SpearTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRPointyEnd];
	this.Const.Perks.SpearTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendSpecSpearWall];
	this.Const.Perks.SpearTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRThroughTheGaps];
	this.Const.Perks.SpearTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecSpear];
	this.Const.Perks.SpearTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRTwoForOne];
	this.Const.Perks.SpearTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRABetterGrip];
	this.Const.Perks.SpearTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRKingOfAllWeapons];

	while (this.Const.Perks.SwordTree.Tree.len() < 7)
	{
		this.Const.Perks.SwordTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SwordTree.Name = "Sword";
	this.Const.Perks.SwordTree.SelfWeightMultiplier <- 1.25;
	this.Const.Perks.SwordTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRVersatileWeapon];
	this.Const.Perks.SwordTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRExploitOpening];
	this.Const.Perks.SwordTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRFluidWeapon];
	this.Const.Perks.SwordTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecSword];
	this.Const.Perks.SwordTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRTempo];
	this.Const.Perks.SwordTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRKata];
	this.Const.Perks.SwordTree.Tree[6] = [this.Const.Perks.PerkDefs.PTREnGarde];

	this.Const.Perks.GreatSwordTree.Tree.clear();

	while (this.Const.Perks.GreatSwordTree.Tree.len() < 7)
	{
		this.Const.Perks.GreatSwordTree.Tree.push([]);
	}

	foreach (i, row in this.Const.Perks.SwordTree.Tree)
	{
		foreach (entry in row)
		{
			this.Const.Perks.GreatSwordTree.Tree[i].push(entry);
		}
	}

	while (this.Const.Perks.StavesTree.Tree.len() < 7)
	{
		this.Const.Perks.StavesTree.Tree.push(emptyArray);
	}
	this.Const.Perks.StavesTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendSpecStaffSkill];
	this.Const.Perks.StavesTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendOnslaught];
	this.Const.Perks.StavesTree.Tree[2] = [this.Const.Perks.PerkDefs.PTREasyTarget];
	this.Const.Perks.StavesTree.Tree[3] = [this.Const.Perks.PerkDefs.LegendMasteryStaves];
	this.Const.Perks.StavesTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendSpecStaffStun];
	this.Const.Perks.StavesTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRWearThemDown];
	this.Const.Perks.StavesTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRWhackASmack];

	while (this.Const.Perks.ThrowingTree.Tree.len() < 7)
	{
		this.Const.Perks.ThrowingTree.Tree.push(emptyArray);
	}
	this.Const.Perks.ThrowingTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRHybridization];
	this.Const.Perks.ThrowingTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRMomentum];
	this.Const.Perks.ThrowingTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRSkirmisher];
	this.Const.Perks.ThrowingTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecThrowing];
	this.Const.Perks.ThrowingTree.Tree[4] = [this.Const.Perks.PerkDefs.PTROpportunist];
	this.Const.Perks.ThrowingTree.Tree[5] = [this.Const.Perks.PerkDefs.CloseCombatArcher];
	this.Const.Perks.ThrowingTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRNailedIt];

	local idx = gt.Const.Perks.WeaponTrees.Tree.find(this.Const.Perks.GreatSwordTree);
	if (idx != null)
	{
		gt.Const.Perks.WeaponTrees.Tree.remove(idx);
	}	
}

gt.Const.PTR.modDefenseTrees <- function ()
{
	local emptyArray = [];
	while (this.Const.Perks.ShieldTree.Tree.len() < 7)
	{
		this.Const.Perks.ShieldTree.Tree.push(emptyArray);
	}
	gt.Const.Perks.ShieldTree.SelfWeightMultiplier <- 1.25;
	this.Const.Perks.ShieldTree.WeightMultipliers <- [];
	this.Const.Perks.ShieldTree.Tree[0] = [this.Const.Perks.PerkDefs.STRPhalanx];
	this.Const.Perks.ShieldTree.Tree[1] = [this.Const.Perks.PerkDefs.STRCoverAlly];
	this.Const.Perks.ShieldTree.Tree[2] = [this.Const.Perks.PerkDefs.ShieldExpert];
	this.Const.Perks.ShieldTree.Tree[3] = [this.Const.Perks.PerkDefs.STRLineBreaker];
	this.Const.Perks.ShieldTree.Tree[4] = [];
	this.Const.Perks.ShieldTree.Tree[5] = [];
	this.Const.Perks.ShieldTree.Tree[6] = [];

	while (this.Const.Perks.HeavyArmorTree.Tree.len() < 7)
	{
		this.Const.Perks.HeavyArmorTree.Tree.push(emptyArray);
	}
	gt.Const.Perks.HeavyArmorTree.SelfWeightMultiplier <- 0.33;
	this.Const.Perks.HeavyArmorTree.WeightMultipliers <- [];
	this.Const.Perks.HeavyArmorTree.Tree[0] = [];
	this.Const.Perks.HeavyArmorTree.Tree[1] = [];
	this.Const.Perks.HeavyArmorTree.Tree[2] = [this.Const.Perks.PerkDefs.Brawny];
	this.Const.Perks.HeavyArmorTree.Tree[3] = [];
	this.Const.Perks.HeavyArmorTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRBulwark];
	this.Const.Perks.HeavyArmorTree.Tree[5] = [this.Const.Perks.PerkDefs.BattleForged];
	this.Const.Perks.HeavyArmorTree.Tree[6] = [];

	while (this.Const.Perks.LightArmorTree.Tree.len() < 7)
	{
		this.Const.Perks.LightArmorTree.Tree.push(emptyArray);
	}
	this.Const.Perks.LightArmorTree.WeightMultipliers <- [];
	this.Const.Perks.LightArmorTree.Tree[0] = [];
	this.Const.Perks.LightArmorTree.Tree[1] = [this.Const.Perks.PerkDefs.Dodge];
	this.Const.Perks.LightArmorTree.Tree[2] = [this.Const.Perks.PerkDefs.Relentless];
	this.Const.Perks.LightArmorTree.Tree[3] = [];
	this.Const.Perks.LightArmorTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendFreedomOfMovement];
	this.Const.Perks.LightArmorTree.Tree[5] = [this.Const.Perks.PerkDefs.Nimble];
	this.Const.Perks.LightArmorTree.Tree[6] = [];
}

gt.Const.PTR.modMagicTrees <- function()
{
	gt.Const.Perks.CaptainMagicTree.Tree[1] = [];
}
