--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

MenuState = Class{__includes = BaseState}

function MenuState:init(params)
	params.battleState = params.battleState

	if params.menuType == "level up" then
		self.menu = Menu ({
			x = VIRTUAL_WIDTH - 192,
			y = 96,
			width = 192,
        	height = VIRTUAL_HEIGHT - 96,
        	selectionEnabled = false,
        	onClose = params.onClose,
        	items = params.items
		})
	end
end

function MenuState:update(dt)
	self.menu:update(dt)
end

function MenuState:render()
	self.menu:render()
end