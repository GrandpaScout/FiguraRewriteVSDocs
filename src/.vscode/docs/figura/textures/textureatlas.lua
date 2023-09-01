---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  TEXTUREATLAS                                                                                                    ---
---==================================================================================================================---

---A Minecraft texture atlas.
---@class TextureAtlas
local TextureAtlas


---===== METHODS =====---

---Creates a list of paths to every sprite inside of this atlas.
---@return string[]
---@nodiscard
function TextureAtlas:listSprites() end


---===== GETTERS =====---

---Gets the height of this atlas in pixels.
---@return integer
---@nodiscard
function TextureAtlas:getHeight() end

---Gets the UV for a specific sprite in this atlas.
---
---If the given sprite path is not found in this atlas, the UV for `minecraft:missingno` is returned instead.
---@param path string
---@return Vector4
---@nodiscard
function TextureAtlas:getSpriteUV(path) end

---Gets the width of this atlas in pixels.
---@return integer
---@nodiscard
function TextureAtlas:getWidth() end
