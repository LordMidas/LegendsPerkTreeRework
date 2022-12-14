::Const.Perks.SpecialTrees <- {
	Tree = [],
	Perks = [],

	function addSpecialPerk( _chance, _perk, _tier, _desc, _func = null )
	{
		this.Perks.push({
			Perk = _perk,
			Chance = _chance,
			Desc = "[color=" + ::Const.UI.Color.NegativeValue + "]" + _desc + "[/color]"
			Func = _func != null ? _func : @(a, b) _chance,
			Row = _tier - 1
		});

		local i = 0;			
		while (true)
		{
			local name = "Special" + i;
			if (!(name in ::Const.Perks))
			{
				::Const.Perks[name] <- {
					ID = name,
					Descriptions = [""],
					Name = "Special Perks",
					Tree = [
						[], [], [], [], [], [], []
					]
				};

				::Const.Perks.SpecialTrees.Tree.push(::Const.Perks[name]);
			}

			if (::Const.Perks[name].Tree[_tier-1].len() > 1)
			{
				local totalPerksInTree = 0;					
				foreach (row in ::Const.Perks[name].Tree)
				{
					totalPerksInTree += row.len();
				}
				if (totalPerksInTree >= 7)
				{
					i++;
					continue;					
				}
			}

			::Const.Perks[name].Tree[_tier-1].push(_perk);
			break;
		}
	}

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

::Const.Perks.SpecialTrees.addSpecialPerk(25, ::Const.Perks.PerkDefs.BFFencer, 7, "Has all the makings of a capable fencer.", function( _player, _chance ) {
	if (!_player.getBackground().hasPerkGroup(::Const.Perks.SwordTree))
	{
		return 0;
	}

	local talents = _player.getTalents();

	_chance = talents.len() == 0 ? 0 : _chance * talents[::Const.Attributes.Initiative] * talents[::Const.Attributes.MeleeSkill];

	if (_player.getInitiative() + (this.Math.max(0, _player.getBaseProperties().Stamina - _player.getCurrentProperties().Stamina)) < 100)
	{
		return 0;
	}

	return _chance;		
});

::Const.Perks.SpecialTrees.addSpecialPerk(2, ::Const.Perks.PerkDefs.PTRRisingStar, 7, "Has the talent to rise and shine above all others!");

::Const.Perks.SpecialTrees.addSpecialPerk(10, ::Const.Perks.PerkDefs.LegendBigGameHunter, 7, "Has a penchant for hunting big game.", function( _player, _chance ) {
	if (!_player.getBackground().hasPerkGroup(::Const.Perks.RangedTree) || !_player.getBackground().hasPerkGroup(::Const.Perks.BowTree) || !_player.getBackground().hasPerkGroup(::Const.Perks.CrossbowTree))
	{
		return 0;
	}

	local talents = _player.getTalents();
	if (talents.len() == 0 || talents[::Const.Attributes.RangedSkill] < 2)
	{
		return 0;
	}
	else
	{
		_chance *= talents[::Const.Attributes.RangedSkill];
	}

	return _chance;
});

::Const.Perks.SpecialTrees.addSpecialPerk(20, ::Const.Perks.PerkDefs.PTRMarksmanship, 7, "Has the talent to become a formidable marksman.", function( _player, _chance ) {
	if (!_player.getBackground().hasPerkGroup(::Const.Perks.RangedTree))
	{
		return 0;
	}

	local talents = _player.getTalents();
	if (talents.len() == 0 || talents[::Const.Attributes.RangedSkill] < 2)
	{
		return 0;
	}
	else
	{
		_chance *= talents[::Const.Attributes.RangedSkill];
	}

	return _chance;
});

::Const.Perks.SpecialTrees.addSpecialPerk(25, ::Const.Perks.PerkDefs.PTRManOfSteel, 7, "Is tough as if made of steel!", function( _player, _chance ) {
	if (!_player.getBackground().hasPerkGroup(::Const.Perks.HeavyArmorTree))
	{
		return 0;
	}

	local talents = _player.getTalents();
	return talents.len() == 0 ? 0 : _chance * talents[::Const.Attributes.Fatigue];
});
