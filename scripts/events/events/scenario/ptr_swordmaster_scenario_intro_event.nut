this.ptr_swordmaster_scenario_intro_event <- this.inherit("scripts/events/event", {
	m = {},
	function create()
	{
		this.m.ID = "event.ptr_swordmaster_scenario_intro";
		this.m.IsSpecial = true;
		this.m.Screens.push({
			ID = "A",
        	Text = "[img]gfx/ui/events/event_17.png[/img]Breathe.\n\nThe blade whistles through the air and impacts the dummy.\n\nAgain.\n\nYou grip the hilt tightly, but the hilt doesn\'t have the same feel to it as it did all those years ago. Years of training and tutorship of long passed mentors carved you into the master you are today, but was all of this just for yourself? Sellswords and commoners across the land spoke of the use of axes, hammers and sharp bolts from afar. None of it interested you, however... the allure of a sword was what filled your eyes. The way it slithered through the air and found its mark with uncanny ease put the finest dagger to shame. The sound of it slicing the air and striking its target sweeter than any minstrel\'s song.\n\nThe sword and how to use it is all you ever wanted... and now it\'s all you have left.\n\nThis journey has been years in the making and yet you somehow managed to circle back around and find yourself where you started as a child - attacking training dummies in the woods.\nMaybe it\'s time to pass it all on? The youth are disinterested in the sword and see it only as a weapon that belongs on their belt, not in their two hands the old gods granted them!\n\nThis journey has been a long time in the making, however you were surprised it took you this long to take the first step. Your youth may be behind you but your skill and renown walks far ahead of you across the land. There is a lot of untapped potential out there and those eager and willing to learn, even if it does put them at such high risk. One day all of it will be gone, but death hasn\'t plucked up the courage to show his face... yet.", 
			Image = "",
			Banner = "",
			List = [],
			Characters = [],
			Options = [
				{
					Text = "It is time...",
					function getResult( _event )
					{
						return 0;
					}

				}
			],
			function start( _event )
			{
				local locations = this.World.EntityManager.getLocations();
				foreach (l in locations)
				{
					if (l.getTypeID() == "location.fountain_of_youth")
					{
						this.logInfo("Removing the Fountain of Youth (Grotesque Tree) location");
						this.World.EntityManager.removeLocation(l);
					}
				}
			}
		});
	}

	function onUpdateScore()
	{
		return;
	}

	function onPrepare()
	{
		this.m.Title = "Full Circle";
	}

	function onPrepareVariables( _vars )
	{
		_vars.push([
			"home",
			this.World.Flags.get("HomeVillage")
		]);
	}

	function onClear()
	{
	}

});