this.ptr_intimidated_effect <- this.inherit("scripts/skills/skill", {
	m = {
		Intimidators = [],
		TotalIntimidation = 0,
		ResolveMalusPercentage = 10
	},
	function create()
	{
		this.m.ID = "effects.ptr_intimidated";
		this.m.Name = "Intimidated";
		this.m.Description = "This character has recently faced some very intimidating attacks.";
		this.m.Icon = "ui/perks/ptr_intimidate.png";
		//this.m.IconMini = "ptr_intimidated_effect_mini";
		this.m.Overlay = "ptr_intimidated_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
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
				icon = "ui/icons/bravery.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.getMalus() + "[/color] Resolve"
			}
		];
	}

	function getMalus()
	{
		return this.Math.max(1, this.Math.floor(this.m.TotalIntimidation * this.m.ResolveMalusPercentage * 0.01));
	}

	function onUpdate( _properties )
	{
		_properties.Bravery -= this.getMalus();
	}

	function addIntimidator(_actorID)
	{
		if (!this.hasIntimidator(_actorID))
		{
			local e = this.Tactical.getEntityByID(_actorID);
			if (e != null)
			{
				this.m.Intimidators.push(_actorID);
				this.m.TotalIntimidation += e.getCurrentProperties().getMeleeSkill();
				if (this.m.Intimidators.len() > 1)
				{
					this.spawnIcon("ptr_intimidated_effect", this.getContainer().getActor().getTile());
				}
			}
		}
	}

	function hasIntimidator(_actorID)
	{
		return this.m.Intimidators.find(_actorID) != null;
	}

	function onTurnEnd()
	{
		this.removeSelf();
	}
});
