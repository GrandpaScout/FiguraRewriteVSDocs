---@meta

---@diagnostic disable: duplicate-set-field

--TODO: Review all descriptions to see if they fit the style guide.

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
---@return boolean
function VanillaModelPart:getVisible() end


---===== SETTERS =====---

---Sets if this vanilla part is visible.
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

---Gets if the script has set the vanilla parts in this group as visible.
---@return boolean
function VanillaModelGroup:getVisible() end


---===== SETTERS =====---

---Sets if the vanilla parts in this group are visible.
---@param state? boolean
function VanillaModelGroup:setVisible(state) end
