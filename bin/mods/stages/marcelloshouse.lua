funnyNumbers = {172, 204, 268, 334, 352, 368, 384, 400, 404}
lights = true
function toggleLights()
	lights = not lights
	WTF = lights == true and 0 or 0.5

	doTweenAlpha('black', 'black', WTF, 0.5, 'linear')
end
function onCreate()
	makeLuaSprite('bg', 'pissing_too', 0, -200);
	setScrollFactor('bg', 0.9, 0.9)
	scaleObject('bg', 0.5, 0.5)
	addLuaSprite('bg',false)

	makeLuaSprite('black', '', -50, -50)
	makeGraphic('black', (1280 * 1.1), (720 * 1.1), '000000')
	setObjectCamera('black', 'other')
	setProperty('black.alpha', 0)
	addLuaSprite('black')
end
function onBeatHit()
	for i=1,#funnyNumbers,1 do
		if curBeat == funnyNumbers[i] then
			toggleLights()
		end
	end
end
function onUpdate()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
		toggleLights()
	end
end
