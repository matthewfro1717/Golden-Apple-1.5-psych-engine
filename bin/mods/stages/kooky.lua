local directory = 'yoMamaSoBrown/'
local charDirectory = 'characters/peanut/kooky/'
local random = 0;

function onCountdownStarted()
    setProperty('skipCountdown', true)
end

function onCreatePost()
    setProperty('box.visible', false)
    setProperty('botplayTxt.x', 220)
    setProperty('botplayTxt.y', 150)

    setObjectCamera('dad', 'hud')
    setObjectCamera('boyfriend', 'hud')
    setProperty('boyfriend.scale.x', 0.7)
    setProperty('boyfriend.scale.y', 0.7)

    makeLuaSprite('ass')
    makeGraphic('ass', screenWidth, screenHeight, '000000')
    setObjectCamera('ass', 'hud')
    addLuaSprite('ass')
    
    makeLuaSprite('windowsXP', directory..'sdfsdfsdfv-min', 160, 250)
    scaleObject('windowsXP', 1.5, 1.5)
    setObjectCamera('windowsXP', 'hud')
    addLuaSprite('windowsXP')

    makeAnimatedLuaSprite('show', directory..'cred', 274, 311)
    setObjectCamera('show', 'hud')
    addLuaSprite('show')

    makeLuaSprite('overchar', directory..'unknown')
    setObjectCamera('overchar', 'hud')
    setObjectOrder('overchar', getObjectOrder('iconP2') + 1)
    setProperty('overchar.y', -200)
    addLuaSprite('overchar')

    makeLuaSprite('underlay')
    makeGraphic('underlay', 450, 300, 'FFFFFF')
    setObjectCamera('underlay', 'hud')
    setProperty('underlay.x', 250)
    addLuaSprite('underlay')

    makeLuaSprite('uhb')
    makeGraphic('uhb', 150, 400, 'FFFFFF')
    setObjectCamera('uhb', 'hud')
    setProperty('uhb.x', 890)
    setProperty('uhb.y', 300)
    addLuaSprite('uhb')

    makeLuaSprite('hbul')
    makeGraphic('hbul', 55, 340, 'FF0000')
    setObjectCamera('hbul', 'hud')
    setProperty('hbul.x', 940)
    setProperty('hbul.y', 320)
    addLuaSprite('hbul')

    if dadName == 'babom' then
        makeAnimatedLuaSprite('opp', charDirectory..'babom', getProperty('dad.x'), getProperty('dad.y'))
        --idles
        addAnimationByPrefix('opp', 'idle0', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle0', 'idle', '0')
        addAnimationByPrefix('opp', 'idle1', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle1', 'idle', '1')
        addAnimationByPrefix('opp', 'idle2', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle2', 'idle', '2')
        addAnimationByPrefix('opp', 'idle3', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle3', 'idle', '3')
        addAnimationByPrefix('opp', 'idle4', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle4', 'idle', '4')
        addAnimationByPrefix('opp', 'idle5', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle5', 'idle', '5')
        addAnimationByPrefix('opp', 'idle6', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle6', 'idle', '6')
        addAnimationByPrefix('opp', 'idle7', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle7', 'idle', '7')
        addAnimationByPrefix('opp', 'idle8', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle8', 'idle', '8')
        addAnimationByPrefix('opp', 'idle9', 'idle', 24, false)
            addAnimationByIndices('opp', 'idle9', 'idle', '9')
        addAnimationByPrefix('opp', 'idle10', 'idle',240, false)
            addAnimationByIndices('opp', 'idle10', 'idle', '10')
        addAnimationByPrefix('opp', 'idle11', 'idle',240, false)
            addAnimationByIndices('opp', 'idle11', 'idle', '11')
        addAnimationByPrefix('opp', 'idle12', 'idle',240, false)
            addAnimationByIndices('opp', 'idle12', 'idle', '12')
        addAnimationByPrefix('opp', 'idle13', 'idle',240, false)
            addAnimationByIndices('opp', 'idle13', 'idle', '13')
        addAnimationByPrefix('opp', 'idle14', 'idle',240, false)
            addAnimationByIndices('opp', 'idle14', 'idle', '14')
        addAnimationByPrefix('opp', 'idle15', 'idle',240, false)
            addAnimationByIndices('opp', 'idle15', 'idle', '15')
        addAnimationByPrefix('opp', 'idle16', 'idle',240, false)
            addAnimationByIndices('opp', 'idle16', 'idle', '16')
        --end of idles
        addAnimationByPrefix('opp', 'singLEFT', 'left', 24, false)
        addAnimationByPrefix('opp', 'singRIGHT', 'right', 24, false)
        addAnimationByPrefix('opp', 'singUP', 'up', 24, false)
        addAnimationByPrefix('opp', 'glitch', 'junk', 12, true)
        addAnimationByPrefix('opp', 'singDOWN', 'down', 24, false)
        addAnimationByPrefix('opp', 'singLEFT-alt', 'aleft', 24, false)
        addAnimationByPrefix('opp', 'singRIGHT-alt', 'aright', 24, false)
        addAnimationByPrefix('opp', 'singUP-alt', 'aup', 24, false)
        addAnimationByPrefix('opp', 'singDOWN-alt', 'adown', 24, false)
        scaleObject('opp', 0.6, 0.6)
        setObjectCamera('opp', 'hud')
        setProperty('dad.visible', false)
        addLuaSprite('opp')
        playAnim('opp', 'idle0')

        setObjectOrder('show', getObjectOrder('overchar')-1)
        setObjectOrder('boyfriendGroup', getObjectOrder('windowsXP')+1)
    end

    makeLuaSprite('borders')
    makeGraphic('borders', 150, screenHeight, '000000')
    setObjectCamera('borders', 'hud')
    setObjectOrder('borders', getObjectOrder('overchar')+1)
    addLuaSprite('borders')

    makeLuaSprite('borders1')
    makeGraphic('borders1', 150, screenHeight, '000000')
    setObjectCamera('borders1', 'hud')
    setObjectOrder('borders1', getObjectOrder('overchar')+2)
    setProperty('borders1.x', screenWidth -getProperty('borders1.width'))
    addLuaSprite('borders1')
end

function opponentNoteHit(note, leData, leType, isSus)
    if leData == 0 then
        playAnim('opp', 'singLEFT', true)
        runTimer('lag', 1)
    elseif leData == 1 then
        playAnim('opp', 'singDOWN', true)
        runTimer('lag', 1)
    elseif leData == 2 then
        playAnim('opp', 'singUP', true)
        runTimer('lag', 1)
    elseif leData == 3 then
        playAnim('opp', 'singRIGHT', true)
        runTimer('lag', 1)
    end
    if altAnim == true then
        if leData == 0 then
            playAnim('opp', 'singLEFT-alt', true)
            runTimer('lag', 1)
        elseif leData == 1 then
            playAnim('opp', 'singDOWN-alt', true)
            runTimer('lag', 1)
        elseif leData == 2 then
            playAnim('opp', 'singUP-alt', true)
            runTimer('lag', 1)
        elseif leData == 3 then
            playAnim('opp', 'singRIGHT-alt', true)
            runTimer('lag', 1)
        end
    end
end

function onUpdate()
    if curStep == 8 then
        addAnimationByPrefix('show', 'slide', 'slideshow', 24, false)
    elseif curStep == 264 then
        playAnim('opp', 'glitch')
    elseif curStep == 920 then
        playAnim('opp', 'glitch')
    end
end

function onTimerCompleted(tag)
    if tag == 'lag' then
        random = getRandomInt(0,16)
        playAnim('opp', 'idle'..random, true)
    end
end