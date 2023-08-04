function onCreate()
	makeLuaSprite('disruptor', 'disruptor', -1475, -775);
	scaleObject('disruptor', 1.75, 1.75);
	addLuaSprite('disruptor', false)
end

function onStartCountdown()
	doTweenAngle('anglelele', 'disruptor', 28080, 330, 'linear');
end