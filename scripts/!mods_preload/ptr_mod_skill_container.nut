local gt = this.getroottable();

gt.Const.PTR.modSkillContainer <- function()
{
	::mods_hookNewObject("skills/skill_container", function(o) {
		o.getArrayOfNegativeStatusEffects <- function()
		{
			local ret = [];

			foreach (skill in this.m.Skills)
			{
				if (skill.isGarbage())
				{
					continue;
				}

				if (skill.getID() == "effects.sleeping" ||
				 		skill.getID() == "effects.stunned" ||
						skill.getID() == "effects.dazed" ||
						skill.getID() == "effects.legend_dazed" ||
						skill.getID() == "effects.net" ||
						skill.getID() == "effects.legend_grappled" ||
						skill.getID() == "effects.staggered" ||
						skill.getID() == "effects.web" ||
						skill.getID() == "effects.legend_baffled" ||
						skill.getID() == "effects.rooted" ||
						skill.getID() == "effects.distracted" ||
						skill.getID() == "effects.debilitated" ||
						skill.getID() == "effects.insect_swarm"
						)
				{
					ret.push(skill);
				}
			}

			return ret;
		}

		o.addTreeOfEquippedWeapon <- function(_maxTier = 7)
		{
			local weapon = this.getActor().getMainhandItem();
			if (weapon == null)
			{
				return;
			}

			local am = weapon.getApplicableMasteries();
			if (am.len() == 0)
			{
				return;
			}

			local tree = null;
			switch (am[0])
			{
				case this.Const.WMS.Mastery.Axe:
					tree = this.Const.Perks.AxeTree;
				break;
				case this.Const.WMS.Mastery.Bow:
					tree = this.Const.Perks.BowTree;
					break;
				case this.Const.WMS.Mastery.Cleaver:
					tree = this.Const.Perks.CleaverTree;
					break;
				case this.Const.WMS.Mastery.Crossbow:
				case this.Const.WMS.Mastery.Firearm:
					tree = this.Const.Perks.CrossbowTree;
					break;
				case this.Const.WMS.Mastery.Dagger:
					tree = this.Const.Perks.DaggerTree;
					break;
				case this.Const.WMS.Mastery.Flail:
					tree = this.Const.Perks.FlailTree;
					break;
				case this.Const.WMS.Mastery.Hammer:
					tree = this.Const.Perks.HammerTree;
					break;
				case this.Const.WMS.Mastery.Mace:
					tree = this.Const.Perks.MaceTree;
					break;
				case this.Const.WMS.Mastery.Polearm:
					tree = this.Const.Perks.PolearmTree;
					break;
				case this.Const.WMS.Mastery.Sling:
					tree = this.Const.Perks.SlingTree;
					break;
				case this.Const.WMS.Mastery.Spear:
					tree = this.Const.Perks.SpearTree;
					break;
				case this.Const.WMS.Mastery.Sword:
					tree = this.Const.Perks.SwordTree;
					break;
				case this.Const.WMS.Mastery.Staff:
					tree = this.Const.Perks.StavesTree;
					break;
				case this.Const.WMS.Mastery.Throwing:
					tree = this.Const.Perks.ThrowingTree;
					break;
			}

			this.addPerkTree(tree, _maxTier);
		}

		o.addPerkTree <- function (_tree, _maxTier = 7)
		{
			for (local i = 0; i < _maxTier; i++)
			{
				foreach (row in _tree.Tree)
				{
					foreach (perk in row)
					{
						local perkScript = gt.Const.Perks.PerkDefObjects[perk].Script;
						this.add(this.new(perkScript));
					}
				}
			}
		}
	});
}
