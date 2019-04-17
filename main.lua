-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Character move

local dPad = display.newImageRect( "assets/d-pad.png", 300, 300 )
dPad.x = 150
dPad.y = display.contentHeight - 80
dPad.id = "d-pad"

--up arrow 

local upArrow = display.newImageRect( "assets/upArrow.png", 70, 50 )
upArrow.x = 150
upArrow.y = display.contentHeight -187
upArrow.id = "up arrow"

-- down arrow 

local downArrow =display.newImageRect ("assets/downArrow.png" , 70, 50 )
downArrow.x = 150
downArrow.y = display.contentCenterY +272
downArrow.id = "down Arrow"

--right arrow 

local rightArrow = display.newImageRect ("assets/rightArrow.png" , 50,70 )
rightArrow.x = 260
rightArrow.y = display.contentHeight -80
rightArrow.id = "right Arrow"

--left Arrow

local leftArrow = display.newImageRect ( "assets/leftArrow.png", 50,70)
leftArrow.x = 40
leftArrow.y = display.contentHeight -80
leftArrow.id = "left arrow"

-- character 

local theCharacter = display.newImageRect( "assets/Idle.png", 70, 70 )
theCharacter.x =90
theCharacter.y = 125
theCharacter.id = "the character"
 
function upArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 0, -- move 0 in the x direction 
        	y = -50, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

function downArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 0, -- move 0 in the x direction 
        	y = 50, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

function rightArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 50, -- move 0 in the x direction 
        	y = 0, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

function leftArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = -50, -- move 0 in the x direction 
        	y = 0, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

upArrow:addEventListener( "touch", upArrow )
downArrow:addEventListener( "touch", downArrow )
rightArrow:addEventListener( "touch",rightArrow )
leftArrow:addEventListener( "touch", leftArrow)
