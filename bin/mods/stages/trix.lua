function onCreate()
	makeLuaSprite('back 1', 'main/trix/alge_back', -1475, -775);
	setLuaSpriteScrollFactor('back 1', 0, 0);
	addLuaSprite('back 1', false)
	
	makeLuaSprite('mid 1', 'main/trix/alge_mid', -300, -600);
	addLuaSprite('mid 1', false)
	
	makeLuaSprite('front 1', 'main/trix/alge_front', -300, -845);
	addLuaSprite('front 1', false)
end
function onSongStart()
	doTweenColor('darkbf', 'boyfriend', '949494', 1, 'linear')
	doTweenColor('darkbamb', 'dad', '949494', 1, 'linear')
	doTweenColor('darkgf', 'gf', '949494', 1, 'linear')
end