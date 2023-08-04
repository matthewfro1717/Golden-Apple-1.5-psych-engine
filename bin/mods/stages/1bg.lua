function onCreate()
    initLuaShader('glitchEffect')

	makeLuaSprite('stageback', 'main/fresh-and-toasted/no-min', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
    setSpriteShader('stageback', 'glitchEffect')
	addLuaSprite('stageback', false);
end
elapsedTime = 0
function onUpdate(elapsed)
  elapsedTime = elapsedTime + elapsed
  setShaderFloat('stageback', 'uTime', elapsedTime)
end