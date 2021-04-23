this.ptr_follow_up_effect <- this.inherit("scripts/skills/skill", {
	m = {
		DamageMalus = 50,
		ProcCount = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_follow_up";
		this.m.Name = "Follow Up";
		this.m.Description = "This character will quickly attack any enemies in range who get hit by his allies.";
		this.m.Icon = "ui/perks/ptr_follow_up.png";
		//this.m.IconMini = "ptr_follow_up_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsHidden = false;
		this.m.IsRemovedAfterBattle = true;
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
				icon = "ui/icons/damage_dealt.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + (100 - this.getCurrentMalus()) + "%[/color] Damage inflicted"
			}
		];
	}

	function onUpdate( _properties )
	{
		if (this.getContainer().getActor().isEngagedInMelee())
		{
			this.removeSelf();
			return;
		}

		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() == this.getContainer().getActor().getID())
		{
			return;
		}

		_properties.DamageTotalMult *= this.getCurrentMalus() / 100.0;

		this.logInfo("Follow up damage malus applied");
	}

	function getCurrentMalus()
	{
		return this.Math.maxf(10, this.m.DamageMalus - (this.m.ProcCount * 10));
	}

	function onTurnStart()
	{
		this.removeSelf();
	}
});
