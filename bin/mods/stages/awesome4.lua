local shadname = "glitchEffect";
function onCreate()
    makeLuaSprite('wheels/redness', 'wheels/redness', -600, 300)
    scaleObject('wheels/redness', 6, 6)

    setProperty('wheels/redness.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    screenCenter('wheels/redness', 'x')
    addLuaSprite('wheels/redness', false)
    initLuaShader(shadname)
	setSpriteShader('wheels/redness', shadname)
    setShaderFloat('wheels/redness', 'uWaveAmplitude', 0.1)
    setShaderFloat('wheels/redness', 'uFrequency', 6)
    setShaderFloat('wheels/redness', 'uSpeed', 4)

    
end

local elapsedtime = 0;

function onUpdatePost(elapsed)
    elapsedtime = elapsedtime + elapsed;
	setShaderFloat('wheels/redness', 'uTime', os.clock())
    setProperty('poop.alpha', math.sin(elapsedtime) / 2.5 + 0.4);
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