function onCreatePost()
	makeLuaSprite('strawberries', 'strawberries', -800, -400)
	addLuaSprite('strawberries')
	scaleObject('strawberries',1.1, 1.1)
	setScrollFactor('strawberries',0, 0)

	if shadersEnabled then
	initLuaShader('strawberries', 'glitchEffect')
	setSpriteShader('strawberries', 'glitchEffect')
	setShaderFloat('strawberries', 'uWaveAmplitude', 0.1)
	setShaderFloat('strawberries', 'uFrequency', 5)
	setShaderFloat('strawberries', 'uSpeed', 2)
	end
end
local a = 0
function onUpdatePost(elapsed)
	a = a + (elapsed * playbackRate)
	if shadersEnabled then
	setShaderFloat('strawberries', 'uTime', a)
	end
end
