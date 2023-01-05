---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  PARTICLE                                                                                    ---
---==============================================================================================---

---A Minecraft particle.
---
---Allows for an OOP way to handle particles.
---@class Particle
local Particle


---===== METHODS =====---

---Removes this particle from the world.
---@generic self
---@param self self
---@return self
function Particle:remove() end

---Spawns this particle with the current properties.
---@generic self
---@param self self
---@return self
function Particle:spawn() end


---===== GETTERS =====---

---Gets the total amount of time this particle will be active for in ticks.
---@return integer
function Particle:getLifetime() end

---Gets if this particle currently exists.
---@return boolean
function Particle:isAlive() end


---===== SETTERS =====---

---Sets the color of this particle.
---
---If `color` is `nil`, it will default to `⟨1, 1, 1, 1⟩`.
---@param color? Vector3 | Vector4
function Particle:setColor(color) end

---If `r`, `g`, `b`, or `a` are `nil`, they will default to `1`.
---@param r? number
---@param g? number
---@param b? number
---@param a? number
function Particle:setColor(r, g, b, a) end

---Sets the gravity of this particle.
---
---If `speed` is `nil`, it will default to `0`.
---@param speed? number
function Particle:setGravity(speed) end

---Sets the amount of time this particle should exist for in ticks.
---
---If `time` is `nil`, it will default to `0`.
---@param time? integer
function Particle:setLifetime(time) end

---Sets if this particle collides with blocks.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function Particle:setPhysics(state) end

---Sets the world position of this particle.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
function Particle:setPos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function Particle:setPos(x, y, z) end

---Sets the "power" of the particle.
---
---If `power` is `nil`, it will default to `0`.
---
---TODO: Needs more testing.
---@param power? number
function Particle:setPower(power) end

---Sets the scale of this particle.
---
---If `scale` is `nil`, it will default to `0`.
---@param scale? number
function Particle:setScale(scale) end

---Sets the velocity of this particle.
---
---If `vel` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param vel? Vector3
function Particle:setVelocity(vel) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function Particle:setVelocity(x, y, z) end


---===== CHAINED =====---

---Sets the color of this particle.
---
---If `color` is `nil`, it will default to `⟨1, 1, 1, 1⟩`.
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function Particle:color(color) end

---If `r`, `g`, `b`, or `a` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function Particle:color(r, g, b, a) end

---Sets the gravity of this particle.
---
---If `speed` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param speed? number
---@return self
function Particle:gravity(speed) end

---Sets the amount of time this particle should exist for in ticks.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? integer
---@return self
function Particle:lifetime(time) end

---Sets if this particle collides with blocks.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Particle:physics(state) end

---Sets the world position of this particle.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function Particle:pos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Particle:pos(x, y, z) end

---Sets the "power" of the particle.
---
---If `power` is `nil`, it will default to `0`.
---
---TODO: Needs more testing.
---@generic self
---@param self self
---@param power? number
---@return self
function Particle:power(power) end

---Sets the scale of this particle.
---
---If `scale` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param scale? number
---@return self
function Particle:scale(scale) end

---Sets the velocity of this particle.
---
---If `vel` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vel? Vector3
---@return self
function Particle:velocity(vel) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Particle:velocity(x, y, z) end
