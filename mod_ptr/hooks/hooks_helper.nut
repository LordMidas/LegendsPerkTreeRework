::PTR.HooksHelper <- {
	function goblinWeapon( _script )
	{
		if (_script == "items/weapons/greenskins/goblin_bow" ||
			_script == "items/weapons/greenskins/goblin_crossbow" ||
			_script == "items/weapons/greenskins/goblin_heavy_bow" ||
			_script == "items/weapons/named/named_goblin_heavy_bow"
			)
		{
			::mods_hookNewObject(_script, function(o) {
				o.m.FatigueOnSkillUse -= 2;
			});
		}
		else
		{
			::mods_hookNewObject(_script, function(o) {
				o.m.FatigueOnSkillUse -= 2;

				local getTooltip = ::mods_getMember(o, "getTooltip");
				o.getTooltip <- function()
				{
					local tooltip = getTooltip();
					tooltip.insert(tooltip.len() - 1,
						{
							id = 10,
							type = "text",
							icon = "ui/icons/action_points.png",
							text = "Melee attacks cost [color=" + this.Const.UI.Color.PositiveValue + "]-1[/color] Action Point"
						}
					);

					return tooltip;
				}

				local onAfterUpdateProperties = ::mods_getMember(o, "onAfterUpdateProperties");
				o.onAfterUpdateProperties <- function( _properties )
				{
					onAfterUpdateProperties(_properties);
					if (!this.getContainer().getActor().getSkills().hasSkill("racial.ptr_goblin"))
					{
						local skills = this.getSkills();
						foreach (s in skills)
						{
							if (s.isAttack() && !s.isRanged())
							{
								s.m.ActionPointCost -= 1;
							}
						}
					}
				}
			});
		}
	}

	function curvedSword( _script )
	{
		::mods_hookNewObject(_script, function(o) {
			local onUpdateProperties = ::mods_getMember(o, "onUpdateProperties");
			o.onUpdateProperties <- function(_properties)
			{
				onUpdateProperties(_properties);
				if (this.getContainer().getActor().getSkills().hasSkill("perk.mastery.sword"))
				{
					_properties.ThresholdToInflictInjuryMult *= 0.75;
				}
			}

			local onEquip = o.onEquip;
			o.onEquip = function()
			{
				onEquip();
				local riposte = ::new("scripts/skills/actives/riposte");
				riposte.isHidden <- function()
				{
					return !this.getContainer().hasSkill("perk.ptr_exploit_opening");
				}
				this.addSkill(riposte);
			}
		});
	}

	function removeRuneBlueprint( _script )
	{
		::mods_hookExactClass(_script, function(o) {
			// Overwrite create function to remove this rune from blueprints
			o.create = function ()
			{
			}
		});
	}

	function addPerkTreesToCustomPerkTree(_customPerkTree, _treesToAdd )
	{
		foreach (tree in _treesToAdd)
		{
			for (local i = 0; i < tree.Tree.len(); i++)
			{
				foreach (perk in tree.Tree[i])
				{
					_customPerkTree[i].push(perk);
				}
			}
		}
	}

	function addPerksToCustomPerkTree( _tier, _customPerkTree, _perks )
	{
		local row = _tier - 1;
		foreach (perk in _perks)
		{
			_customPerkTree[row].push(perk);
		}
	}

	function clearCustomPerkTree( _customPerkTree )
	{
		if (_customPerkTree == null)
		{
			_customPerkTree = [];
		}
		else
		{
			_customPerkTree.clear();
		}

		for (local i = 0; i < 7; i++)
		{
			local emptyArray = [];
			_customPerkTree.push(emptyArray);
		}

		return _customPerkTree;
	}
}

// List of enemies NOT hooked:
	// "entity/tactical/enemies/alp"
	// "entity/tactical/enemies/alp_shadow"
	// "entity/tactical/enemies/bandit_marksman_low"
	// "entity/tactical/enemies/goblin_shaman"
	// "entity/tactical/enemies/kobold_fighter"
	// "entity/tactical/enemies/kobold_wolfrider"
	// "entity/tactical/enemies/kraken"
	// "entity/tactical/enemies/kraken_tentacle"
	// "entity/tactical/enemies/legend_bandit_outrider"
	// "entity/tactical/enemies/legend_catapult"
	// "entity/tactical/enemies/legend_demon_alp"
	// "entity/tactical/enemies/legend_greenwood_schrat_small"
	// "entity/tactical/enemies/legend_horse"
	// "entity/tactical/enemies/legend_redback_spider"
	// "entity/tactical/enemies/legend_redback_spider_bodyguard"
	// "entity/tactical/enemies/legend_white_direwolf_bodyguard"
	// "entity/tactical/enemies/orc_warrior_low"
	// "entity/tactical/enemies/orc_young_low"
	// "entity/tactical/enemies/schrat"
	// "entity/tactical/enemies/schrat_small"
	// "entity/tactical/enemies/skeleton_lich"
	// "entity/tactical/enemies/wolf"
	// "entity/tactical/enemies/zombie_boss"
	// "entity/tactical/enemies/zombie_nomad"
	// "entity/tactical/enemies/zombie_treasure_hunter"
	// "entity/tactical/enemies/zombie_yeoman_bodyguard"
	// "entity/tactical/humans/barbarian_beastmaster"
	// "entity/tactical/humans/councilman"
	// "entity/tactical/humans/engineer"
	// "entity/tactical/humans/envoy"
	// "entity/tactical/humans/firstborn"
	// "entity/tactical/humans/noble"
	// "entity/tactical/humans/sato_manhunter"
	// "entity/tactical/humans/sato_manhunter_ranged"
	// "entity/tactical/humans/sato_manhunter_veteran"
	// "entity/tactical/humans/sato_manhunter_veteran_ranged"
	// "entity/tactical/humans/vizier"
	// "entity/tactical/humans/wildman"
