---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  BIOME                                                                                                           ---
---==================================================================================================================---

---A Minecraft biome.
---@class Biome
---The namespaced id of this biome.
---<!--
---@field id Minecraft.biomeID
local Biome


---===== GETTERS =====---

---Gets the humidity of this biome.
---@return number
---@nodiscard
function Biome:getDownfall() end

---Gets the fog color of this biome.
---@return Vector3
---@nodiscard
function Biome:getFogColor() end

---Gets the foliage color of this biome.
---@return Vector3
---@nodiscard
function Biome:getFoliageColor() end

---Gets the grass color of this biome.
---@return Vector3
---@nodiscard
function Biome:getGrassColor() end

---Gets the position that this Biome object uses for calculations.
---@return Vector3
---@nodiscard
function Biome:getPos() end

---Gets the precipitation type of this biome.
---@return Biome.precipitation
---@nodiscard
function Biome:getPrecipitation() end

---Gets the sky color of this biome.
---@return Vector3
---@nodiscard
function Biome:getSkyColor() end

---Gets the tags of this biome.
---@return string[]
---@nodiscard
function Biome:getTags() end

---Gets the temperature of this biome.
---@return number
---@nodiscard
function Biome:getTemperature() end

---Gets the water color of this biome.
---@return Vector3
---@nodiscard
function Biome:getWaterColor() end

---Gets the water fog color of this biome.
---@return Vector3
---@nodiscard
function Biome:getWaterFogColor() end

---Gets if this biome is considered cold.
---@return boolean
---@nodiscard
function Biome:isCold() end

---Gets if this biome is considered hot.
---@return boolean
---@nodiscard
function Biome:isHot() end


---===== SETTERS =====---

---Sets the position used by this Biome object for its calculations.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function Biome:setPos(pos) end

---Sets the position used by this Biome object for its calculations.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? Vector3
---@param y? Vector3
---@param z? Vector3
---@return self
function Biome:setPos(x, y, z) end


---===== CHAINED =====---

---Sets the position used by this Biome object for its calculations.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function Biome:pos(pos) end

---Sets the position used by this Biome object for its calculations.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? Vector3
---@param y? Vector3
---@param z? Vector3
---@return self
function Biome:pos(x, y, z) end
