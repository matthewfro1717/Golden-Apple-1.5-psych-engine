function onCreate()
	makeLuaSprite('bg', 'ocs/strawberries', -800, -300)
	addGlitchEffect('bg', 2, 6)
        setScrollFactor('bg', 0, 0)
	addLuaSprite('bg', false)

	makeLuaSprite('space', 'ocs/space', -800, -300)
        setScrollFactor('space', 0, 0)
        setProperty('space.visible', false)
	addLuaSprite('space', false)
end