local shadname = "glitchEffect";
function onCreate()
    makeLuaSprite('screwed/3djunk', 'screwed/3djunk', -300, -1300)
    setProperty('screwed/3djunk.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    screenCenter('screwed/3djunk', 'x')
    addLuaSprite('screwed/3djunk', false)
    initLuaShader(shadname)
	setSpriteShader('screwed/3djunk', shadname)
    setShaderFloat('screwed/3djunk', 'uWaveAmplitude', 0.1)
    setShaderFloat('screwed/3djunk', 'uFrequency', 6)
    setShaderFloat('screwed/3djunk', 'uSpeed', 8)

    
end

local elapsedtime = 0;

function onUpdatePost(elapsed)
    elapsedtime = elapsedtime + elapsed;
	setShaderFloat('screwed/3djunk', 'uTime', os.clock())
    setProperty('poop.alpha', math.sin(elapsedtime) / 2.5 + 0.4);
end