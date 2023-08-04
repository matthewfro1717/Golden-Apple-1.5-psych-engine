function onCreate()
         makeLuaSprite('bar', 'blackscreen', -2350, 0)
         setProperty('bar.alpha', 0.5)
         setObjectCamera('bar', 'camHUD')
         addLuaSprite('bar', true)
end

function onCreatePost()
    makeLuaText('songby', 'Song by Sky!', -1000, -950, 0)
    setTextSize('songby', 27)
    setObjectCamera('songby', 'camHUD')
    setTextBorder('songby', 0, '000000')
    addLuaText('songby', true)

    makeLuaText('visualsby', 'Visuals by Lancey', -1000, -1000, 100)
    setTextSize('visualsby', 27)
    setObjectCamera('visualsby', 'camHUD')
    setTextBorder('visualsby', 0, '000000')
    addLuaText('visualsby', true)

    makeLuaText('chartingby', 'Charting by Cynda', -1000, -1000, 200)
    setTextSize('chartingby', 27)
    setObjectCamera('chartingby', 'camHUD')
    setTextBorder('chartingby', 0, '000000')
    addLuaText('chartingby', true)

    makeLuaText('codingby', 'Rip Garrett', -1000, -1000, 300)
    setTextSize('codingby', 27)
    setObjectCamera('codingby', 'camHUD')
    setTextBorder('codingby', 0, '000000')
    addLuaText('codingby', true)
end

function onSongStart()
	 doTweenX('barx','bar' , -1350 , 0.25, 'backInOut')
	 doTweenX('songbyx','songby' , 50 , 0.25, 'backInOut')
	 doTweenX('visualsbyx','visualsby' , 0 , 0.25, 'backInOut')
	 doTweenX('chartingbyx','chartingby' , 0 , 0.25, 'backInOut')
	 doTweenX('codingbyx','codingby' , 0 , 0.25, 'backInOut')
end

function onUpdate(elapsed)
     if curStep == 45 then
	 doTweenX('barx','bar' , -2350 , 0.5, 'backIn')
	 doTweenX('songbyx','songby' , -950 , 0.5, 'backIn')
	 doTweenX('visualsbyx','visualsby' , -1000 , 0.5, 'backIn')
	 doTweenX('chartingbyx','chartingby' , -1000 , 0.5, 'backIn')
	 doTweenX('codingbyx','codingby' , -1000 , 0.5, 'backIn')
end
end