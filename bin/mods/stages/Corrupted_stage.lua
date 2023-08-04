

function onCreate()
	-- background shit
	makeLuaSprite('stage/stageback', 'stage/stageback', -600, 0);
	setLuaSpriteScrollFactor('stage/stageback', 0.6, 0.6);
	scaleObject('stage/stageback', 1, 1)
	addLuaSprite('stage/stageback', false);

	makeLuaSprite('stage/stagefront', 'stage/stagefront', -600, 0);
	setLuaSpriteScrollFactor('stage/stagefront', 0.6, 0.6);
	scaleObject('stage/stagefront', 1, 1)
	addLuaSprite('stage/stagefront', false);

	makeLuaSprite('stage/stagecurtains', 'stage/stagecurtains', -600, 0);
	setLuaSpriteScrollFactor('stage/stagecurtains', 0.6, 0.6);
	scaleObject('stage/stagecurtains', 1, 1)
	addLuaSprite('stage/stagecurtains', false);

	makeLuaSprite('stage/stage_light', 'stage/stage_light', -600, 0);
	setLuaSpriteScrollFactor('stage/stage_light', 0.6, 0.6);
	scaleObject('stage/stage_light', 1, 1)
	addLuaSprite('stage/stage_light', false);
end