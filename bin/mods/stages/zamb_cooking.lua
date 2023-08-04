local shadname = "glitchEffect";
function onCreate()
    makeLuaSprite('cooking_lesson', 'cooking_lesson', 100, -1400)
    setProperty('cooking_lesson.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    screenCenter('cooking_lesson', 'x')
    addLuaSprite('cooking_lesson', false)
    initLuaShader(shadname)
	setSpriteShader('cooking_lesson', shadname)
    setShaderFloat('cooking_lesson', 'uWaveAmplitude', 0.1)
    setShaderFloat('cooking_lesson', 'uFrequency', 6)
    setShaderFloat('cooking_lesson', 'uSpeed', 3)

    
end

local elapsedtime = 0;

function onUpdatePost(elapsed)
    elapsedtime = elapsedtime + elapsed;
	setShaderFloat('cooking_lesson', 'uTime', os.clock())
    setProperty('poop.alpha', math.sin(elapsedtime) / 2.5 + 0.4);
end

function onCreatePost()
	makeLuaSprite('front 1', 'zamb_set', -300, -245);
	addLuaSprite('front 1', false)
    scaleObject('zamb_set', 1, 1)

    makeLuaSprite('front 2', 'zamb_lights', -300, -550);
	addLuaSprite('front 2', false)
    scaleObject('zamb_lights', 880, 880)

    makeLuaSprite('front 3', 'zamb_floor', -300, 460);
	addLuaSprite('front 3', false)
    scaleObject('zamb_floor', 20, 20)

end
