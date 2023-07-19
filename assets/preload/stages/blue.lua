-- 1340 520

function onCreatePost()
	setProperty('timeBarBG.visible', false);
	setProperty('timeBar.visible', false);

	setProperty("healthBarBG.visible", false);
	setProperty("healthBar.visible", false);

end

function onCreate()

	setProperty('skipCountdown', true)

	makeLuaSprite("bar_upper", nil, 0, -70)
	makeGraphic("bar_upper", 1280, 70, "000000")
	setObjectCamera("bar_upper", "hud")
	addLuaSprite("bar_upper", false)
		
	makeLuaSprite("bar_lower", nil, 0, 720)
	makeGraphic("bar_lower", 1280, 70, "000000")
	setObjectCamera("bar_lower", "hud")
	addLuaSprite("bar_lower", false)

	makeLuaSprite('back', 'blue/back', 0, 0);
	addLuaSprite('back', false);

	makeLuaSprite('blue', 'blue/blue', 0, 0);
	addLuaSprite('blue', false);
	setProperty('blue.visible', false)

	makeLuaSprite('errorscreen', 'blue/errorscreen', 0, 0);
	addLuaSprite('errorscreen', false);

	makeLuaSprite('black', 'blue/black', 0, 0);
	addLuaSprite('black', false);
	setProperty('black.visible', false)

	makeLuaSprite('front1', 'blue/front1', 0, 0);
	addLuaSprite('front1', true);
	setScrollFactor('front2', 1.1, 1.1);

	makeLuaSprite('vignette', 'blue/vignette', 0, 0);
	addLuaSprite('vignette', true);

	makeLuaSprite('light', 'blue/light', 0, 0);
	setBlendMode('light', 'add');
	addLuaSprite('light', true);

	makeLuaSprite('front2', 'blue/front2', 0, 0);
	addLuaSprite('front2', true);
	setScrollFactor('front2', 1.2, 1.2);

	makeLuaSprite('front3', 'blue/front3', 200, 0);
	addLuaSprite('front3', true);
	setScrollFactor('front3', 1.2, 1.2);

--	if upscroll then
		makeAnimatedLuaSprite('notebg', 'noteback', 715, 5);
		addLuaSprite('notebg', false);
		setObjectCamera('notebg', 'camHud');
		scaleObject('notebg', 0.8, 0.8)

		addAnimationByPrefix('notebg', 'back6', 'back6', 24, false)
		addAnimationByPrefix('notebg', 'back5', 'back5', 24, false)
		addAnimationByPrefix('notebg', 'back4', 'back4', 24, false)
		addAnimationByPrefix('notebg', 'back3', 'back3', 24, false)
		addAnimationByPrefix('notebg', 'back2', 'back2', 24, false)							addAnimationByPrefix('notebg', 'back1', 'back1', 24, false)

		makeLuaText('misses', 'misses', 0, 1215, 520);
		setTextSize('misses', 30);
		addLuaText('misses');
		setTextAlignment('misses', 'left');
		setTextBorder('misses', 1, '000000');

		makeLuaText('left', 'left', 0, 1203, 545);
		setTextSize('left', 30);
		addLuaText('left');
		setTextAlignment('left', 'left');
		setTextBorder('left', 1, '000000');
--	end

	if downscroll then
		makeAnimatedLuaSprite('notebg', 'noteback', 715, 190);
		setProperty('notebg.flipY', true)
		addLuaSprite('notebg', false);
		setObjectCamera('notebg', 'camHud');
		scaleObject('notebg', 0.8, 0.8)

		addAnimationByPrefix('notebg', 'back6', 'back6', 24, false)
		addAnimationByPrefix('notebg', 'back5', 'back5', 24, false)
		addAnimationByPrefix('notebg', 'back4', 'back4', 24, false)
		addAnimationByPrefix('notebg', 'back3', 'back3', 24, false)
		addAnimationByPrefix('notebg', 'back2', 'back2', 24, false)
		addAnimationByPrefix('notebg', 'back1', 'back1', 24, false)

		makeLuaText('misses', 'misses', 0, 1215, 120);
		setTextSize('misses', 30);
		addLuaText('misses');
		setTextAlignment('misses', 'left');
		setTextBorder('misses', 1, '000000');

		makeLuaText('left', 'left', 0, 1203, 145);
		setTextSize('left', 30);
		addLuaText('left');
		setTextAlignment('left', 'left');
		setTextBorder('left', 1, '000000');
	end

	if middlescroll then
		makeAnimatedLuaSprite('notebg', 'notebackmiddle', 715, 5);
		addLuaSprite('notebg', false);
		setObjectCamera('notebg', 'camHud');
		scaleObject('notebg', 0.8, 0.8)

		makeLuaSprite('notebgmid', 'notebackmiddlescroll', 392, 5);
		addLuaSprite('notebgmid', false);
		setObjectCamera('notebgmid', 'camHud');
		scaleObject('notebgmid', 0.8, 0.8)

		addAnimationByPrefix('notebg', 'back6', 'back6', 24, false)
		addAnimationByPrefix('notebg', 'back5', 'back5', 24, false)
		addAnimationByPrefix('notebg', 'back4', 'back4', 24, false)
		addAnimationByPrefix('notebg', 'back3', 'back3', 24, false)
		addAnimationByPrefix('notebg', 'back2', 'back2', 24, false)
		addAnimationByPrefix('notebg', 'back1', 'back1', 24, false)

		makeLuaText('misses', 'misses', 0, 1215, 520);
		setTextSize('misses', 30);
		addLuaText('misses');
		setTextAlignment('misses', 'left');
		setTextBorder('misses', 1, '000000');

		makeLuaText('left', 'left', 0, 1203, 545);
		setTextSize('left', 30);
		addLuaText('left');
		setTextAlignment('left', 'left');
		setTextBorder('left', 1, '000000');

		if downscroll then
			makeAnimatedLuaSprite('notebg', 'notebackmiddle', 715, 190);
			setProperty('notebg.flipY', true)
			addLuaSprite('notebg', false);
			setObjectCamera('notebg', 'camHud');
			scaleObject('notebg', 0.8, 0.8)

			makeLuaSprite('notebgmid', 'notebackmiddlescroll', 392, 580);
			setProperty('notebgmid.flipY', true)
			addLuaSprite('notebgmid', false);
			setObjectCamera('notebgmid', 'camHud');
			scaleObject('notebgmid', 0.8, 0.8)

			addAnimationByPrefix('notebg', 'back6', 'back6', 24, false)
			addAnimationByPrefix('notebg', 'back5', 'back5', 24, false)
			addAnimationByPrefix('notebg', 'back4', 'back4', 24, false)
			addAnimationByPrefix('notebg', 'back3', 'back3', 24, false)
			addAnimationByPrefix('notebg', 'back2', 'back2', 24, false)
			addAnimationByPrefix('notebg', 'back1', 'back1', 24, false)


			makeLuaText('misses', 'misses', 0, 1215, 120);
			setTextSize('misses', 30);
			addLuaText('misses');
			setTextAlignment('misses', 'left');
			setTextBorder('misses', 1, '000000');

			makeLuaText('left', 'left', 0, 1203, 145);
			setTextSize('left', 30);
			addLuaText('left');
			setTextAlignment('left', 'left');
			setTextBorder('left', 1, '000000');
		end
	end

	makeLuaSprite('black2', 'blue/black', 0, 0);
	addLuaSprite('black2', true);
	setObjectCamera('black2', 'camOther');
end

function onSongStart()
	doTweenY("bar_upper", "bar_upper", 0, 2, "quintout")
	doTweenY("bar_lower", "bar_lower", 720 - 70, 2, "quintout")
end









function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == ''
		then playSound('miss', 1)
--		runTimer('misstimer', 5, 1)
	end


end

function onUpdate(elapsed)
--	setTextString('misses', string.format('%s', misses))

	if misses == 0 then
		objectPlayAnimation('notebg', 'back6', false);
		setTextString('misses', string.format('6', misses))
	end

	if misses == 1 then
		objectPlayAnimation('notebg', 'back5', false);
		setTextString('misses', string.format('5', misses))
	end

	if misses == 2 then
		objectPlayAnimation('notebg', 'back4', false);
		setTextString('misses', string.format('4', misses))
	end

	if misses == 3 then
		objectPlayAnimation('notebg', 'back3', false);
		setTextString('misses', string.format('3', misses))
	end

	if misses == 4 then
		objectPlayAnimation('notebg', 'back2', false);
		setTextString('misses', string.format('2', misses))
	end

	if misses == 5 then
		objectPlayAnimation('notebg', 'back1', false);
		setTextString('misses', string.format('1', misses))
	end

	if misses >= 6 then
		setProperty('health', 0)
	end
end








function onSectionHit()
	doTweenAlpha('blackpulse', 'black', 1, 1.1, 'smoothEaseInOut')
	setProperty('black.alpha', 0)
end

function onStepHit()


	if curStep == 1 then
		doTweenAlpha('blacktwej', 'black2', 0, 19, 'smoothEaseInOut');
		addLuaScript('movecam')
		addLuaScript('zoomcam')

	end

	if curStep == 2048 then
		setProperty('boyfriend.color', getColorFromHex('000000'))
		setProperty('dad.color', getColorFromHex('000000'))
		setProperty('blue.visible', true)
		setProperty('black.visible', true)
		setProperty('light.visible', false)
		setProperty('vignette.visible', false)
		setProperty('front1.visible', false)
		setProperty('front2.visible', false)
		setProperty('front3.visible', false)

		noteTweenY('weewoobyebye', 0, 740, 1, 'expoIn')
		noteTweenY('weewoobyebye2', 1, 740, 1.1, 'expoIn')
		noteTweenY('weewoobyebye3', 2, 740, 1.2, 'expoIn')
		noteTweenY('weewoobyebye4', 3, 740, 1.3, 'expoIn')
		noteTweenAlpha('weewoobye', 0, 0, 1, 'expoIn')
		noteTweenAlpha('weewoobye2', 1, 0, 1.1, 'expoIn')
		noteTweenAlpha('weewoobye3', 2, 0, 1.2, 'expoIn')
		noteTweenAlpha('weewoobye4', 3, 0, 1.3, 'expoIn')

		removeLuaScript('zoomcam')
	end

	if curStep == 2528 then
		setProperty('boyfriend.color', getColorFromHex('ffffff'))
		setProperty('dad.color', getColorFromHex('ffffff'))
		setProperty('blue.visible', false)
		setProperty('black.visible', false)
		setProperty('light.visible', true)
		setProperty('vignette.visible', true)
		setProperty('errorscreen.visible', false)
		setProperty('front1.visible', true)
		setProperty('front2.visible', true)
		setProperty('front3.visible', true)
		setProperty("defaultCamZoom", 0.9) 

		removeLuaScript('movecam')
	end

	if curStep == 2560 then
--		noteTweenX('takeitbacknowyall', 4, 800, 2, 'expoInOut')
--		noteTweenX('takeitbacknowyall2', 5, 910, 2, 'expoInOut')
--		noteTweenX('takeitbacknowyall3', 6, 1020, 2, 'expoInOut')
--		noteTweenX('takeitbacknowyall4', 7, 1130, 2, 'expoInOut')

		setProperty("defaultCamZoom", 1) 
		addLuaScript('bump')
		addLuaScript('shake')
		setProperty('defaultCamZoom', 1) 
		doTweenX('byefriend', 'boyfriend', 2150, 1.7, 'quintIn')
		doTweenX('byegrey', 'dad', 20, 1.7, 'quintIn')
	end

	if curStep == 2816 then
		setProperty("defaultCamZoom", 0.9) 
	end

	if curStep == 2832 then
		setProperty("defaultCamZoom", 1.2) 
	end

	if curStep == 3088 then
		setProperty('black2.alpha', 1)
	end
end



























--stuff that didnt work in case i need it later



--function onTimerCompleted(misstimer)
--	setMisses('missnum - 1')
--	missnum = getProperty('misses')
--
--	if misses == 0 then
--		cancelTimer('misstimer')
--	end
--end
--this shit didnt work lmao



--function onTimerCompleted(misstimer)
--	setMisses('missnum - 1')
--	missnum = getProperty('misses')
--
--	if misses == 6 then
--		setMisses(5)
--		runTimer('misstimer', 5, 1)
--	end
--
--	if misses == 5 then
--		setMisses(4)
--		runTimer('misstimer', 5, 1)
--	end
--
--	if misses == 4 then
--		setMisses(3)
--		runTimer('misstimer', 5, 1)
--	end
--
--	if misses == 3 then
--		setMisses(2)
--		runTimer('misstimer', 5, 1)
--	end
--
--	if misses == 2 then
--		setMisses(1)
--		runTimer('misstimer', 5, 1)
--	end
--
--	if misses == 1 then
--		setMisses(0)
--		runTimer('misstimer', 5, 1)
--	end
--
--	if misses == 0 then
--		cancelTimer('misstimer')
--	end
--end


--function noteMiss(id, direction, noteType, isSustainNote)
--	if noteType == ''
--		then playSound('miss', 1)
--		runTimer('misstimer', 5, 1)
--	end
--
--	if misses == 0 then
--		objectPlayAnimation('notebg', 'back6', false);
--	end
--
--	if misses == 1 then
--		runTimer('misstimer5', 5, 1)
--		objectPlayAnimation('notebg', 'back5', false);
--	end
--
--	if misses == 2 then
--		runTimer('misstimer4', 5, 1)
--		cancelTimer('misstimer5')
--		objectPlayAnimation('notebg', 'back4', false);
--	end
--
--	if misses == 3 then
--		runTimer('misstimer3', 5, 1)
--		cancelTimer('misstimer4')
--		objectPlayAnimation('notebg', 'back3', false);
--	end
--
--	if misses == 4 then
--		runTimer('misstimer2', 5, 1)
--		cancelTimer('misstimer3')
--		objectPlayAnimation('notebg', 'back2', false);
--	end
--
--	if misses == 5 then
--		runTimer('misstimer1', 5, 1)
--		cancelTimer('misstimer2')
--		objectPlayAnimation('notebg', 'back1', false);
--	end
--
--	if misses == 6 then
--		cancelTimer('misstimer1')
--		setProperty('health', 0)
--	end
--end

--function onUpdate(elapsed)
--
--end


--function onTimerCompleted(misstimer5)
--	setMisses(0)
--end
--
--function onTimerCompleted(misstimer4)
--	setMisses(1)
--end
--
--function onTimerCompleted(misstimer3)
--	setMisses(2)
--end
--
--function onTimerCompleted(misstimer2)
--	setMisses(3)
--end
--
--function onTimerCompleted(misstimer1)
--	setMisses(4)
--end
