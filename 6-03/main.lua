-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local answerAsNumber = native.newTextField( display.contentCenterX, display.contentCenterY - 50, 100, 50)
answerAsNumber.id = ("answer textField")

local button = display.newImageRect ( "./assets/button.png", 50, 50)
button.x = display.contentCenterX
button.y = display.contentCenterY

local function buttonTouch (event)
	local number = tonumber(answerAsNumber.text)

	if number >= 17 then
		local RText = display.newText ("You can watch a M movie", display.contentCenterX, display.contentCenterY + 50)
	elseif number >= 13 then
			local PGText = display.newText ("You can watch a PG-13 movie", display.contentCenterX, display.contentCenterY + 50)
	else
		local GText = display.newText ("You can watch a G/PG movie", display.contentCenterX, display.contentCenterY + 50)
	end
end

button:addEventListener ('touch', buttonTouch)