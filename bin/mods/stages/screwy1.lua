local shadname = "glitchEffect";
function onCreate()
    makeLuaSprite('nothin', 'nothin', -1400, -800)
    setProperty('nothin.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    screenCenter('nothin', 'x')
    addLuaSprite('nothin', false)
    initLuaShader(shadname)
	setSpriteShader('nothin', shadname)
    setShaderFloat('nothin', 'uWaveAmplitude', 0.1)
    setShaderFloat('nothin', 'uFrequency', 6)
    setShaderFloat('nothin', 'uSpeed', 3)

    
end

local elapsedtime = 0;

function onUpdatePost(elapsed)
    elapsedtime = elapsedtime + elapsed;
	setShaderFloat('nothin', 'uTime', os.clock())
    setProperty('poop.alpha', math.sin(elapsedtime) / 2.5 + 0.4);
end

function onCreatePost()
	makeLuaSprite('theGround','greengradient',-500, 100)
	addLuaSprite('theGround',true)
	setLuaSpriteScrollFactor('theGround', 1, 1)

	scaleObject('theGround', 2.25, 2.25)

end

function onCreatePost()
	makeLuaSprite('theGround','screwed/screwed_night',-1300,-1200)
	addLuaSprite('theGround',false)
	setLuaSpriteScrollFactor('theGround', 1, 1)

	scaleObject('theGround', 1.5, 1.5)

end
