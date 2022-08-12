BoomDuck = class()

function BoomDuck.boom(self)
    sm.physics.explode(self.shape.worldPosition, 2, 1, 420, 10, "PropaneTank - ExplosionBig")
    self.shape.destroyShape(self.shape, 0)
end

function BoomDuck.server_onMelee(self)
    BoomDuck.boom(self)
end

function BoomDuck.server_onProjectile(self)
    BoomDuck.boom(self)
end

function BoomDuck.server_onExplosion(self)
    BoomDuck.boom(self)
end
