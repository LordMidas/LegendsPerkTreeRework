this.ptr_from_all_sides_effect <- this.inherit("scripts/skills/skill", {
	m = {
		Count = 1
	},
	function create()
	{
		this.m.ID = "effects.ptr_from_all_sides";
		this.m.Name = "From all Sides";
		this.m.Description = "This character is being hit by a spinning weapon, which seems to be coming from all sides. Very confusing.";
		this.m.Icon = "ui/perks/ptr_from_all_sides.png";
		//this.m.IconMini = "ptr_from_all_sides_effect_mini";
		this.m.Overlay = "ptr_from_all_sides_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getName()
	{
		if (this.m.Count <= 1)
		{
			return this.m.Name;
		}
		else
		{
			return this.m.Name + " (x" + this.m.Count + ")";
		}
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.Count * 5 + "%[/color] Melee Defense"
			},
			{
				id = 11,
				type = "text",
				icon = "ui/icons/ranged_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.Count * 5 + "%[/color] Ranged Defense"
			}
		];
	}

	function onRefresh()
	{
		++this.m.Count;
		this.spawnIcon("ptr_from_all_sides", this.getContainer().getActor().getTile());
	}

	function onUpdate( _properties )
	{
		_properties.MeleeDefenseMult = this.Math.maxf(0.0, _properties.MeleeSkillMult - 0.05 * this.m.Count);
		_properties.RangedDefenseMult = this.Math.maxf(0.0, _properties.RangedSkillMult - 0.05 * this.m.Count);
	}

	function onTurnStart()
	{
		this.removeSelf();
	}
});

