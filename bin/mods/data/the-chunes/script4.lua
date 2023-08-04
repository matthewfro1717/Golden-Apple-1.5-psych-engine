-- Script by AquaStrikr (https://twitter.com/AquaStrikr_)
function onCreatePost()
	makeLuaSprite('Health', 'healthBar2')
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	setProperty('healthBarBG.visible', false)
end

function onUpdatePost(elapsed)
	setProperty('Health.x', getProperty('healthBar.x') - 5)
	setProperty('Health.y', getProperty('healthBar.y') - 4)

    --timer variables
    --getting song length in seconds
    local  timeElapsed = math.floor(getProperty('songTime')/1000)
    local  timeTotal = math.floor(getProperty('songLength')/1000)

    --timerTxt updates (string.format puts it into mm:ss format)
    setTextString('timeTxt', string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60) .. ' / ' .. string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60))
end

function onBeatHit() 
  if curBeat % 4 == 0 then
   setProperty('timeBarBG.visible', false)
  setProperty('timeTxt.scale.x',1.15)
  setProperty('timeTxt.scale.y',1.15)
  doTweenX('da','timeTxt.scale',1,0.5,'circOut')
  doTweenY('da2','timeTxt.scale',1,0.5,'circOut')
end
end