---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  TEXTURE                                                                                                         ---
---==================================================================================================================---

---A texture for use by the avatar.
---@class Texture
local Texture


---===== METHODS =====---

---Calls the given function on an area of pixels in this texture. The function can then set the
---color of the pixels in that area.
---
---If `x`, `y`, `width`, or `height` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? integer
---@param y? integer
---@param width? integer
---@param height? integer
---@param func Texture.applyFunc
---@return self
function Texture:applyFunc(x, y, width, height, func) end

---Transforms an area of pixels in this texture with the given matrix.
---
---If `x`, `y`, `width`, or `height` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? integer
---@param y? integer
---@param width? integer
---@param height? integer
---@param mat Matrix4
---@return self
function Texture:applyMatrix(x, y, width, height, mat) end

---Fills the given area with a single color.
---
---If `x`, `y`, `width`, or `height` are `nil`, they will default to `0`.  
---If `color` is `nil`, it will default to `⟨0, 0, 0, 1⟩`
---@generic self
---@param self self
---@param x? integer
---@param y? integer
---@param width? integer
---@param height? integer
---@param color? Vector3 | Vector4
---@return self
function Texture:fill(x, y, width, height, color) end

---Fills the given area with a single color.
---
---If `x`, `y`, `width`, `height`, `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param x? integer
---@param y? integer
---@param width? integer
---@param height? integer
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function Texture:fill(x, y, width, height, r, g, b, a) end

---Reverts this texture back to its original state.
---@generic self
---@param self self
---@return self
function Texture:restore() end

---Returns the base64 representation of this textire.
---@return string
---@nodiscard
function Texture:save() end

---Submits all changes to the texture, allowing them to be viewed in-game.
---@generic self
---@param self self
---@return self
function Texture:update() end


---===== GETTERS =====---

---Gets the width and height of this texture as a vector.
---@return Vector2
---@nodiscard
function Texture:getDimensions() end

---Gets the name of this texture.
---@return string
---@nodiscard
function Texture:getName() end

---Gets the color of the specified pixel.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@param x? integer
---@param y? integer
---@return Vector4
---@nodiscard
function Texture:getPixel(x, y) end


---===== SETTERS =====---

---Sets the color of the given pixel.
---
---If `x` or `y` are `nil`, they will default to `0`.  
---If `color` is `nil`, it will default to `⟨0, 0, 0, 1⟩`
---@generic self
---@param self self
---@param x? integer
---@param y? integer
---@param color? Vector3 | Vector4
---@return self
function Texture:setPixel(x, y, color) end

---Sets the color of the given pixel.
---
---If `x`, `y`, `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param x? integer
---@param y? integer
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function Texture:setPixel(x, y, r, g, b, a) end


---===== CHAINED =====---

---Sets the color of the given pixel.
---
---If `x` or `y` are `nil`, they will default to `0`.  
---If `color` is `nil`, it will default to `⟨0, 0, 0, 1⟩`
---@generic self
---@param self self
---@param x? integer
---@param y? integer
---@param color? Vector3 | Vector4
---@return self
function Texture:pixel(x, y, color) end

---Sets the color of the given pixel.
---
---If `x`, `y`, `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param x? integer
---@param y? integer
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function Texture:pixel(x, y, r, g, b, a) end
