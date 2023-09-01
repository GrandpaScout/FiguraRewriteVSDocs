---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  PARTICLE                                                                                                        ---
---==================================================================================================================---

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

---Gets the color of this particle.
---@return Vector4
---@nodiscard
function Particle:getColor() end

---Gets the gravity of this particle.
---@return number
---@nodiscard
function Particle:getGravity() end

---Gets the total amount of time this particle will be active for in ticks.
---@return integer
---@nodiscard
function Particle:getLifetime() end

---Gets the position of this particle.
---@return Vector3
---@nodiscard
function Particle:getPos() end

---Gets the power of this particle.
---@return number
---@nodiscard
function Particle:getPower() end

---Gets the scale multiplier of this particle.
---@return number
---@nodiscard
function Particle:getScale() end

---Gets the size of this particle.
---@return number
---@nodiscard
function Particle:getSize() end

---Gets the velocity of this particle.
---@return Vector3
---@nodiscard
function Particle:getVelocity() end

---Gets if this particle collides with solid objects.
---@return boolean
---@nodiscard
function Particle:hasPhysics() end

---Gets if this particle currently exists.
---@return boolean
---@nodiscard
function Particle:isAlive() end


---===== SETTERS =====---

---Sets the color of this particle.  
---If a `Vector3` is given, it is augmented with a `1`.
---
---This is a multiplier, that means that `⟨1, 1, 1, 1⟩` will result in no change and `⟨0, 0, 0, 1⟩` will
---result in black.
---
---If `color` is `nil`, it will default to `⟨1, 1, 1, 1⟩`.
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function Particle:setColor(color) end

---Sets the color of this particle.
---
---This is a multiplier, that means that `1, 1, 1, 1` will result in no change and `0, 0, 0, 1` will
---result in black.
---
---If `r`, `g`, `b`, or `a` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function Particle:setColor(r, g, b, a) end

---Sets the gravity of this particle.
---
---If `speed` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param speed? number
---@return self
function Particle:setGravity(speed) end

---Sets the amount of time this particle should exist for in ticks.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? integer
---@return self
function Particle:setLifetime(time) end

---Sets if this particle collides with blocks.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Particle:setPhysics(state) end

---Sets the world position of this particle.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function Particle:setPos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Particle:setPos(x, y, z) end

---Sets the "power" of the particle.
---
---If `power` is `nil`, it will default to `0`.
---
---TODO: Needs more testing.
---@generic self
---@param self self
---@param power? number
---@return self
function Particle:setPower(power) end

---Sets the scale of this particle.
---
---If `scale` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param scale? number
---@return self
function Particle:setScale(scale) end

---Sets the velocity of this particle.
---
---If `vel` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vel? Vector3
---@return self
function Particle:setVelocity(vel) end

---Sets the velocity of this particle.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Particle:setVelocity(x, y, z) end


---===== CHAINED =====---

---Sets the color of this particle.  
---If a `Vector3` is given, it is augmented with a `1`.
---
---This is a multiplier, that means that `⟨1, 1, 1, 1⟩` will result in no change and `⟨0, 0, 0, 1⟩` will
---result in black.
---
---If `color` is `nil`, it will default to `⟨1, 1, 1, 1⟩`.
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function Particle:color(color) end

---Sets the color of this particle.
---
---This is a multiplier, that means that `1, 1, 1, 1` will result in no change and `0, 0, 0, 1` will
---result in black.
---
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

---Sets the velocity of this particle.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Particle:velocity(x, y, z) end
