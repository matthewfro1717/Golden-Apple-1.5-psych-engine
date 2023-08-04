function onCreate()
	-- background
	
	makeAnimatedLuaSprite('enforcers/prisonlifewow','enforcers/prisonlifewow', -400,300)
	addAnimationByPrefix('enforcers/prisonlifewow','scroller','scroller',20,true)
	setLuaSpriteScrollFactor('enforcers/prisonlifewow', 1, 1)
	scaleObject('enforcers/prisonlifewow', 2, 2)
	addLuaSprite('enforcers/prisonlifewow',false)

end