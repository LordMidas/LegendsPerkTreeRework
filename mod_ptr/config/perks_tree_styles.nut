::Const.Perks.OneHandedTree <- {
	ID = "OneHandedTree",
	Descriptions = [
		"one-handed weapons"
	],
	Name = "One-Handed Weapons",
	Tree = [
		[],
		[],
		[],
		[
			::Const.Perks.PerkDefs.PTROffhandTraining
		],
		[
			::Const.Perks.PerkDefs.DoubleStrike	
		],
		[
			::Const.Perks.PerkDefs.Duelist
		],
		[
			::Const.Perks.PerkDefs.PTRWeaponMaster
		]
	]
};

::Const.Perks.TwoHandedTree <- {
	ID = "TwoHandedTree",
	Descriptions = [
		"two-handed weapons"
	],
	Name = "Two-Handed Weapons",
	Tree = [
		[],
		[
			::Const.Perks.PerkDefs.PTRBloodyHarvest
		],
		[
			::Const.Perks.PerkDefs.PTRFormidableApproach
		],
		[],
		[
			::Const.Perks.PerkDefs.ReachAdvantage
		],
		[
			::Const.Perks.PerkDefs.PTRSweepingStrikes
		],
		[]
	]
};

::Const.Perks.RangedTree <- {
	ID = "RangedTree",
	Descriptions = [
		"ranged weapons"
	],
	Name = "Ranged Weapons",
	Tree = [
		[
			::Const.Perks.PerkDefs.BagsAndBelts
		],
		[
			::Const.Perks.PerkDefs.Bullseye
		],
		[],
		[],
		[],
		[
			::Const.Perks.PerkDefs.Ballistics
		],
		[]
	]
};

::Const.Perks.StylesTrees <- {
	Tree = [
		::Const.Perks.OneHandedTree,
		::Const.Perks.TwoHandedTree,
		::Const.Perks.RangedTree
	],
	function getRandom( _exclude )
	{
		local L = [];

		foreach( i, t in this.Tree )
		{
			if (_exclude != null && _exclude.find(t.ID))
			{
				continue;
			}

			L.push(i);
		}

		local r = this.Math.rand(0, L.len() - 1);
		return this.Tree[L[r]];
	}

	function getRandomPerk()
	{
		local tree = this.getRandom(null);
		local L = [];

		foreach( row in tree.Tree )
		{
			foreach( p in row )
			{
				L.push(p);
			}
		}

		local r = this.Math.rand(0, L.len() - 1);
		return L[r];
	}
};
