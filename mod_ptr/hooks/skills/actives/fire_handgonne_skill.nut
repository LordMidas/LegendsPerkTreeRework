::mods_hookExactClass("skills/actives/fire_handgonne_skill", function(o) {
	o.getAffectedTiles = function( _targetTile )
	{
		local ret = [
			_targetTile
		];
		local ownTile = this.m.Container.getActor().getTile();
		local dir = ownTile.getDirectionTo(_targetTile);
		local dist = ownTile.getDistanceTo(_targetTile);
		local isTakingAim = this.getContainer().hasSkill("effects.ptr_take_aim");

		if (_targetTile.hasNextTile(dir))
		{
			local forwardTile = _targetTile.getNextTile(dir);

			if (this.Math.abs(forwardTile.Level - ownTile.Level) <= this.m.MaxLevelDifference)
			{
				ret.push(forwardTile);
			}

			if (dist < 3 && isTakingAim)
			{
				if (forwardTile.hasNextTile(dir))
				{
					forwardTile = forwardTile.getNextTile(dir);

					if (this.Math.abs(forwardTile.Level - ownTile.Level) <= this.m.MaxLevelDifference)
					{
						ret.push(forwardTile);
					}
				}
			}
		}

		local left = dir - 1 < 0 ? 5 : dir - 1;

		if (_targetTile.hasNextTile(left))
		{
			local forwardTile = _targetTile.getNextTile(left);

			if (this.Math.abs(forwardTile.Level - ownTile.Level) <= this.m.MaxLevelDifference)
			{
				ret.push(forwardTile);
			}

			if (forwardTile.hasNextTile(dir))
			{
				forwardTile = forwardTile.getNextTile(dir);

				if (this.Math.abs(forwardTile.Level - ownTile.Level) <= this.m.MaxLevelDifference)
				{
					ret.push(forwardTile);
				}
			}

			if (dist < 3 && isTakingAim)
			{
				if (forwardTile.hasNextTile(dir))
				{
					forwardTile = forwardTile.getNextTile(dir);

					if (this.Math.abs(forwardTile.Level - ownTile.Level) <= this.m.MaxLevelDifference)
					{
						ret.push(forwardTile);
					}
				}
			}
		}

		local right = dir + 1 > 5 ? 0 : dir + 1;

		if (_targetTile.hasNextTile(right))
		{
			local forwardTile = _targetTile.getNextTile(right);

			if (this.Math.abs(forwardTile.Level - ownTile.Level) <= this.m.MaxLevelDifference)
			{
				ret.push(forwardTile);
			}

			if (forwardTile.hasNextTile(dir))
			{
				forwardTile = forwardTile.getNextTile(dir);

				if (this.Math.abs(forwardTile.Level - ownTile.Level) <= this.m.MaxLevelDifference)
				{
					ret.push(forwardTile);
				}
			}

			if (dist < 3 && isTakingAim)
			{
				if (forwardTile.hasNextTile(dir))
				{
					forwardTile = forwardTile.getNextTile(dir);

					if (this.Math.abs(forwardTile.Level - ownTile.Level) <= this.m.MaxLevelDifference)
					{
						ret.push(forwardTile);
					}
				}
			}
		}

		return ret;
	}
});
