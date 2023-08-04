
function onCreate()
	-- background shit
	makeLuaSprite('enforcers/enforcersbg', 'enforcers/enforcersbg', -400, 200);
	setLuaSpriteScrollFactor('enforcers/enforcersbg', 1, 1);
	scaleObject('enforcers/enforcersbg', 1.75, 1.75)
	addLuaSprite('enforcers/enforcersbg', false);
end