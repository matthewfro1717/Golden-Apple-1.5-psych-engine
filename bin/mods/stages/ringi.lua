function onCreatePost()
	makeLuaSprite('metal', 'metal', -1280, -680)
	addLuaSprite('metal')
	scaleObject('metal',1.25, 1.25)
	setScrollFactor('metal',0, 0)

	if shadersEnabled then
	initLuaShader('metal', 'glitchEffect')
	setSpriteShader('metal', 'glitchEffect')
	setShaderFloat('metal', 'uWaveAmplitude', 0.1)
	setShaderFloat('metal', 'uFrequency', 5)
	setShaderFloat('metal', 'uSpeed', 2)
	end
end
local a = 0
function onUpdatePost(elapsed)
	a = a + (elapsed * playbackRate)
	if shadersEnabled then
	setShaderFloat('metal', 'uTime', a)
	end
end
