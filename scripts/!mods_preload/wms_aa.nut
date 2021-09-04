local modID = "mod_WMS";
::mods_registerMod(modID, 1.4, "Weapon Mastery Standardization 1.4.4");

local gt = this.getroottable();

gt.Const.WMS <- {};

::mods_queue(modID, "mod_MSU, >mod_legends", function() {
	gt.Const.WMS.modActor();
	gt.Const.WMS.modPerks();
	gt.Const.WMS.modWeapon();
	gt.Const.WMS.modWeapons();

	if ("LegendMod" in gt.Const)
	{
		gt.Const.Perks.SwordTree.Tree[3] = [gt.Const.Perks.PerkDefs.SpecSword];
		gt.Const.Perks.GreatSwordTree.Tree[3] = [gt.Const.Perks.PerkDefs.SpecSword];

		gt.Const.Strings.PerkName.LegendSpecGreatSword = "Sword Mastery";
		gt.Const.Strings.PerkDescription.LegendSpecGreatSword = "Master the art of fighting with a sword. Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.\n\nRiposte no longer has a penalty to hitchance.\n\nGash has a [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] lower threshold to inflict injuries.\n\nSlash, Split, Swing, Overhead Strike and Great Slash gain [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit.";
		this.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecGreatSword].Name = gt.Const.Strings.PerkName.LegendSpecGreatSword;
		this.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecGreatSword].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecGreatSword;

		gt.Const.Strings.PerkName.SpecSword = "Sword Mastery";
		gt.Const.Strings.PerkDescription.SpecSword = "Master the art of fighting with a sword. Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.\n\nRiposte no longer has a penalty to hitchance.\n\nGash has a [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] lower threshold to inflict injuries.\n\nSlash, Split, Swing, Overhead Strike and Great Slash gain [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit.";
		this.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.SpecSword].Name = gt.Const.Strings.PerkName.SpecSword;
		this.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.SpecSword].Tooltip = gt.Const.Strings.PerkDescription.SpecSword;
	}
});
