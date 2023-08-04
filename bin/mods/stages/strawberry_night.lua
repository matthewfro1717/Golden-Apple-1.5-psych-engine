local shadname = "glitchEffect";
function onCreate()
    makeLuaSprite('sky_night', 'sky_night', -500, -400)
    scaleObject('sky_night', 1.1, 1.1)
    setScrollFactor('sky_night', 0, 0)
    setProperty('sky_night.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    screenCenter('sky_night', 'x')
    addLuaSprite('sky_night', false)
    initLuaShader(shadname)
	setSpriteShader('sky_night', shadname)
    setShaderFloat('sky_night', 'uWaveAmplitude', 0.1)
    setShaderFloat('sky_night', 'uFrequency', 6)
    setShaderFloat('sky_night', 'uSpeed', 5)

    
end

local elapsedtime = 0;

function onUpdatePost(elapsed)
    elapsedtime = elapsedtime + elapsed;
	setShaderFloat('sky_night', 'uTime', os.clock())
    setProperty('poop.alpha', math.sin(elapsedtime) / 2.5 + 0.4);
end
local elapsedtime = 0;

function onUpdatePost(elapsed)
    elapsedtime = elapsedtime + elapsed;
	setShaderFloat('sky_night', 'uTime', os.clock())
    setProperty('poop.alpha', math.sin(elapsedtime) / 2.5 + 0.4);
end