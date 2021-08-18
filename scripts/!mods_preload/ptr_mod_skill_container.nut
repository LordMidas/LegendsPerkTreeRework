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

			local trees = [];

			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Axe))
			{
				trees.push(this.Const.Perks.AxeTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Bow))
			{
				trees.push(this.Const.Perks.BowTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Cleaver))
			{
				trees.push(this.Const.Perks.CleaverTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Crossbow))
			{
				trees.push(this.Const.Perks.CrossbowTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Dagger))
			{
				trees.push(this.Const.Perks.DaggerTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Flail))
			{
				trees.push(this.Const.Perks.FlailTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Hammer))
			{
				trees.push(this.Const.Perks.HammerTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Mace))
			{
				trees.push(this.Const.Perks.MaceTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Polearm))
			{
				trees.push(this.Const.Perks.PolearmTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Sling))
			{
				trees.push(this.Const.Perks.SlingsTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Spear))
			{
				trees.push(this.Const.Perks.SpearTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Sword))
			{
				trees.push(this.Const.Perks.SwordTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Staff))
			{
				trees.push(this.Const.Perks.StavesTree);
			}
			if (weapon.isWeaponType(this.Const.WMS.WeaponType.Throwing))
			{
				trees.push(this.Const.Perks.ThrowingTree);
			}

			if (trees.len() == 0)
			{
				return;
			}

			this.addPerkTree(trees[this.Math.rand(0, trees.len() - 1)], _maxTier);
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
