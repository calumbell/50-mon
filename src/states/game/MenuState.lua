--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

MenuState = Class{__includes = BaseState}

function MenuState:init(params, battleState)
	self.battleState = params.battleState

	if params.menuType == "level up" then
		self.menu = Menu ({
			x = VIRTUAL_WIDTH - 128,
			y = 64,
			width = 128,
        	height = VIRTUAL_HEIGHT - 64,
        	selectionEnabled = false,
        	items = {
        		{
        			text = "HP"
        		},

        		{
        			text = "Attack"
        		},

        		{
        			text = "Defense"
        		},

        		{
        			text = "Speed"
        		}
        	}
		})
	end
end

function MenuState:update(dt)
	self.menu:update(dt)
end

function MenuState:render()
	self.menu:render()
end