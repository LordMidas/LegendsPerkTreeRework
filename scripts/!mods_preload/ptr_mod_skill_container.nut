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

			local tree = null;
			for (local i = 0; i < 1; i++)
			{
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Axe))
				{
					tree = this.Const.Perks.AxeTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Bow))
				{
					tree = this.Const.Perks.BowTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Cleaver))
				{
					tree = this.Const.Perks.CleaverTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Crossbow))
				{
					tree = this.Const.Perks.CrossbowTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Dagger))
				{
					tree = this.Const.Perks.DaggerTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Flail))
				{
					tree = this.Const.Perks.FlailTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Hammer))
				{
					tree = this.Const.Perks.HammerTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Mace))
				{
					tree = this.Const.Perks.MaceTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Polearm))
				{
					tree = this.Const.Perks.PolearmTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Sling))
				{
					tree = this.Const.Perks.SlingsTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Spear))
				{
					tree = this.Const.Perks.SpearTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Sword))
				{
					tree = this.Const.Perks.SwordTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Staff))
				{
					tree = this.Const.Perks.StavesTree;
					break;
				}
				if (weapon.isWeaponType(this.Const.WMS.WeaponType.Throwing))
				{
					tree = this.Const.Perks.ThrowingTree;
					break;
				}
			}

			this.addPerkTree(tree, _maxTier);
		}

		o.addPerkTree <- function (_tree, _maxTier = 7)
		{
			for (local i = 0; i < _maxTier; i++)
			{
				foreach (perk in _tree.Tree[i])
				{
					local perkScript = gt.Const.Perks.PerkDefObjects[perk].Script;
					this.add(this.new(perkScript));
				}
			}
		}
	});
}
