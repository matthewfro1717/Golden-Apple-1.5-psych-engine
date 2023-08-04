function onCreate()
	makeLuaSprite('galaxy', 'galaxy', -1475, -775);
	scaleObject('galaxy', 1.75, 1.75);
	addLuaSprite('galaxy', false)
end

function onStartCountdown()
	doTweenAngle('anglelele', 'galaxy', 28080, 330, 'linear');
end