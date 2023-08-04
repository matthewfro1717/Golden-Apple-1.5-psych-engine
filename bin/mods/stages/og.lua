function onCreate()
    makeLuaSprite('SKY', 'backgrounds/shared/sky', 0, 0)
    screenCenter('SKY')
    updateHitbox('SKY')
    addLuaSprite('SKY', false)

    makeLuaSprite('bgClouds', 'ogStage/ogClouds', 0, -50)
    setScrollFactor('bgClouds', 1.2, 1.2)
    screenCenter('bgClouds', 'X')
    updateHitbox('bgClouds')
    if not lowQuality then
        addLuaSprite('bgClouds', false)
    end

    makeLuaSprite('bgWindow', 'ogStage/ogWindow', 0, 0)
    screenCenter('bgWindow')
    updateHitbox('bgWindow')
    if not lowQuality then
        addLuaSprite('bgWindow', false)
    end

    makeLuaSprite('bgCeiling', 'ogStage/ogCeiling', 0, -865)
    screenCenter('bgCeiling', 'X')
    updateHitbox('bgCeiling')
    if not lowQuality then
        addLuaSprite('bgCeiling', false)
    end

    makeLuaSprite('bgGrass', 'ogStage/ogGrass', 0, 500)
    screenCenter('bgGrass', 'X')
    updateHitbox('bgGrass')
    addLuaSprite('bgGrass', false)
end