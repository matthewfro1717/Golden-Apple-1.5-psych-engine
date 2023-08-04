

function onCreate()
	-- background shit
	makeLuaSprite('corrupted/sky', 'corrupted/sky', -600, 200);
	setLuaSpriteScrollFactor('corrupted/sky', 0.9, 0.9);
	scaleObject('corrupted/sky', 1.75, 1.75)
	addLuaSprite('corrupted/sky', false);

	makeLuaSprite('corrupted/back', 'corrupted/back', -600, 200);
	setLuaSpriteScrollFactor('corrupted/back', 0.9, 0.9);
	scaleObject('corrupted/back', 1.75, 1.75)
	addLuaSprite('corrupted/back', false);

	makeLuaSprite('corrupted/front', 'corrupted/front', -600, 200);
	setLuaSpriteScrollFactor('corrupted/front', 0.9, 0.9);
	scaleObject('corrupted/front', 1.795, 1.95)
	addLuaSprite('corrupted/front', false);
end