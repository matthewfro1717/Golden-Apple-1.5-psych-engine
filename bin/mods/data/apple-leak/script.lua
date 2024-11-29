local alphaChange = false;
local bfX = 0;
local bfY = 0;
local dadX = 0;
local dadY = 0;
local zoomStuff = 0.05;

local stayOnCam = false;
local camX = 0;
local camY = 0;

local loopVarThing = false;

local shadname = "stridentCrisisWavy";

function onCreatePost()
	changeNoteSkin(false, 'NOTE_assets_3D');
	changeNoteSkin(false, 'NOTE_assets'); --caching!!
end

function onUpdate()
	local time = 1.5;

	if alphaChange and getProperty('dad.alpha') == 1 then
		doTweenAlpha('lmaoDad', 'dad', 0, time)
	end

	if alphaChange and getProperty('dad.alpha') == 0 then
		doTweenAlpha('lmaoDad', 'dad', 1, time)
	end

	if stayOnCam then
		setProperty('camFollow.x', camX);
		setProperty('camFollow.y', camY);
	end
end

function onStepHit()
	if curStep == 1088 then
		dadX = getProperty('dad.x');
		dadY = getProperty('dad.y') -125;
		doTweenY('banduFat', 'dad', getProperty('dad.y') -500, 30)
	end

	if curStep == 1855 then
		--unused
		--dadX = getProperty('dad.x');
		--dadY = getProperty('dad.y');
	end

	--[[local zoomStuff = 0.05;

	if curStep == 3200 then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') -zoomStuff)
		removeLuaSprite('garryLeak', true)
		setProperty('r2.visible', true)
		alphaChange = true;
	end--]]

	if curStep == 5087 then --5088
		--[[
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') +zoomStuff)
		setProperty('th1ft.visible', true)
		removeLuaSprite('r1', true)
		removeLuaSprite('r2', true)
		alphaChange = false;
		setProperty('dad.alpha', 1)
		--]]
		--setProperty('dad.y' -9999) --3d leak bambi would keep showing
	end

	if curStep == 5744 then
		--youtoob
	end

	if curStep == 6848 then
		--funk
	end

	--6:39
	--6:39
	--6:39
	--6:39
	--6:39

	if curStep == 7488 then
		--portal
		makeLuaSprite('portal', 'appleLeak/cave/portal', getProperty('boyfriend.x') + 205, getProperty('boyfriend.y') + 205)
		setProperty('portal.scale.x', 0)
		setProperty('portal.scale.y', 0)
		updateHitbox('portal')
		if not lowQuality then
			addLuaSprite('portal', true)
		end
		setProperty('portal.scale.x', 1)
		setProperty('portal.scale.y', 1)
		doTweenX('null1', 'portal.scale', 0, 1)
		doTweenY('invisPortal', 'portal.scale', 0, 1)
		doTweenX('null3', 'boyfriend.scale', 0, 1)
		doTweenY('null4', 'boyfriend.scale', 0, 1)
	end

	if curStep == 9520 then --3d and 2d
		makeAnimatedLuaSprite('staticAnim', 'appleLeak/dookie/give_me_all_your_zunk', -175, -100)
		setScrollFactor('staticAnim', 0, 0)
		addAnimationByPrefix('staticAnim', 'idle', 'static0', 24, true)
		playAnim('staticAnim', 'idle', true)
		addLuaSprite('staticAnim', true)
		setProperty("fire.visible", false)
		setProperty("vg.visible", false)
		runTimer('static2', 1.1)
	end

	if curStep == 9696 then --3d bamber
		removeLuaSprite("blackNwhite", true)
		setProperty("staticAnim.visible", true)
		runTimer('static', 1.1)
	end

	if curStep == 10096 then --wide bambi
		setProperty("staticAnim.visible", true)
		setProperty("fire.visible", false)
		setProperty("vg.visible", false)
		runTimer('static', 1.2)
	end

	if curStep == 10256 then --so screwed
		setProperty("staticAnim.visible", true)
		runTimer('static', 1.25)
	end

	if curStep == 10464 then --3d bamber
		setProperty("staticAnim.visible", true)
		runTimer('static', 1.25)
	end

	if curStep == 10864 then --amog us
		setProperty("staticAnim.visible", true)
		setProperty("fire.visible", false)
		setProperty("vg.visible", false)
		runTimer('static', 1.25)
	end

	if curStep == 11152 then --bob
		setProperty("staticAnim.visible", true)
		runTimer('static', 1.25)
	end

	if curStep == 11424 then --3d bamber
		setProperty("staticAnim.visible", true)
		runTimer('static', 1.25)
	end

	if curStep == 11952 then --dik cord
		setProperty("fire.visible", false)
		setProperty("vg.visible", false)
	end
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'static' then
		triggerEvent("Change Character", "dad", "3d-bambi-leak-finale")
		triggerEvent("Change Character", "bf", "3d-bf-shoulder")
		setProperty("staticAnim.visible", false)
		setProperty("fire.visible", true)
		setProperty("vg.visible", true)
	end

	if tag == 'static2' then
		setProperty("staticAnim.visible", false)

		triggerEvent("Change Character", "bf", "bf")
		makeLuaSprite('blackNwhite', 'appleLeak/dookie/bgs/2d-and-3d/ying and yang makes a comeback', getProperty("boyfriend.x") * 0.9, getProperty("boyfriend.y") / 2)
		addLuaSprite('blackNwhite', false)
		makeAnimatedLuaSprite('2dThing', 'appleLeak/dookie/fixed i things', 0, 0)
		setScrollFactor('2dThing', 0, 0)
    	addAnimationByPrefix('2dThing', 'idle', 'Symbol 1', 24, true)
    	playAnim('2dThing', 'idle', true)
        addLuaSprite('2dThing', true)
	end
end

function thisNewPsychUpdateFuckedME(x, y)
	doTweenX('dad xxx', 'dad', x, 0.05)
	doTweenY('dad yyy', 'dad', y, 0.05)
end

function onEvent(name, value1, value2)
	if name == 'Change Character' then
		if value2 == 'fat-bandu-3d' then
			cancelTween('banduFat')
			thisNewPsychUpdateFuckedME(dadX, dadY)
			changeNoteSkin(false, 'NOTE_assets_3D'); --adding what im guessing is gonna be in the newest build since leaked build is 4 months old.
			setProperty('wavyApplecore.visible', true)
		end

		if value2 == 'gary' then
			makeAnimatedLuaSprite('fatBandu', 'characters/appleLeak/fat_bandu_25', dadX, dadY)
			addAnimationByPrefix('fatBandu', 'idle', 'idle0', 24, false)
			playAnim('fatBandu', 'idle', true)
			if not lowQuality then
				addLuaSprite('fatBandu', false)
			end
	
			doTweenX('gasStationWidth', 'gasStation.scale', 0, 1)
			doTweenY('gasStationHeigth', 'gasStation.scale', 0, 1)
			doTweenAlpha('gasStationAlpha', 'gasStation', 0, 1)
	
			doTweenX('wavyWidth', 'wavyApplecore.scale', 0, 1)
			doTweenY('wavyHeigth', 'wavyApplecore.scale', 0, 1)
			doTweenAlpha('wavyAlpha', 'wavyApplecore', 0, 1)
	
			doTweenAlpha('fatBandunAlpha', 'fatBandu', 0, 1)
			doTweenAlpha('jamboulAlpha', 'jamboul', 0, 1)
	
			doTweenY('kineMasterUp', 'kineMaster', getProperty('kineMaster.y') -125, 1.25)
			doTweenAngle('kineMasterAngle', 'kineMaster', 90, 1.5)
		end

		if value2 == '3d-bambi-leak' then
			setProperty('defaultCamZoom', getProperty('defaultCamZoom') -zoomStuff)
			thisNewPsychUpdateFuckedME(dadX, dadY -200)
			removeLuaSprite('garryLeak', true)
			setProperty('r2.visible', true)
			alphaChange = true;
		end

		if value2 == 'th1ft' then
			changeNoteSkin(false, 'NOTE_assets'); --adding what im guessing is gonna be in the newest build since leaked build is 4 months old.

			zoomStuff = zoomStuff + 0.15;
			setProperty('defaultCamZoom', getProperty('defaultCamZoom') +zoomStuff)
			thisNewPsychUpdateFuckedME(dadX -400, dadY -35)
			removeLuaSprite('r1', true)
			removeLuaSprite('r2', true)
			setProperty('th1ft.visible', true)
			alphaChange = false;
			setProperty('dad.alpha', 1)

			bfX = getProperty('boyfriend.x');
			bfY = getProperty('boyfriend.y');
		end

		if value2 == 'th1ft-monster' then
			thisNewPsychUpdateFuckedME(dadX -400, dadY -35)
		end

		if value2 == 'bandu-trolled' then
			changeNoteSkin(false, 'NOTE_assets_3D'); --adding what im guessing is gonna be in the newest build since leaked build is 4 months old.

			setProperty('ytVids.scale.x', 2)
			setProperty('ytVids.scale.y', 2)
			doTweenX('ytVidsWidth', 'ytVids.scale', 1, 1)
			doTweenY('ytVidsHeigth', 'ytVids.scale', 1, 1)
			camX = getProperty('camFollow.x');
			camY = getProperty('camFollow.y');
			stayOnCam = true;

			thisNewPsychUpdateFuckedME(25, 1290)
			
			setProperty('boyfriend.x', 1400)
			setProperty('boyfriend.y', 1625)
			makeLuaSprite('boyfond', 'appleLeak/trolled/boyfranon', bfX, bfY)
			addLuaSprite('boyfond', false)

			setProperty('ytStatic.visible', true)
			setProperty('ytBox.visible', true)
		end

		if value2 == 'sammy' then
			setProperty('funkipedia.visible', true)
			thisNewPsychUpdateFuckedME(1660, 2070)
			setProperty('boyfriend.x', 1250)
			setProperty('boyfriend.y', 2500)
			setProperty('boyfriend.scale.x', 0.85)
			setProperty('boyfriend.scale.y', 0.85)
		end

		if value2 == 'duelExpunged' then
			setProperty('defaultCamZoom', 0.8)
			removeLuaSprite('funkipedia', true)
			removeLuaSprite('ytStatic', true)
			removeLuaSprite('ytBox', true)
			makeLuaSprite('caveBG', 'appleLeak/cave/caveBG', -750, 100)
			setProperty('caveBG.scale.x', 2.25)
			setProperty('caveBG.scale.y', 2.25)
			updateHitbox('caveBG')
			addLuaSprite('caveBG', false)
		
			makeAnimatedLuaSprite('brob', 'appleLeak/cave/brob', getProperty('caveBG.x') +1925, getProperty('caveBG.y') + 575)
			addAnimationByPrefix('brob', 'idle', 'brob0', 24, false)
			playAnim('brob', 'idle', true)
			setProperty('brob.scale.x', 0.5)
			setProperty('brob.scale.y', 0.5)
			updateHitbox('brob')
			if not lowQuality then
				addLuaSprite('brob', false)
			end
		
			makeAnimatedLuaSprite('monkey', 'appleLeak/cave/monkey', getProperty('caveBG.x') +1590, getProperty('caveBG.y') + 425)
			addAnimationByPrefix('monkey', 'idle', 'monkey0', 24, false)
			playAnim('monkey', 'idle', true)
			setProperty('monkey.scale.x', 0.35)
			setProperty('monkey.scale.y', 0.35)
			updateHitbox('monkey')
			if not lowQuality then
				addLuaSprite('monkey', false)
			end
		
			makeAnimatedLuaSprite('ohyeah', 'appleLeak/cave/ohyeah', getProperty('caveBG.x') +950, getProperty('caveBG.y') + 500)
			addAnimationByPrefix('ohyeah', 'idle', 'ohyeah0', 24, false)
			playAnim('ohyeah', 'idle', true)
			--setProperty('ohyeah.scale.x', 0.75)
			--setProperty('ohyeah.scale.y', 0.75)
			updateHitbox('ohyeah')
			if not lowQuality then
				addLuaSprite('ohyeah', false)
			end
		
			makeAnimatedLuaSprite('wrath', 'appleLeak/cave/wrath', getProperty('caveBG.x') +475, getProperty('caveBG.y') + 500)
			addAnimationByPrefix('wrath', 'idle', 'wrath0', 24, false)
			playAnim('wrath', 'idle', true)
			setProperty('wrath.scale.x', 0.5)
			setProperty('wrath.scale.y', 0.5)
			updateHitbox('wrath')
			if not lowQuality then
				addLuaSprite('wrath', false)
			end
		
			makeLuaSprite('caveFloor', 'appleLeak/cave/caveGround', getProperty('caveBG.x') +300, getProperty('caveBG.y') + 350)
			setProperty('caveFloor.scale.x', 1.75)
			setProperty('caveFloor.scale.y', 1.75)
			updateHitbox('caveFloor')
			addLuaSprite('caveFloor', false)
		
			makeAnimatedLuaSprite('norman', 'appleLeak/cave/norman', getProperty('caveFloor.x') + 950, getProperty('caveFloor.y') + 110)
			addAnimationByPrefix('norman', 'idle', 'idle0', 24, false)
			playAnim('norman', 'idle', true)
			setProperty('norman.scale.x', 0.25)
			setProperty('norman.scale.y', 0.25)
			updateHitbox('norman')
			if not lowQuality then
				addLuaSprite('norman', false)
			end

			thisNewPsychUpdateFuckedME(-300, 350)
			setProperty('boyfriend.x', 900)
			setProperty('boyfriend.y', 465) --765

			setProperty('portal.visible', true)
			setProperty('portal.x', getProperty('boyfriend.x') + 200)
			setProperty('portal.y', getProperty('boyfriend.y') + 200)
			setProperty('boyfriend.scale.x', 0)
			setProperty('boyfriend.scale.y', 0)

			doTweenX('portalWidth', 'portal.scale', 1, 1)
			doTweenY('portalHeight', 'portal.scale', 1, 1)
			doTweenX('portalBFWidth', 'boyfriend.scale', 1, 1)
			doTweenY('portalBFHeight', 'boyfriend.scale', 1, 1)
		end

		if value2 == '3d-bambi-leak-finale' then
			if loopVarThing == false then
				removeLuaSprite('caveBG', true)
				removeLuaSprite('brob', true)
				removeLuaSprite('monkey', true)
				removeLuaSprite('ohyeah', true)
				removeLuaSprite('wrath', true)
				removeLuaSprite('caveFloor', true)
				removeLuaSprite('norman', true)
				makeAnimatedLuaSprite('fire', 'appleLeak/dookie/FLAMESFLAMESBURNINGFLAMES', 75, -100)
				addAnimationByPrefix('fire', 'idle', 'FlamesBurn0', 24, true)
				playAnim('fire', 'idle', true)
				setProperty('fire.antialiasing', false)
	         		setProperty("fire.visible", true)
				setProperty('fire.scale.x', 1.8)
				setProperty('fire.scale.y', 1.5)
				setProperty('fire.alpha', 0.75)
				updateHitbox('fire')
				--screenCenter('fire')
				if not lowQuality then
					addLuaSprite('fire', true) -- 250, -315
				end
				
				addLuaScript('activatedScripts/VG');
				setProperty('vg.visible', true)
				setProperty('dad.x', 250)
				setProperty('dad.y', -315)
				setProperty('dad.visible', false)
				setProperty('camHUD.visible', false)
				camX = 1290;
				camY = 450;
				stayOnCam = true;

				setProperty('boyfriend.y', getProperty('boyfriend.y') - 950)
				doTweenY('boyfrinedYYY', 'boyfriend', getProperty('boyfriend.y') + 950, 1.5)
				loopVarThing = true;
			end

			changeNoteSkin(true, 'NOTE_assets_3D'); --adding what im guessing is gonna be in the newest build since leaked build is 4 months old.
		else
			setProperty('dad.x', 250)
			setProperty('dad.y', -315)
		end

		if value2 == 'duel-cheating-bambi-leak' then
			setProperty("fire.visible", false)
			makeLuaSprite('2d-and-3d', 'appleLeak/dookie/bgs/2d-and-3d/ying and yang makes a comeback', -750, 100)
			setProperty('2d-and-3d.scale.x', 2.25)
			setProperty('2d-and-3d.scale.y', 2.25)
			updateHitbox('2d-and-3d')
			addLuaSprite('2d-and-3d', false)
		end

		if value2 == 'wide-bambi-leak' then
			setProperty("fire.visible", false)
			setProperty("2d-and-3d.visible", false)
			makeLuaSprite('wide', 'appleLeak/dookie/bgs/wide bambi/dead meme but it funny', -750, 100)
			setProperty('wide.scale.x', 2.25)
			setProperty('wide.scale.y', 2.25)
			updateHitbox('wide')
			addLuaSprite('wide', false)
		end

		if value2 == 'screwed-bambi-leak' then
			setProperty("fire.visible", false)
			setProperty("wide.visible", false)
			setProperty("2d-and-3d.visible", false)
			makeLuaSprite('lmfao', 'appleLeak/lmfao/tiles', -750, 100)
			setProperty('lmfao.scale.x', 2.25)
			setProperty('lmfao.scale.y', 2.25)
			updateHitbox('lmfao')
			addLuaSprite('lmfao', false)
			makeLuaSprite('platform', 'appleLeak/lmfao/platform', getProperty('lmfao.x') +300, getProperty('lmfao.y') + 350)
			setProperty('platform.scale.x', 1.75)
			setProperty('platform.scale.y', 1.75)
			updateHitbox('platform')
			addLuaSprite('platform', false)
		end
		
		if value2 == 'among-bambi' then
			setProperty("fire.visible", false)
			setProperty("wide.visible", false)
			setProperty("2d-and-3d.visible", false)
			setProperty("lmfao.visible", false)
			setProperty("platform.visible", false)
			makeLuaSprite('clowofe', 'appleLeak/clowofe/spaceThing', -750, 100)
			setProperty('clowofe.scale.x', 2.25)
			setProperty('clowofe.scale.y', 2.25)
			updateHitbox('clowofe')
			addLuaSprite('clowofe', false)
			makeLuaSprite('clowofe1', 'appleLeak/clowofe/backgrounder', -750, 100)
			setProperty('clowofe1.scale.x', 2.25)
			setProperty('clowofe1.scale.y', 2.25)
			updateHitbox('clowofe1')
			addLuaSprite('clowofe1', false)
			makeLuaSprite('clowofe2', 'appleLeak/clowofe/grounde', getProperty('clowofe1.x') +300, getProperty('clowofe1.y') + 350)
			setProperty('clowofe2.scale.x', 1.75)
			setProperty('clowofe2.scale.y', 1.75)
			updateHitbox('clowofe2')
			addLuaSprite('clowofe2', false)
			makeLuaSprite('clowofe3', 'appleLeak/clowofe/tableThings', getProperty('clowofe1.x') -300, getProperty('clowofe1.y') -350)
			setProperty('clowofe3.scale.x', 1.75)
			setProperty('clowofe3.scale.y', 1.75)
			updateHitbox('clowofe3')
			addLuaSprite('clowofe3', false)
		end

		if value2 == 'bob-bambi-leak' then
			setProperty("fire.visible", false)
			setProperty("wide.visible", false)
			setProperty("2d-and-3d.visible", false)
			setProperty("lmfao.visible", false)
			setProperty("platform.visible", false)
			setProperty("clowofe.visible", false)
			setProperty("clowofe1.visible", false)
			setProperty("clowofe2.visible", false)
			setProperty("clowofe3.visible", false)
			makeAnimatedLuaSprite('doodlebob', 'appleLeak/dookie/doodlebob/NewTitleMenuBG', -750, 100))
			addAnimationByPrefix('doodlebob', 'idle', 'TitleMenuSSBG instance 1', 24, true)
			playAnim('doodlebob', 'idle', true)
			setProperty('doodlebob.scale.x', 2.25)
			setProperty('doodlebob.scale.y', 2.25)
			updateHitbox('doodlebob')
			addLuaSprite('doodlebob', false)
			makeLuaSprite('doodlebob1', 'appleLeak/dookie/doodlebob/doodlebob tree', getProperty('doodlebob.x') +300, getProperty('doodlebob.y') + 350)
			setProperty('doodlebob1.scale.x', 2.25)
			setProperty('doodlebob1.scale.y', 2.25)
			updateHitbox('doodlebob1')
			addLuaSprite('doodlebob1', false)
		end
	end
end

function onTweenCompleted(tag)
	if tag == 'jamboulAlpha' then
		doTweenX('garyMoveX', 'dad', dadX, 1.5)
		doTweenY('garyMoveY', 'dad', dadY, 1.5)
	end

	if tag == 'kineMasterAngle' then
		doTweenY('kineMasterDown', 'kineMaster', 1000, 2.6)
		doTweenAngle('kineMasterAngle2', 'kineMaster', 125, 2.6)
	end

	if tag == 'kineMasterAngle2' then
		removeLuaSprite('jamboul', true)
		removeLuaSprite('fatBandu', true)
		removeLuaSprite('gasStation', true)
		removeLuaSprite('wavyApplecore', true)
		removeLuaSprite('kineMaster', true)
	end

	if tag == 'ytVidsHeigth' then
		doTweenAngle('boyfondAngle', 'boyfond', 10, 0.2)
	end

	if tag == 'boyfondAngle' then
		doTweenAngle('boyfondAngle2', 'boyfond', 120, 1)
		doTweenAlpha('boyfondAlpha', 'boyfond', 0, 1)
	end

	if tag == 'boyfondAlpha' then
		removeLuaSprite('boyfond', true)
		stayOnCam = false;
	end

	if tag == 'invisPortal' then
		setProperty('portal.visible', false)
	end

	if tag == 'portalBFHeight' then
		doTweenY('null5', 'boyfriend', 765, 1)
		doTweenX('null1', 'portal.scale', 0, 1)
		doTweenY('invisPortal', 'portal.scale', 0, 1)
	end

	if tag == 'camHUDHeight' then
		doTweenX('null999', 'camHUD.scale', 1, 1.25, 'cubeInOut')
		doTweenY('null314', 'camHUD.scale', 1, 1.25, 'cubeInOut')
	end
end

local POP = false;
local POP2 = false;
local POP3 = false;

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if getProperty('dad.curCharacter') == 'bandu-trolled' and not POP then
		doTweenX('dadWidth', 'dad.scale', 0.3, 0.35)
		doTweenY('dadHeigth', 'dad.scale', 0.3, 0.35)
		removeLuaSprite('ytVids', true)
		removeLuaSprite('th1ft', true)
		POP = true;
	end

	if getProperty('dad.curCharacter') == '3d-bambi-leak-finale' and not POP2 then
		setProperty('camHUD.scale.x', 1.5)
		setProperty('camHUD.scale.y', 1.5)
		setProperty('camHUD.visible', true)
		doTweenX('camHUDWidth', 'camHUD.scale', 0.5, 1.25, 'cubeInOut')
		doTweenY('camHUDHeight', 'camHUD.scale', 0.5, 1.25, 'cubeInOut')
		triggerEvent("camFlash", '0.5', '')
		setProperty('dad.visible', true)
		stayOnCam = false;
		POP2 = true;
	end

	setProperty("2dThing.visible", false)

	if getProperty('dad.curCharacter') == 'among-bambi' and not POP3 then
		--flash twitter post
	end
end

function changeNoteSkin(player, skin)
	if player == true then
		for i = 0, 4, 1 do
			setPropertyFromGroup('playerStrums', i, 'texture', skin)
		end
	end
    if not player then
		for i = 0, 4, 1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', skin)
		end
	end

    for i = 0, getProperty('notes.length') -1 do
        if getPropertyFromGroup('notes', i, 'mustPress') == player then --only "player" side
            setPropertyFromGroup('notes', i, 'texture', skin)
        end
    end

    for i = 0, getProperty('unspawnNotes.length') -1 do
        if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == player then --only "player" side
            setPropertyFromGroup('unspawnNotes', i, 'texture', skin)
        end
    end
end
