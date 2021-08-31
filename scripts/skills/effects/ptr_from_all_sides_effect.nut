this.ptr_from_all_sides_effect <- this.inherit("scripts/skills/skill", {
	m = {
		Malus = 0,
		MalusForHit = 3,
		MalusForHeadshot = 6,
		MalusForMiss = 1,
		SkillCount = 0,
		LastAttackerID = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_from_all_sides";
		this.m.Name = "From all Sides";
		this.m.Description = "This character is receiving attacks which seem to be coming from all sides - very confusing!";
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
		return this.m.Malus > 0 ? this.m.Name + " (x" + this.m.Malus + ")" : this.m.Name;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.extend(
		[
			{
				id = 10,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.Malus + "[/color] Melee Defense"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/ranged_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.Malus + "[/color] Ranged Defense"
			}
		]);

		return tooltip;
	}

	function checkAndUpdateAttackerInfo(_attacker)
	{
		if (this.m.SkillCount == this.Const.SkillCounter && this.m.LastAttackerID == _attacker.getID())
		{
			return false;
		}

		local perk = _attacker.getSkills().getSkillByID("perk.ptr_from_all_sides");
		if (perk == null || !perk.isEnabled())
		{
			return false;
		}

		this.m.SkillCount = this.Const.SkillCounter;
		this.m.LastTargetID = _attacker.getID();

		return true;
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (_skill != null && _skill.isAttack() && this.checkAndUpdateAttackerInfo())
		{
			this.m.Malus += _hitInfo.BodyPart == this.Const.BodyPart.Head ? this.m.MalusForHeadshot : this.m.MalusForHit;
		}
	}

	function onMissed( _attacker, _skill )
	{
		if (_skill != null && _skill.isAttack() && this.checkAndUpdateAttackerInfo())
		{
			this.m.Malus += this.m.MalusForMiss;
		}
	}

	function onRefresh()
	{
		this.spawnIcon("ptr_from_all_sides_effect", this.getContainer().getActor().getTile());
	}

	function onUpdate( _properties )
	{
		_properties.MeleeDefense -= this.m.Malus;
		_properties.RangedDefense -= this.m.Malus;
	}

	function onTurnStart()
	{
		this.removeSelf();
	}
});
