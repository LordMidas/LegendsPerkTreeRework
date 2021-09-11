// this.ptr_dynamic_duo_scenario <- this.inherit("scripts/scenarios/world/starting_scenario", {
// 	m = {},
// 	function create()
// 	{
// 		this.m.ID = "scenario.ptr_dynamic_duo";
// 		this.m.Name = "The Dynamic Duo";
// 		this.m.Description = "[p=c][img]gfx/ui/events/event_133.png[/img][/p][p]Born in vastly different cultures, the hand of fate brought the two mythical heroes together on a fateful day. As their swords clashed on the field of battle, they soon found they were evenly matched. With new found respect for one another, they put aside their differences and found themselves in an everlasting bond of friendship. Their travels and deeds would later be known as A Song of Sand and Snow! \n\n[color=#bcad8c]Duo:[/color] Start with two well-equipped friends, both of whom have the Dynamic Duo perk.\n[color=#bcad8c]Snow and Sand:[/color] Start at the beginning of their story, and watch the legend of the Duo unfold via unique events during gameplay.\n[color=#bcad8c]Cultural Understanding: [/color] Southerners and Northerners in your company get along just fine.[/p]";
// 		this.m.Difficulty = 2;
// 		this.m.Order = 30;
// 	}

// 	function isValid()
// 	{
// 		return this.Const.DLC.Wildmen;
// 	}

// 	function onSpawnAssets()
// 	{
// 		local roster = this.World.getPlayerRoster();		

// 		local bro1 = roster.create("scripts/entity/tactical/player");
// 		bro1.m.HireTime = this.Time.getVirtualTimeF();
// 		bro1.setName("Uber");
// 		bro1.setTitle("");

// 		local bro2 = roster.create("scripts/entity/tactical/player");
// 		bro2.m.HireTime = this.Time.getVirtualTimeF();
// 		bro2.setName("Midas");
// 		bro2.setTitle("");
		
// 		local bros = roster.getAll();
// 		local talents;
// 		bros[0].setStartValuesEx([
// 			"hedge_knight_background"
// 		]);
// 		bros[0].getBackground().m.RawDescription = "{A bit of a devious runt, though a good person at heart. %name% used to hunt for the local liege, but when the nobleman died falling into an unseen ravine the hunter was blamed and kicked out of court. With some guile, %name% turned hunting talents into poaching and fur trade. Has a merchant\'s mind and was quick to engender the idea of mercenary work because of it.}";
// 		bros[0].setPlaceInFormation(3);
// 		bros[0].m.Talents = [];
// 		talents = bros[0].getTalents();
// 		talents.resize(this.Const.Attributes.COUNT, 0);
// 		talents[this.Const.Attributes.MeleeSkill] = 3;
// 		talents[this.Const.Attributes.MeleeDefense] = 2;
// 		talents[this.Const.Attributes.Fatigue] = 2;
// 		bros[0].m.PerkPoints = 0;
// 		bros[0].m.LevelUps = 0;
// 		bros[0].m.Level = 1;
// 		bros[0].setVeteranPerks(2);

// 		local items = bros[0].getItems();
// 		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
// 		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Ammo));
// 		items.equip(this.new("scripts/items/weapons/legend_bastardsword"));

// 		foreach (row in bros[0].getBackground().m.CustomPerkTree)
// 		{
// 			row.clear();
// 		}


		

// 		bros[1].setStartValuesEx([
// 			"nomad_background"
// 		]);
// 		bros[1].getBackground().m.RawDescription = "{%name% fell into poaching after a drought ravaged the personal farmstead. Like most poachers, %name% is not truly of the criminal mind. Long grouped together in the hunting gangs, the poacher was quick to nominate you as captain of the new sellsword outfit.}";
// 		bros[1].setPlaceInFormation(4);
// 		bros[1].m.Talents = [];		
// 		talents = bros[1].getTalents();
// 		talents.resize(this.Const.Attributes.COUNT, 0);
// 		talents[this.Const.Attributes.MeleeSkill] = 3;
// 		talents[this.Const.Attributes.MeleeDefense] = 2;
// 		talents[this.Const.Attributes.Initiative] = 2;
// 		bros[1].setVeteranPerks(2);

// 		local items = bros[1].getItems();
// 		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
// 		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Ammo));
// 		items.equip(this.new("scripts/items/weapons/shamshir"));
		
// 		this.World.Assets.m.BusinessReputation = 100;
// 		this.World.Assets.getStash().resize(this.World.Assets.getStash().getCapacity() - 18);
// 		this.World.Assets.getStash().add(this.new("scripts/items/supplies/cured_venison_item"));
// 		this.World.Assets.getStash().add(this.new("scripts/items/trade/furs_item"));		
// 	}

// 	function onSpawnPlayer()
// 	{
// 		local spawnTile;
// 		local settlements = this.World.EntityManager.getSettlements();
// 		local nearestVillage;
// 		local navSettings = this.World.getNavigator().createSettings();
// 		navSettings.ActionPointCosts = this.Const.World.TerrainTypeNavCost_Flat;

// 		do
// 		{
// 			local x = this.Math.rand(5, this.Const.World.Settings.SizeX - 5);
// 			local y = this.Math.rand(5, this.Const.World.Settings.SizeY - 5);

// 			if (!this.World.isValidTileSquare(x, y))
// 			{
// 			}
// 			else
// 			{
// 				local tile = this.World.getTileSquare(x, y);

// 				if (tile.IsOccupied)
// 				{
// 				}
// 				else if (tile.Type != this.Const.World.TerrainType.Forest && tile.Type != this.Const.World.TerrainType.SnowyForest && tile.Type != this.Const.World.TerrainType.LeaveForest && tile.Type != this.Const.World.TerrainType.AutumnForest)
// 				{
// 				}
// 				else
// 				{
// 					local next = true;

// 					foreach( s in settlements )
// 					{
// 						local d = s.getTile().getDistanceTo(tile);

// 						if (d > 6 && d < 15)
// 						{
// 							local path = this.World.getNavigator().findPath(tile, s.getTile(), navSettings, 0);

// 							if (!path.isEmpty())
// 							{
// 								next = false;
// 								nearestVillage = s;
// 								break;
// 							}
// 						}
// 					}

// 					if (next)
// 					{
// 					}
// 					else
// 					{
// 						spawnTile = tile;
// 						break;
// 					}
// 				}
// 			}
// 		}
// 		while(1);

// 		this.World.State.m.Player = this.World.spawnEntity("scripts/entity/world/player_party", spawnTile.Coords.X, spawnTile.Coords.Y);
// 		this.World.Assets.updateLook(10);
// 		this.World.getCamera().setPos(this.World.State.m.Player.getPos());
// 		/* local f = nearestVillage.getFactionOfType(this.Const.FactionType.NobleHouse);
// 		f.addPlayerRelation(-20.0, "Heard rumors of you poaching in their woods");
// 		this.Time.scheduleEvent(this.TimeUnit.Real, 1000, function ( _tag )
// 		{
// 			this.Music.setTrackList(this.Const.Music.IntroTracks, this.Const.Music.CrossFadeTime);
// 			this.World.Events.fire("event.rangers_scenario_intro");
// 		}, null); */
// 	}

// 	function onInit()
// 	{
// 		this.starting_scenario.onInit();

// 		if (this.World.State.getPlayer() != null)
// 		{
// 			this.World.State.getPlayer().m.BaseMovementSpeed = 111;
// 		}
// 	}

// });