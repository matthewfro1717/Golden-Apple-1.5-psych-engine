function onCreatePost()
	makeLuaSprite('ticking/gunkk', 'ticking/gunkk', -1600, -700)
	addLuaSprite('ticking/gunkk')

	if shadersEnabled then
	initLuaShader('ticking/gunkk', 'shaderwow')
	setSpriteShader('ticking/gunkk', 'shaderwow')
	setShaderFloat('ticking/gunkk', 'uWaveAmplitude', 0.1)
	setShaderFloat('ticking/gunkk', 'uFrequency', 5)
	setShaderFloat('ticking/gunkk', 'uSpeed', 2)
	end
end
local a = 0
function onUpdatePost(elapsed)
	a = a + (elapsed * playbackRate)
	if shadersEnabled then
	setShaderFloat('ticking/gunkk', 'uTime', a)
	end
end

function onCreate()
	-- background
	
	makeAnimatedLuaSprite('ticking/Ticking_tunnel','ticking/Ticking_tunnel', -500,-400)
	addAnimationByPrefix('ticking/Ticking_tunnel','TUNNEL','TUNNEL',10,true)
	setLuaSpriteScrollFactor('ticking/Ticking_tunnel', 0.9, 0.9)
	scaleObject('ticking/Ticking_tunnel', 2, 2)
	addLuaSprite('ticking/Ticking_tunnel',true)

end