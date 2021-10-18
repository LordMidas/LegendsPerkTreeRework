this.ptr_swordmaster_scenario <- this.inherit("scripts/scenarios/world/starting_scenario", {
	m = {},
	function create()
	{
		this.m.ID = "scenario.ptr_swordmaster";
		this.m.Name = "Old Swordmaster";
		this.m.Description = "[p=c][img]gfx/ui/events/event_17.png[/img][/p][p]You are a legendary swordmaster, eager to pass on your skills to others!\n\n[color=#bcad8c]Teacher:[/color] Upon leveling up, every recruit has a 50% chance to gain a free perk from the Sword perk group. Cannot have more than 10 recruits.\n[color=#bcad8c]Swords Only:[/color] Recruits gain special bonuses when using swords. If anyone uses any melee weapon except swords in combat it will anger your entire company.\n[color=#bcad8c]Reputation:[/color] Squires and Swordmasters have a lower upkeep and hiring cost.\n[color=#bcad8c]Avatar:[/color] If your swordmaster dies, the campaign ends.[/p]";
		this.m.Difficulty = 1;
		this.m.Order = 70;
		this.m.IsFixedLook = true;		
		this.m.StartingRosterTier = this.Const.Roster.getTierForSize(3);
		this.m.RosterTierMax = this.Const.Roster.getTierForSize(10);
		this.m.StartingBusinessReputation = 1100;
		this.setRosterReputationTiers(this.Const.Roster.createReputationTiers(this.m.StartingBusinessReputation));
	}

	function isValid()
	{
		return this.Const.DLC.Wildmen;
	}

	function onSpawnAssets()
	{
		local roster = this.World.getPlayerRoster();
		local bro;
		bro = roster.create("scripts/entity/tactical/player");
		bro.setStartValuesEx([
			"ptr_swordmaster_commander_background"
		]); //skills on start
		bro.getSkills().add(this.new("scripts/skills/traits/player_character_trait"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_versatile_weapon"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_exploit_opening"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_fluid_weapon"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_mastery_sword"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_tempo"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_kata"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_en_garde"));
		bro.m.PerkPointsSpent += 7;
		bro.setPlaceInFormation(4);
		bro.setVeteranPerks(2);
		bro.getFlags().set("IsPlayerCharacter", true);

 		//bro.getSprite("socket").setBrush("bust_base_crusader"); //custom base
 		//bro.getSprite("socket").setBrush("bust_base_wildmen_01");
		bro.getSprite("miniboss").setBrush("bust_miniboss");
		bro.m.HireTime = this.Time.getVirtualTimeF();
		this.World.Assets.addMoralReputation(20);
		this.World.Assets.addBusinessReputation(this.m.StartingBusinessReputation);		
		this.World.Assets.m.Ammo = 0;

		this.World.Assets.getStash().add(this.new("scripts/items/supplies/cured_venison_item"));
		this.World.Assets.getStash().add(this.new("scripts/items/weapons/fencing_sword"));
		this.World.Assets.getStash().add(this.new("scripts/items/weapons/legend_estoc"));
		this.World.Assets.getStash().add(this.new("scripts/items/weapons/arming_sword"));
		this.World.Assets.getStash().add(this.new("scripts/items/weapons/arming_sword"));

		bro.getSkills().add(this.new("scripts/skills/effects/ptr_swordmaster_scenario_effect"));
		bro.getSkills().add(this.new("scripts/skills/traits/old_trait"));
	}

	function onSpawnPlayer() //spawn location
	{
		local randomVillage;

		for( local i = 0; i != this.World.EntityManager.getSettlements().len(); i = ++i )
		{
			randomVillage = this.World.EntityManager.getSettlements()[i];

			if (randomVillage.isMilitary() && !randomVillage.isIsolatedFromRoads() && randomVillage.getSize() >= 3)
			{
				break;
			}
		}

		local randomVillageTile = randomVillage.getTile();

		do
		{
			local x = this.Math.rand(this.Math.max(2, randomVillageTile.SquareCoords.X - 1), this.Math.min(this.Const.World.Settings.SizeX - 2, randomVillageTile.SquareCoords.X + 1));
			local y = this.Math.rand(this.Math.max(2, randomVillageTile.SquareCoords.Y - 1), this.Math.min(this.Const.World.Settings.SizeY - 2, randomVillageTile.SquareCoords.Y + 1));

			if (!this.World.isValidTileSquare(x, y))
			{
			}
			else
			{
				local tile = this.World.getTileSquare(x, y);

				if (tile.Type == this.Const.World.TerrainType.Ocean || tile.Type == this.Const.World.TerrainType.Shore)
				{
				}
				else if (tile.getDistanceTo(randomVillageTile) == 0)
				{
				}
				else if (!tile.HasRoad)
				{
				}
				else
				{
					randomVillageTile = tile;
					break;
				}
			}
		}
		while (1);

		this.World.State.m.Player = this.World.spawnEntity("scripts/entity/world/player_party", randomVillageTile.Coords.X, randomVillageTile.Coords.Y);
		this.World.State.m.Player.getSprite("body").setBrush("ptr_player_swordmaster");
		this.World.getCamera().setPos(this.World.State.m.Player.getPos());
		this.Time.scheduleEvent(this.TimeUnit.Real, 1000, function ( _tag )
		{
			this.Music.setTrackList([
				"music/retirement_02.ogg"
			], this.Const.Music.CrossFadeTime);
			this.World.Events.fire("event.ptr_swordmaster_scenario_intro");
		}, null);
	}

	function onCombatFinished() //is avatar killed?
	{
		local roster = this.World.getPlayerRoster().getAll();

		foreach( bro in roster )
		{
			if (bro.getFlags().get("IsPlayerCharacter"))
			{
				return true;
			}
		}

		return false;
	}

	function onHiredByScenario( bro )
	{
		bro.getSkills().add(this.new("scripts/skills/perks/perk_ptr_versatile_weapon"));	
		bro.getSkills().add(this.new("scripts/skills/effects/ptr_swordmaster_scenario_effect"));		
	}

	function onUpdateHiringRoster( _roster )
	{
		local garbage = [];
		local bros = _roster.getAll();

		foreach( i, bro in bros )
		{
			if (bro.getBackground().getID() == "background.squire")
			{
				bro.m.HiringCost = this.Math.floor(bro.m.HiringCost * 0.5);
				bro.getBaseProperties().DailyWage = this.Math.floor(bro.getBaseProperties().DailyWage * 0.5);

			}
			else if (bro.getBackground().getID() == "background.swordmaster")
			{
				bro.m.HiringCost = this.Math.floor(bro.m.HiringCost * 0.75);
				bro.getBaseProperties().DailyWage = this.Math.floor(bro.getBaseProperties().DailyWage * 0.75);
			}
		}
	}

	function onBuildPerkTree( _background )
	{
		if (_background.m.CustomPerkTree == null)
		{
			return;
		}
		_background.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.PTRVersatileWeapon);
	}

	// function onUpdateDraftList( _list, _gender)
	// {
	// 	if (_list.len() < 5)
	// 	{
	// 		local r;
	// 		r = this.Math.rand(0, 2);
	// 		if (r == 0)
	// 		{
	// 		_list.push("flagellant_background");
	// 		}
	// 		r = this.Math.rand(0, 4);
	// 		if (r == 0)
	// 		{
	// 		_list.push("pilgrim_background");
	// 		}
	// 		r = this.Math.rand(0, 4);
	// 		if (r == 0)
	// 		{
	// 		_list.push("monk_background");
	// 		}
	// 		r = this.Math.rand(0, 6);
	// 		if (r == 0 && _gender)
	// 		{
	// 		_list.push("legend_nun_background");
	// 		}
	// 		r = this.Math.rand(0, 9);
	// 		if (r == 0)
	// 		{
	// 			_list.push("witchhunter_background");
	// 		}
	// 		r = this.Math.rand(0, 49);
	// 		if (r == 0)
	// 		{
	// 			_list.push("legend_crusader_background");
	// 		}
	// 	}
	// 	if (_list.len() >= 5)
	// 	{
	// 		local r;
	// 		r = this.Math.rand(0, 5);
	// 		if (r == 0)
	// 		{
	// 			_list.push("flagellant_background");
	// 		}
	// 		r = this.Math.rand(0, 5);
	// 		if (r == 0)
	// 		{
	// 			_list.push("pilgrim_background");
	// 		}
	// 		r = this.Math.rand(0, 6);
	// 		if (r == 0)
	// 		{
	// 			_list.push("monk_background");
	// 		}
	// 		r = this.Math.rand(0, 4);
	// 		if (r == 0)
	// 		{
	// 			_list.push("legend_nun_background");
	// 		}
	// 		r = this.Math.rand(0, 5);
	// 		if (r == 0)
	// 		{
	// 			_list.push("witchhunter_background");
	// 		}
	// 		r = this.Math.rand(0, 19);
	// 		if (r == 0)
	// 		{
	// 			_list.push("legend_crusader_background");
	// 		}
	// 	}
	// }

});

