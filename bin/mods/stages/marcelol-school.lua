function onCreate()
    makeLuaSprite('2', 'evil', 0, 0)
    scaleObject("2", 1.2, 1.2)
    screenCenter("2")
    addLuaSprite('2', false)

    makeLuaSprite('1', 'normal', 0, 0)
    scaleObject("1", 1.2, 1.2)
    screenCenter("1")
    addLuaSprite('1', false)
end