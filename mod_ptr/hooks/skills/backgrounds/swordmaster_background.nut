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
		if (this.m.CustomPerkTree == null)
		{
			local ret = buildPerkTree();
			local masteryRow = this.getPerkTree()[3];
			for (local i = masteryRow.len() - 1; i >= 0; i--)
			{
				if (masteryRow[i].ID != "perk.mastery.sword" && masteryRow[i].ID.find("mastery") != null)
				{
					this.removePerk(::Const.Perks.PerkDefs[masteryRow[i].Const]);
				}
			}

			return ret;
		}

		return buildPerkTree();
	}
});
