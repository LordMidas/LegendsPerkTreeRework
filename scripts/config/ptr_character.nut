::Const.ProjectileType.FlamingArrow <- ::Const.ProjectileType.COUNT;
::Const.ProjectileType.COUNT = ::Const.ProjectileType.COUNT + 1;

local flamingArrowsDecals = [];
foreach (decal in ::Const.ProjectileDecals[this.Const.ProjectileType.Arrow])
{
	flamingArrowsDecals.push(decal);
}

::Const.ProjectileDecals.push(flamingArrowsDecals);

::Const.ProjectileSprite.push("projectile_flaming_arrow");

::Const.Combat.OpportunistUsedTiles <- [];
