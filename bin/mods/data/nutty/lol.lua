function onSongStart()
	 doTweenAlpha('spacealpha','space', 0, 10.43, 'cubeInOut')
end

function onStepHit()
         if curStep == 125 then
	 doTweenAlpha('dadalpha','dad', 1, 0.5, 'cubeInOut')
	 doTweenAlpha('dadiconalpha','iconP2', 1, 0.5, 'cubeInOut')
end
         if curStep == 383 then
	 setProperty('defaultCamZoom', 0.89)
end
	if curStep == 640 then
	setProperty('defaultCamZoom', 0.99)
end
	if curStep == 704 then
	setProperty('defaultCamZoom', 0.79)
end
	if curStep == 772 then
	setProperty('defaultCamZoom', 0.69)
end
	if curStep == 1408 then
        doTweenAlpha('hudalpha','camHUD', 0, 0.41, 'cubeInOut')
	doTweenAlpha('dadalpha','dad', 0, 7.83, 'cubeInOut')
        doTweenAlpha('dadiconalpha','iconP2', 0, 7.83, 'cubeInOut')
        doTweenAlpha('spacealpha','space', 1, 21.2, 'cubeInOut')
end
	if curStep == 1504 then
        setProperty('Ringi.alpha', 1)
        setProperty('gf.alpha', 0)
        setProperty('boyfriend.alpha', 0)
	makeLuaSprite('flash', 'white', 0, 0);
	setObjectCamera('flash', 'other');
	addLuaSprite('flash', true);
	doTweenColor('flashcolour', 'flash', 'FFFFFF', 0.01, 'linear');
	doTweenAlpha('flashalpha', 'flash', 0, 1, 'linear');  
end
	if curStep == 1506 then
	objectPlayAnimation('Ringi','talking',false)
end
	if curStep == 1513 then
	objectPlayAnimation('Ringi','idle',false)
end
	if curStep == 1518 then
	objectPlayAnimation('Ringi','talking',false)
end
	if curStep == 1552 then
	objectPlayAnimation('Ringi','idle',false)
end
	if curStep == 1557 then
	objectPlayAnimation('Ringi','talking',false)
end
	if curStep == 1593 then
	objectPlayAnimation('Ringi','idle',false)
end
	if curStep == 1603 then
	objectPlayAnimation('Ringi','talking',false)
end
	if curStep == 1632 then
	objectPlayAnimation('Ringi','idle',false)
end
	if curStep == 1637 then
	objectPlayAnimation('Ringi','talking',false)
end
	if curStep == 1680 then
	objectPlayAnimation('Ringi','idle',false)
end
end