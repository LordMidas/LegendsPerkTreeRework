::PTR.addSettings <- function()
{
	local combat = ::PTR.Mod.ModSettings.addPage("Combat");

	combat.addElement(::MSU.Class.SettingsTitle("Title_IDS", "Immersive Damage System (IDS)"));
	combat.addElement(::MSU.Class.SettingsDivider("Divider_IDS"));
	local IDS_Enable = combat.addElement(::MSU.Class.BooleanSetting("IDS_Enable", true, "Enable IDS", "Enables the Immersive Damage System which scales damage reduction based on hit chance."));
	local IDS_MinReduction = combat.addElement(::MSU.Class.RangeSetting("IDS_MinReduction", ::PTR.ImmersiveDamage.MinReduction, 0, 100, 1, "Minimum Reduction", "The minimum damage reduction that IDS can apply to an attack."));
	local IDS_MaxReduction = combat.addElement(::MSU.Class.RangeSetting("IDS_MaxReduction", ::PTR.ImmersiveDamage.MinDamageMult, 0, 100, 1, "Maximum Reduction", "The maximum damage reduction that IDS can apply to an attack."));
	local IDS_MinHitChance = combat.addElement(::MSU.Class.RangeSetting("IDS_MinHitChance", ::PTR.ImmersiveDamage.MinHitChance, 0, 100, 1, "Lower Hit-Chance Threshold", "Any hit chance below this has the same damage spread as this hit chance."));
	local IDS_MaxHitChance = combat.addElement(::MSU.Class.RangeSetting("IDS_MaxHitChance", ::PTR.ImmersiveDamage.MaxHitChance, 0, 100, 1, "Upper Hit-Chance Threshold", "Any hit chance above this has the same damage spread as this hit chance."));
	local IDS_ChanceFullDamage = combat.addElement(::MSU.Class.RangeSetting("IDS_ChanceFullDamage", ::PTR.ImmersiveDamage.ChanceFullDamage, 0, 100, 1, "Full Damage Chance (Always)", "All hits have this much chance to have no damage reduction from IDS, regardless of the hit-chance."));
	local IDS_ChanceCriticalFailure = combat.addElement(::MSU.Class.RangeSetting("IDS_ChanceCriticalFailure", ::PTR.ImmersiveDamage.ChanceCriticalFailure, 0, 100, 1, "Critical Failure Chance (Always)", "All hits have this much chance to have the maximum damage reduction from IDS, regardless of the hit-chance."));
	combat.addElement(::MSU.Class.ButtonSetting("IDS_ResetDefault", null, "Reset", "Reset all IDS settings to their Default values")).addCallBack(function() {
		IDS_Enable.set(true);
		IDS_MinReduction.set(::PTR.ImmersiveDamage.MinReduction);
		IDS_MaxReduction.set(::PTR.ImmersiveDamage.MaxReduction);
		IDS_MinHitChance.set(::PTR.ImmersiveDamage.MinHitChance);
		IDS_MaxHitChance.set(::PTR.ImmersiveDamage.MaxHitChance);
		IDS_ChanceFullDamage.set(::PTR.ImmersiveDamage.ChanceFullDamage);
		IDS_ChanceCriticalFailure.set(::PTR.ImmersiveDamage.ChanceCriticalFailure);
	});
}
