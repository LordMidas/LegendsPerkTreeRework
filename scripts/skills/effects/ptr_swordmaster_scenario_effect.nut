this.ptr_swordmaster_scenario_effect <- this.inherit("scripts/skills/skill", {
	m = {
		WrongWeaponName = null,
		FreePerkLevels = [],
		IsSet = false,
		IsPlayer = false,
		SwordPerkDefs = [
			this.Const.Perks.PerkDefs.PTRExploitOpening,
			this.Const.Perks.PerkDefs.PTRFluidWeapon,
			this.Const.Perks.PerkDefs.SpecSword,
			this.Const.Perks.PerkDefs.PTRTempo,
			this.Const.Perks.PerkDefs.PTRKata,
			this.Const.Perks.PerkDefs.PTREnGarde
		],
		SwordPerkIds = [
			"perk.ptr_exploit_opening",
			"perk.ptr_fluid_weapon",
			"perk.mastery.sword",
			"perk.ptr_tempo",
			"perk.ptr_kata",
			"perk.ptr_en_garde"
		],
		PerkNames = [
			"Exploit Opening",
			"Fluid Weapon",
			"Sword Mastery",
			"Tempo",
			"Kata",
			"En garde"
		]
	},
	function create()
	{
		this.m.ID = "effects.ptr_swordmaster_scenario";
		this.m.Name = "Swordmaster\'s Training";
		this.m.Description = "This character is being trained by a highly accomplished swordmaster, and gains increased combat effectiveness when wielding a sword. This effect becomes stronger with each level.";
		this.m.Icon = "skills/ptr_swordmaster_scenario.png";				
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;		
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		if (!this.isEnabled())
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/warning.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]Requires a Sword to be equipped. Hybrid weapons do not count.[/color]"
			});
		}
		else
		{
			local level = this.getContainer().getActor().getLevel();
			if (this.m.IsPlayer)
			{
				level *= 2;
			}

			tooltip.extend([
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_skill.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + level + "[/color] Melee Skill"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + level + "[/color] Melee Defense"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/initiative.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + level + "[/color] Initiative"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/direct_damage.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + level + "%[/color] damage ignores armor"
				}
			]);

			if (!this.m.IsPlayer && this.m.FreePerkLevels.len() != 0 && this.getContainer().getSkillsByFunction(this, @(_skill) this.m.SwordPerkIds.find(_skill) != null).len() != this.m.SwordPerkIds.len())
			{
				local potentialPerks = "";

				for (local i = this.m.SwordPerkIds.len() - this.m.FreePerkLevels.len(); i < 6; i++)
				{
					potentialPerks += this.m.PerkNames[i] + ", ";
				}

				potentialPerks = potentialPerks.slice(0, -2);

				tooltip.push({
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Upon gaining a level, has a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to gain a free perk from the Sword perk group. [color=" + this.Const.UI.Color.PositiveValue + "]Potential Perks:[/color] " + potentialPerks
				});
			}
		}

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/warning.png",
			text = "Will get very angry if anyone in the company uses a melee weapon other than a Sword in combat"
		});

		return tooltip;
	}

	function isEnabled()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && this.isValidWeapon(weapon))
		{
			return true;
		}

		return false;
	}

	function onAdded()
	{
		if (this.getContainer().getActor().getFlags().get("IsPlayerCharacter") == true)
		{
			this.m.IsPlayer = true;
			this.m.Name = "Swordmaster\'s Finesse";
			this.m.Description = "This character is a renowned swordmaster - literally the stuff of legends. This effect becomes stronger with each level.";
			this.m.Icon = "skills/ptr_swordmaster_scenario_player.png"
			return;
		}

		if (!this.m.IsSet)
		{
			local currLevel = this.getContainer().getActor().getLevel();

			foreach (i, perk in this.m.SwordPerkDefs)
			{
				if (this.Math.rand(1, 100) <= 50)
				{
					this.m.FreePerkLevels.push( { Success = true, Index = i } );
				}	
				else
				{
					this.m.FreePerkLevels.push( { Success = false, Index = i } );
				}
			}
		}
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();
		if (this.isEnabled())
		{
			local level = actor.getLevel();
			if (this.m.IsPlayer)
			{
				level *= 2;
			}
			_properties.MeleeSkill += level;
			_properties.MeleeDefense += level;
			_properties.Initiative += level;
			_properties.DamageDirectAdd += this.Math.min(25, level) * 0.01;
		}

		local weapon = actor.getMainhandItem();
		if (actor.isPlacedOnMap() && weapon != null && !this.isValidWeapon(weapon))
		{
			this.m.WrongWeaponName = weapon.getName();
		}
	}

	function isValidWeapon( _weapon )
	{
		if (!_weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon) || _weapon.getID() == "weapon.player_banner")
		{
			return true;
		}

		if (_weapon.isWeaponType(this.Const.Items.WeaponType.Sword, true) || _weapon.isWeaponType(this.Const.Items.WeaponType.BFFencing))
		{
			return true;
		}

		return false;
	}

	function onUpdateLevel()
	{
		if (this.m.FreePerkLevels.len() > 0)
		{
			local actor = this.getContainer().getActor();
			if (this.m.FreePerkLevels[0].Success)
			{
				local perkDef = this.m.SwordPerkDefs[this.m.FreePerkLevels[0].Index];
				this.getContainer().add(this.new(this.Const.Perks.PerkDefObjects[perkDef].Script));
				actor.getBackground().addPerk(perkDef, this.m.FreePerkLevels[0].Index + 1);
			}		

			this.m.FreePerkLevels.remove(0);
		}
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		if (this.m.WrongWeaponName != null)
		{
			local roster = this.World.getPlayerRoster().getAll();
			foreach (bro in roster)
			{
				bro.worsenMood(99.0, "Made someone use " + this.m.WrongWeaponName + " instead of Sword!");
			}
			this.m.WrongWeaponName = null;
		}
	}

	function onSerialize(_out)
	{
		this.skill.onSerialize(_out);
		_out.writeU8(this.m.FreePerkLevels.len());
		foreach (level in this.m.FreePerkLevels)
		{
			_out.writeBool(level.Success);
			_out.writeU32(level.Index);
		}
	}

	function onDeserialize(_in)
	{
		this.skill.onDeserialize(_in);
		this.m.IsSet = true;
		this.m.FreePerkLevels = [];		
		local size = _in.readU8();		
		for (local i = 0; i < size; i++)
		{
			this.m.FreePerkLevels.push(
				{
					Success = _in.readBool(),
					Index = _in.readU32()
				}
			);			
		}
	}
});
