local shadname = "glitchEffect";
function onCreate()
    makeLuaSprite('screwed/dya', 'screwed/dya', -500, -1500)
    setProperty('screwed/dya.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    screenCenter('screwed/dya', 'x')
    addLuaSprite('screwed/dya', false)
    initLuaShader(shadname)
	setSpriteShader('screwed/dya', shadname)
    setShaderFloat('screwed/dya', 'uWaveAmplitude', 0.1)
    setShaderFloat('screwed/dya', 'uFrequency', 6)
    setShaderFloat('screwed/dya', 'uSpeed', 8)

    
end

local elapsedtime = 0;

function onUpdatePost(elapsed)
    elapsedtime = elapsedtime + elapsed;
	setShaderFloat('screwed/dya', 'uTime', os.clock())
    setProperty('poop.alpha', math.sin(elapsedtime) / 2.5 + 0.4);
end