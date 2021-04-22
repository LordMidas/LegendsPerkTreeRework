this.ptr_arrow_to_the_knee_attack_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_arrow_to_the_knee_attack";
		this.m.Name = "Arrow to the Knee";
		this.m.Description = "This character is aiming their next ranged attack at their target's knee, attempting to reduce their defenses and mobility.";
		this.m.Icon = "ui/perks/ptr_arrow_to_the_knee.png";
		//this.m.IconMini = "ptr_arrow_to_the_knee_attack_effect_mini";
		this.m.SoundOnHit = [
			"sounds/combat/cleave_hit_hitpoints_01.wav",
			"sounds/combat/cleave_hit_hitpoints_02.wav",
			"sounds/combat/cleave_hit_hitpoints_03.wav"
		];
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function isHidden()
	{
		return this.isGarbage();
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
				icon = "ui/icons/special.png",
				text = "Target will have [color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] Melee and Ranged defense for 1 turn."
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Target will require [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] additional Action Points per tile moved for 1 turn."
			}
		];
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!this.isGarbage() && _skill.isAttack() && _targetEntity.isAlive() && !_targetEntity.isDying())
		{
			local user = this.getContainer().getActor();

			if (this.m.SoundOnHit.len() > 0)
			{
				this.Sound.play(this.m.SoundOnHit[this.Math.rand(0, this.m.SoundOnHit.len() - 1)], this.Const.Sound.Volume.Skill, _targetEntity.getPos());
			}

			local effect = this.new("scripts/skills/effects/ptr_arrow_to_the_knee_debuff_effect");
			_targetEntity.getSkills().add(effect);
		}

		this.removeSelf();
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		this.removeSelf();
	}
});
