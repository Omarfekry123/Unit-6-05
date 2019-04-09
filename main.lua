  display.setDefault( "background", 505/255, 203/255, 200/255 )


  local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + -120, 300, 40 )

	answerTextField.id = "answerTextField"



	local image = display.newImageRect( "assets/images/enterButton.png", 150, 75 )

	image.x = display.contentCenterX

	image.y = 185

	image.id = "calculatebutton"



	display.newText( "Age", display.contentCenterX, display.contentCenterY, native.systemFont, 30 )



	local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 300, 40 )

	ageTextField.id = "ageTextField"

	ageTextField.inputType="number"



	display.newText( "Day of the week", display.contentCenterX, display.contentCenterY +90, native.systemFont, 30 )



	local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 300, 40 )

	dayTextField.id = "dayTextField"



	local function calculateButtonTouch( event )

		local age = tonumber(ageTextField.text)

		local day = dayTextField.text

		if day == "Sunday" or day == "Saturday" then

			answerTextField.text = "Be happy it's weekend"

			else if age < 18 then

				answerTextField.text =  "It's School Time"

			else

				answerTextField.text =  "It's work Time"

			end

		end

	end

image:addEventListener( "touch", calculateButtonTouch )-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here