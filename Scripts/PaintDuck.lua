---@class PaintDuck:ShapeClass

PaintDuck = class()

function PaintDuck.client_onInteract(self, character, state)
    if state then
        self.network:sendToServer("sv_paint")
    end
end

function PaintDuck:sv_paint()
    local color = self.shape:getColor()
    local body = self.shape:getBody()
    local shapes = body:getCreationShapes()

    for k, shape in ipairs(shapes) do
        shape:setColor(color)
    end
end

