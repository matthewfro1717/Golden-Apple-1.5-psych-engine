function onCreatePost()
  makeLuaText('credits', 'OC created by Drggoliil', 1280, 2, (downscroll and 0 or 695))
  setTextAlignment('credits', 'LEFT')
  setTextSize('credits', 17)
  addLuaText('credits')
end

function onUpdatePost(elapsed)
	setProperty('ghudsong.y', getProperty('credits.y') - 20)
end