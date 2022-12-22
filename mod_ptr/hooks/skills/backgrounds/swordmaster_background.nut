::mods_hookExactClass("skills/backgrounds/swordmaster_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.IsSet <- false;

		this.m.SpecialPerkMultipliers = [
			[-1, ::Const.Perks.PerkDefs.BFFencer]
		];

		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.AgileTree],
			[2, ::Const.Perks.CalmTree],
			[3, ::Const.Perks.ViciousTree],
			[0.5, ::Const.Perks.FastTree],
			[0.5, ::Const.Perks.OrganisedTree],
			[3, ::Const.Perks.UnstoppableTree],
			[0, ::Const.Perks.HeavyArmorTree],
			[0.66, ::Const.Perks.ShieldTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.ThrowingTree],
			[2, ::Const.Perks.PolearmTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.SwordmasterProfessionTree
			]
			Enemy = [
				::Const.Perks.SwordmastersTree
			],
			Traits = [
				::Const.Perks.TalentedTree
			],
			Weapon = [
				::Const.Perks.SwordTree
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			],
			Enemy = [
				::Const.Perks.SwordmastersTree
			]
		};
	}

	local onAdded = o.onAdded;
	o.onAdded = function()
	{
		onAdded();
		this.getContainer().add(this.new("scripts/skills/effects/ptr_swordmasters_finesse_effect"));
	}

	local buildPerkTree = ::mods_getMember(o, "buildPerkTree");
	o.buildPerkTree <- function()
	{
		if (this.m.CustomPerkTree != null) return buildPerkTree();

		local ret = buildPerkTree();
		foreach (row in this.getPerkTree())
		{
			foreach (perk in row)
			{
				for (local i = row.len() - 1; i >= 0; i--)
				{
					switch (row[i].ID)
					{
						case "perk.mastery.axe":
						case "perk.mastery.bow":
						case "perk.mastery.cleaver":
						case "perk.mastery.crossbow":
						case "perk.mastery.dagger":
						case "perk.mastery.flail":
						case "perk.mastery.hammer":
						case "perk.mastery.mace":
						case "perk.mastery.polearm":
						case "perk.mastery.spear":
						case "perk.mastery.throwing":
						case "perk.legend_mastery_slings":
						case "perk.legend_mastery_staves":
							this.removePerk(::Const.Perks.PerkDefs[row[i].Const]);
							break;
					}
				}
			}
		}

		return ret;
	}
});
