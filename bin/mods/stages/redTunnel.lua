function onCreate()
	makeLuaSprite('redTunnel', 'redTunnel', -1475, -775);
	scaleObject('redTunnel', 1.75, 1.75);
	addLuaSprite('redTunnel', false)
end

function onStartCountdown()
	doTweenAngle('anglelele', 'redTunnel', 28080, 330, 'linear');
end