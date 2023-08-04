
function onCreatePost()
	makeAnimatedLuaSprite('dad', 'nothing(Copy)', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('dad', 'move', 'sart-producer', 24, false);  -- change here

	setObjectCamera('dad', 'hud')
	addLuaSprite('dad', true)
	setProperty('dad.flipX', true) --mirror sprite horizontally
	setObjectOrder('dad', getObjectOrder('iconP2') + 1)
	setProperty('iconP2.alpha', 0)
--------------------------------------------------------------------------------------------------------------------------------
	makeAnimatedLuaSprite('Dad', 'sartys_icon', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('Dad', 'move', 'sart-producer', 24, false); -- change here

	setObjectCamera('Dad', 'hud')
	addLuaSprite('Dad', true)
	setProperty('Dad.flipX', false) --mirror sprite horizontally
	setObjectOrder('Dad', getObjectOrder('iconP2') + 1)
	setProperty('iconP2.alpha', 0)
end

function onUpdate()
	setProperty('Boyfriend.x', getProperty('iconP1.x') + 10) -- change here
	setProperty('Boyfriend.angle', getProperty('iconP1.angle'))
	setProperty('Boyfriend.y', getProperty('iconP1.y') + 20) -- and here
---------------------------------------------------------------------------------------------------------------------------------
	setProperty('Dad.x', getProperty('iconP2.x') + 10) -- change here
	setProperty('Dad.angle', getProperty('iconP2.angle'))
	setProperty('Dad.y', getProperty('iconP2.y') + 20) -- and here
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then -- change here
		objectPlayAnimation('Boyfriend', 'move');
		objectPlayAnimation('Dad', 'move');
	end
end
