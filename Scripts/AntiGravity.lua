AntiGravity = class()

function AntiGravity.server_onCreate()
    sm.physics.setGravity(0)
end
