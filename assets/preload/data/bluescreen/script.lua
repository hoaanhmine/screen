local shadname = "error"
function onCreatePost()
	if not shadersEnabled then close() end
	initLuaShader(shadname)
	makeLuaSprite("grapshad")
	setSpriteShader("grapshad", shadname)
end

function onSectionHit()
	if curSection == 158 then
		runHaxeCode([[game.gf.shader = game.getLuaObject("grapshad").shader;]]) 
--	elseif curSection == 158 then
--		runHaxeCode([[game.gf.shader = null;]]) 
	end
end

function onUpdatePost(elapsed)
    setShaderFloat("grapshad", "iTime", getSongPosition())
end
