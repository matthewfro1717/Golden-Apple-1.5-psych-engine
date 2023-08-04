

function onCreate()
	-- background shit
	makeLuaSprite('enforcers/chalkboard', 'enforcers/chalkboard', -600, 400);
	setLuaSpriteScrollFactor('enforcers/chalkboard', 1, 1);
	scaleObject('enforcers/chalkboard', 1.75, 1.75)
	addLuaSprite('enforcers/chalkboard', false);
end