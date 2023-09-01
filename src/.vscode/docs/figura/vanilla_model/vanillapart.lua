---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  VANILLAPART                                                                                                     ---
---==================================================================================================================---

---The base class for all vanilla parts.
---@class VanillaPart
local VanillaPart


---===== GETTERS =====---

---Gets the rotation offset of this vanilla part in degrees.
---
---If you are looking for the normal rotation, use `:getRot()`.
---
---Returns `nil` if a rotation offset is not set.
---@return Vector3?
---@nodiscard
function VanillaPart:getOffsetRot() end

---Gets the scale offset of this vanilla part.
---
---If you are looking for the normal scale, use `:getScale()`.
---
---Returns `nil` if a scale offset is not set.
---@return Vector3?
---@nodiscard
function VanillaPart:getOffsetScale() end

---Gets the position offset of this vanilla part.
---
---Returns `nil` if a position offset is not set.
---@return Vector3?
---@nodiscard
function VanillaPart:getPos() end

---Gets the rotation of this vanilla part in degrees.
---
---Returns `nil` if a rotation is not set.
---@return Vector3?
---@nodiscard
function VanillaPart:getRot() end

---Gets the scale multiplier of this vanilla part.
---
---Returns `nil` if a scale is not set.
---@return Vector3?
---@nodiscard
function VanillaPart:getScale() end

---Gets if this vanilla part is visible.
---
---Returns `nil` if this part is following Minecraft's expected visibility.
---@return boolean?
---@nodiscard
function VanillaPart:getVisible() end


---===== SETTERS =====---

---Sets the rotation offset of this vanilla part.
---
---If `rot` is `nil`, the rotation offset is removed.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function VanillaPart:setOffsetRot(rot) end

---Sets the rotation offset of this vanilla part.
---
---If `x` is `nil`, the rotation offset is removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:setOffsetRot(x, y, z) end

---Sets the scale offset of this vanilla part.
---
---If `scale` is `nil`, the scale offset is removed.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function VanillaPart:setOffsetScale(scale) end

---Sets the scale offset of this vanilla part.
---
---If `x` is `nil`, the scale offset is removed.  
---If `y` or `z` are `nil`, they will default to the value of `x`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:setOffsetScale(x, y, z) end

---Sets the position offset of this vanilla part.
---
---If `pos` is `nil`, the position offset is removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function VanillaPart:setPos(pos) end

---Sets the position offset of this vanilla part.
---
---If `x` is `nil`, the position offset is removed.
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:setPos(x, y, z) end

---Sets the rotation of this vanilla part.
---
---If `rot` is `nil`, the rotation is removed.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function VanillaPart:setRot(rot) end

---Sets the rotation of this vanilla part.
---
---If `x` is `nil`, the rotation is removed.
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:setRot(x, y, z) end

---Sets the scale multiplier of this vanilla part.
---
---If `scale` is `nil`, the scale is removed.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function VanillaPart:setScale(scale) end

---Sets the scale multiplier of this vanilla part.
---
---If `x` is `nil`, the scale is removed.
---If `y` or `z` are `nil`, they will default to the value of `x`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:setScale(x, y, z) end

---Sets the visibility of this vanilla part.
---
---A boolean value will force the part to be (in)visible, `nil` will make the part visible when Minecraft expects it to
---be.
---@generic self
---@param self self
---@param state? boolean
---@return self
function VanillaPart:setVisible(state) end


---===== CHAINED =====---

---Sets the rotation offset of this vanilla part.
---
---If `rot` is `nil`, the rotation offset is removed.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function VanillaPart:offsetRot(rot) end

---Sets the rotation offset of this vanilla part.
---
---If `x` is `nil`, the rotation offset is removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:offsetRot(x, y, z) end

---Sets the scale offset of this vanilla part.
---
---If `scale` is `nil`, the scale offset is removed.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function VanillaPart:offsetScale(scale) end

---Sets the scale offset of this vanilla part.
---
---If `x` is `nil`, the scale offset is removed.  
---If `y` or `z` are `nil`, they will default to the value of `x`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:offsetScale(x, y, z) end

---Sets the position offset of this vanilla part.
---
---If `pos` is `nil`, the position offset is removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function VanillaPart:pos(pos) end

---Sets the position offset of this vanilla part.
---
---If `x` is `nil`, the position offset is removed.
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:pos(x, y, z) end

---Sets the rotation of this vanilla part.
---
---If `rot` is `nil`, the rotation is removed.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function VanillaPart:rot(rot) end

---Sets the rotation of this vanilla part.
---
---If `x` is `nil`, the rotation is removed.
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:rot(x, y, z) end

---Sets the scale multiplier of this vanilla part.
---
---If `scale` is `nil`, the scale is removed.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function VanillaPart:scale(scale) end

---Sets the scale multiplier of this vanilla part.
---
---If `x` is `nil`, the scale is removed.
---If `y` or `z` are `nil`, they will default to the value of `x`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function VanillaPart:scale(x, y, z) end

---Sets the visibility of this vanilla part.
---
---A boolean value will force the part to be (in)visible, `nil` will make the part visible when Minecraft expects it to
---be.
---@generic self
---@param self self
---@param state? boolean
---@return self
function VanillaPart:visible(state) end


---==================================================================================================================---
---  VANILLAMODELGROUP extends VANILLAPART                                                                           ---
---==================================================================================================================---

---A group of vanilla model parts.
---
---Setters run on this group will affect all parts in the group.
---@class VanillaModelGroup: VanillaPart
local VanillaModelGroup


---==================================================================================================================---
---  VANILLAMODELPART extends VANILLAPART                                                                            ---
---==================================================================================================================---

---A single part of the vanilla player model.
---@class VanillaModelPart: VanillaPart
local VanillaModelPart


---===== GETTERS =====---

---Gets the position offset applied by Minecraft to this vanilla part.
---@return Vector3
---@nodiscard
function VanillaModelPart:getOriginPos() end

---Gets the rotation applied by Minecraft to this vanilla part in degrees.
---@return Vector3
---@nodiscard
function VanillaModelPart:getOriginRot() end

---Gets the scale applied by Minecraft to this vanilla part.
---@return Vector3
---@nodiscard
function VanillaModelPart:getOriginRot() end

---Gets whether Minecraft has set this vanilla part as visible.
---@return boolean
---@nodiscard
function VanillaModelPart:getOriginVisible() end
