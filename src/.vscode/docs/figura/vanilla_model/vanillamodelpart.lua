---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  VANILLAMODELPART                                                                            ---
---==============================================================================================---

---A single part of the vanilla player model.
---@class VanillaModelPart
local VanillaModelPart


---===== GETTERS =====---

---Gets the position offset applied by Minecraft to this vanilla part in units.
---@return Vector3
function VanillaModelPart:getOriginPos() end

---Gets the rotation applied by Minecraft to this vanilla part in degrees.
---@return Vector3
function VanillaModelPart:getOriginRot() end

---Gets whether Minecraft has set this vanilla part as visible.
---@return boolean
function VanillaModelPart:getOriginVisible() end

---Gets if the script has set this part as visible.
---
---Returns `nil` if it is following Minecraft's expected visibility.
---@return boolean?
function VanillaModelPart:getVisible() end


---===== SETTERS =====---

---Sets this vanilla part to either be always visible, always invisible, or visible when Minecraft
---says it should be.
---
---A boolean value will force the part to be (in)visible, `nil` will make the part visible when
---Minecraft expects it to be.
---@param state? boolean
function VanillaModelPart:setVisible(state) end


---==============================================================================================---
---  VANILLAMODELGROUP                                                                           ---
---==============================================================================================---

---A group of vanilla model parts.
---
---Setters run on this group will affect all parts in the group.
---@class VanillaModelGroup
local VanillaModelGroup


---===== GETTERS =====---

---Gets if the script has set this part group as visible.
---
---Returns `nil` if it is following Minecraft's expected visibility.
---@return boolean?
function VanillaModelGroup:getVisible() end


---===== SETTERS =====---

---Sets this group of vanilla parts to either be always visible, always invisible, or visible
---when Minecraft says they should be.
---
---A boolean value will force the group to be (in)visible, `nil` will make the group visible when
---Minecraft expects it to be.
---@param state? boolean
function VanillaModelGroup:setVisible(state) end
