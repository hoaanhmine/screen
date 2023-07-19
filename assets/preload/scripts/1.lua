function onUpdatePost(el)
	for i = 0, getProperty('grpNoteSplashes.length')-1 do
		setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -7)
		setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -9)
	end
end