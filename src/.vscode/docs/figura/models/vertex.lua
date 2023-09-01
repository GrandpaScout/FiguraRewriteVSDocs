---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  VERTEX                                                                                                          ---
---==================================================================================================================---

---A vertex of some rendered object.
---@class Vertex
local Vertex


---===== GETTERS =====---

---Gets the normal vector of this vertex.
---@return Vector3
---@nodiscard
function Vertex:getNormal() end

---Gets the position of this vertex.
---@return Vector3
---@nodiscard
function Vertex:getPos() end

---Gets the UV position of this vertex on its face's texture.
---@return Vector2
---@nodiscard
function Vertex:getUV() end


---===== SETTERS =====---

---Sets the normal vector of this vertex.
---
---If `normal` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param normal? Vector3
---@return self
function Vertex:setNormal(normal) end

---Sets the normal vector of this vertex.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vertex:setNormal(x, y, z) end

---Gets the position of this vertex.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function Vertex:setPos(pos) end

---Gets the position of this vertex.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vertex:setPos(x, y, z) end

---Gets the UV position of this vertex on its face's texture.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function Vertex:setUV(uv) end

---Gets the UV position of this vertex on its face's texture.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function Vertex:setUV(u, v) end


---===== CHAINED =====---

---Sets the normal vector of this vertex.
---
---If `normal` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param normal? Vector3
---@return self
function Vertex:normal(normal) end

---Sets the normal vector of this vertex.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vertex:normal(x, y, z) end

---Gets the position of this vertex.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function Vertex:pos(pos) end

---Gets the position of this vertex.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vertex:pos(x, y, z) end

---Gets the UV position of this vertex on its face's texture.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function Vertex:uv(uv) end

---Gets the UV position of this vertex on its face's texture.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function Vertex:uv(u, v) end
