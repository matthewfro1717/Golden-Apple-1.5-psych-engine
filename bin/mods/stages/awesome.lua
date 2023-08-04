

function onCreate()
	-- background shit
	makeLuaSprite('wheels/moldy_shit', 'wheels/moldy_shit', -500, 300);
	setLuaSpriteScrollFactor('wheels/moldy_shit', 1, 1);
	scaleObject('wheels/moldy_shit', 6, 6)
	addLuaSprite('wheels/moldy_shit', false);
end

function onCreatePost()
    makeLuaSprite('bestgf', 'characters/best_gf', getProperty('gf.x') * 1.25, getProperty('gf.y') * 1.75)
    setProperty('bestgf.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    setProperty('bestgf.scale.x', 2)
    setProperty('bestgf.scale.y', 2)
    addLuaSprite('bestgf', false)
    setProperty('gf.visible', false)

    setProperty('boyfriend.x', getProperty('boyfriend.x') -75)
    setProperty('dad.x', getProperty('dad.x') -75)
end