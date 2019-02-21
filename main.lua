-----------------------------------------------------------------------------------------
--
-- how to calculate cost of pizza by diameter
-- 
-----------------------------------------------------------------------------------------

local DiameterOfPizzaTextFeild = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
DiameterOfPizzaTextFeild.id = "pizza diameter"

 local CostOfPizzaTextFeild = display.newText( "Cost", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
CostOfPizzaTextFeild.id = "area textField"
CostOfPizzaTextFeild:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./myAssests/Sprite/calculate.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
display.setDefault("background", 0, 255, 0)
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local DiameterOfPizza
    local CostOfPizza
 
    DiameterOfPizza = DiameterOfPizzaTextFeild.text
    CostOfPizza = (0.50 * DiameterOfPizza + 0.75 + 1.00) * 1.13

    CostOfPizzaTextFeild.text = "The cost is " .. CostOfPizza

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
