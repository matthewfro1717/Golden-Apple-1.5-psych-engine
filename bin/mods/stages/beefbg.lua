
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'oc/glog/this', -600, -300);
        addGlitchEffect('stageback', 2, 2);
	setScrollFactor('stageback', 0.9, 0.9);

	makeLuaSprite('stageback2', 'oc/glog/MeatBack', -650, -600);
	setScrollFactor('stageback2', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'oc/glog/MeatFront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	addLuaSprite('stageback', false);
	addLuaSprite('stageback2', false);
	addLuaSprite('stagefront', false);
end