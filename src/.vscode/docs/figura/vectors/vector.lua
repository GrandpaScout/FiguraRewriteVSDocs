---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  VECTOR-INTERNAL                                                                             ---
---==============================================================================================---

---**INTERNAL CLASS**&emsp;*Do not use this!*
---
---Contains generic string field for indexing.
---@class Vector.*INTERNAL*
---A possible vector.
---
---If this vector is confirmed to be valid, its type can be cast by adding `--[[@as Vector#]]` after
---indexing.
---```lua
---local v4 = <Vector>.xy_z --[[@as Vector4]]
---      ┌┴──────────────────┐
---      │local v4: Vector4 {│
---      │    ...            │
---      │}                  │
---      └───────────────────┘
---```
---<!--
---@field [string]? Vector


---==============================================================================================---
---  VECTOR                                                                                      ---
---==============================================================================================---

---The base class of all vectors.
---
---This should never be used directly unless the type of vector does not need to be known.  
---If the type of vector will be inferred later in your function, use `Vector.any` instead.
---@class Vector: Vector.*INTERNAL*
---@operator unm: Vector
---@operator len: integer
---@operator add(number | Vector): Vector
---@operator sub(number | Vector): Vector
---@*error Multiplying by a Matrix modifies the vector instead of copying it.
---@operator mul(number | Vector | Matrix): Vector
---@operator div(number | Vector): Vector
---@operator mod(number | Vector): Vector
---@field _ 0 # A zero.
---An empty Vector2.
---<!--
---@field __ Vector2
---An empty Vector3.
---<!--
---@field ___ Vector3
---An empty Vector4.
---<!--
---@field ____ Vector4
local Vector


---===== METHODS =====---

---Call a function for each element of this vector and set that element to the return value of the
---function.
---@generic self
---@param self self
---@param func Vector.applyFunc
---@return self
function Vector:applyFunc(func) end

---Creates and returns a copy of this vector with its elements rounded up.
---@return Vector
---@nodiscard
function Vector:ceil() end

---Creates and returns a copy of this vector with its length clamped to the given values.
---
---If `min` or `max` are `nil`, the length will not be clamped from that side.
---@param min? number
---@param max? number
---@return Vector
---@nodiscard
function Vector:clamped(min, max) end

---Modifies this vector so that it's length is clamped between the two given values.
---
---If `min` or `max` are `nil`, the length will not be clamped from that side.
---@generic self
---@param self self
---@param min? number
---@param max? number
---@return self
function Vector:clampLength(min, max) end

---Creates and returns a copy of this vector.
---@return Vector
---@nodiscard
function Vector:copy() end

---Gets the dot product of this vector and another.
---@param vec Vector
---@return number
---@nodiscard
function Vector:dot(vec) end

---Creates and returns a copy of this vector with its elements rounded down.
---@return Vector
---@nodiscard
function Vector:floor() end

---Calculates the length of this vector.
---@return number
---@nodiscard
function Vector:length() end

---Calculates the squared length of this vector.
---
---Faster as it avoids a square root, but only useful for length comparisons.
---@return number
---@nodiscard
function Vector:lengthSquared() end

---Modifies this vector so its length is `1`.  
---Does nothing if this vector's length is `0`.
---@generic self
---@param self self
---@return self
function Vector:normalize() end

---Creates and returns a copy of this vector modified to have a length of 1.  
---The copy does not change length if this vector's length is `0`.
---@return Vector
---@nodiscard
function Vector:normalized() end

---Adds the given factor to all elements of this vector.
---
---If `factor` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param factor? number
---@return self
function Vector:offset(factor) end

---Sets all elements of this vector back to `0`.
---@generic self
---@param self self
---@return self
function Vector:reset() end

---Multiplies all elements of this vector by the given factor.
---@generic self
---@param self self
---@param factor? number
---@return self
function Vector:scale(factor) end

---Creates and returns a copy of this vector as radians converted to degrees.
---@return Vector
---@nodiscard
function Vector:toDeg() end

---Creates and returns a copy of this vector as degrees converted to radians.
---@return Vector
---@nodiscard
function Vector:toRad() end

---Converts this vector into a string and returns it.
---@return string
---@nodiscard
function Vector:toString() end

---Converts this vector into separate numbers and returns them.
---@return number ...
---@nodiscard
function Vector:unpack() end


---==============================================================================================---
---  VECTOR2 extends VECTOR                                                                      ---
---==============================================================================================---

---A vector that is two elements long.
---@class Vector2: Vector
---@operator unm: Vector2
---@operator len: 2
---@operator add(number | Vector2): Vector2
---@operator sub(number | Vector2): Vector2
---@*error Multiplying by a Matrix modifies the vector instead of copying it.
---@operator mul(number | Vector2 | Matrix2): Vector2
---@operator div(number | Vector2): Vector2
---@operator mod(number | Vector2): Vector2
---@field x number     # The first element.
---@field r number     # The first element.
---@field ["1"] number # The first element.
---@field [1] number   # The first element.
---@field y number     # The second element.
---@field g number     # The second element.
---@field ["2"] number # The second element.
---@field [2] number   # The second element.
---A copy of this vector.
---<!--
---@field xy Vector2
---Convert to Vector3.
---<!--
---@field xy_ Vector3
---Convert to Vector4.
---<!--
---@field xy__ Vector4
local Vector2


---===== METHODS =====---

---Adds the given vector or values to this vector.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector2
---@return self
function Vector2:add(vec) end

---Adds the given vector or values to this vector.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function Vector2:add(x, y) end

---Creates and returns a Vector3 using the values of this vector and the given `z` value.
---
---If `z` is `nil`, it will default to `1`.
---@param z? number
---@return Vector3
---@nodiscard
function Vector2:augmented(z) end

---Creates and returns a copy of this vector with its elements rounded up.
---@return Vector2
---@nodiscard
function Vector2:ceil() end

---Creates and returns a copy of this vector with its length clamped to the given values.
---
---If `min` or `max` are `nil`, the length will not be clamped from that side.
---@param min? number
---@param max? number
---@return Vector2
---@nodiscard
function Vector2:clamped(min, max) end

---Creates and returns a copy of this vector.
---@return Vector2
---@nodiscard
function Vector2:copy() end

---Divides this vector by the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector2
---@return self
function Vector2:div(vec) end

---Divides this vector by the given vector or values.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function Vector2:div(x, y) end

---Gets the dot product of this vector and another.
---@param vec Vector2
---@return number
---@nodiscard
function Vector2:dot(vec) end

---Creates and returns a copy of this vector with its elements rounded down.
---@return Vector2
---@nodiscard
function Vector2:floor() end

---Multiplies this vector by the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector2
---@return self
function Vector2:mul(vec) end

---Multiplies this vector by the given vector or values.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function Vector2:mul(x, y) end

---Creates and returns a copy of this vector modified to have a length of 1.  
---The copy does not change length if this vector's length is `0`.
---@return Vector2
---@nodiscard
function Vector2:normalized() end

---Reduces this vector modulo the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector2
---@return self
function Vector2:reduce(vec) end

---Reduces this vector modulo the given vector or values.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function Vector2:reduce(x, y) end

---Sets the elements of this vector to the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector2
---@return self
function Vector2:set(vec) end

---Sets the elements of this vector to the given vector or values.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function Vector2:set(x, y) end

---Subtracts the given vector or values from this vector.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector2
---@return self
function Vector2:sub(vec) end

---Subtracts the given vector or values from this vector.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function Vector2:sub(x, y) end

---Creates and returns a copy of this vector as radians converted to degrees.
---@return Vector2
---@nodiscard
function Vector2:toDeg() end

---Creates and returns a copy of this vector as degrees converted to radians.
---@return Vector2
---@nodiscard
function Vector2:toRad() end

---Transforms this vector using the given matrix.
---@*vmerror `mat` == `nil`
---@generic self
---@param self self
---@param mat Matrix2
---@return self
function Vector2:transform(mat) end

---Converts this vector into separate numbers and returns them.
---@return number x
---@return number y
---@nodiscard
function Vector2:unpack() end


---==============================================================================================---
---  VECTOR3 extends VECTOR                                                                      ---
---==============================================================================================---

---A vector that is three elements long.
---@class Vector3: Vector
---@operator unm: Vector3
---@operator len: 3
---@operator add(number | Vector3): Vector3
---@operator sub(number | Vector3): Vector3
---@*error Multiplying by a Matrix modifies the vector instead of copying it.
---@operator mul(number | Vector3 | Matrix3): Vector3
---@operator div(number | Vector3): Vector3
---@operator mod(number | Vector3): Vector3
---@field x number     # The first element.
---@field r number     # The first element.
---@field ["1"] number # The first element.
---@field [1] number   # The first element.
---@field y number     # The second element.
---@field g number     # The second element.
---@field ["2"] number # The second element.
---@field [2] number   # The second element.
---@field z number     # The third element.
---@field b number     # The third element.
---@field ["3"] number # The third element.
---@field [3] number   # The third element.
---Convert to Vector2.
---<!--
---@field xy Vector2
---A copy of this vector.
---<!--
---@field xyz Vector3
---Convert to Vector4.
---<!--
---@field xyz_ Vector4
local Vector3


---===== METHODS =====---

---Adds the given vector or values to this vector.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector3
---@return self
function Vector3:add(vec) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vector3:add(x, y, z) end

---Creates and returns a Vector4 using the values of this vector and the given `w` value.
---
---If `w` is `nil`, it will default to `1`.
---@param w? number
---@return Vector4
---@nodiscard
function Vector3:augmented(w) end

---Creates and returns a copy of this vector with its elements rounded up.
---@return Vector3
---@nodiscard
function Vector3:ceil() end

---Creates and returns a copy of this vector with its length clamped to the given values.
---
---If `min` or `max` are `nil`, the length will not be clamped from that side.
---@param min? number
---@param max? number
---@return Vector3
---@nodiscard
function Vector3:clamped(min, max) end

---Creates and returns a copy of this vector.
---@return Vector3
---@nodiscard
function Vector3:copy() end

---Sets this vector to the cross product of this vector and another.
---@generic self
---@param self self
---@param vec Vector3
---@return self
function Vector3:cross(vec) end

---Gets and returns the cross product of this vector and another.
---@param vec Vector3
---@return Vector3
---@nodiscard
function Vector3:crossed(vec) end

---Divides this vector by the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector3
---@return self
function Vector3:div(vec) end

---Divides this vector by the given vector or values.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vector3:div(x, y, z) end

---Gets the dot product of this vector and another.
---@param vec Vector3
---@return number
---@nodiscard
function Vector3:dot(vec) end

---Creates and returns a copy of this vector with its elements rounded down.
---@return Vector3
---@nodiscard
function Vector3:floor() end

---Multiplies this vector by the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector3
---@return self
function Vector3:mul(vec) end

---Multiplies this vector by the given vector or values.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vector3:mul(x, y, z) end

---Creates and returns a copy of this vector modified to have a length of 1.  
---The copy does not change length if this vector's length is `0`.
---@return Vector3
---@nodiscard
function Vector3:normalized() end

---Reduces this vector modulo the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector3
---@return self
function Vector3:reduce(vec) end

---Reduces this vector modulo the given vector or values.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vector3:reduce(x, y, z) end

---Sets the elements of this vector to the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector3
---@return self
function Vector3:set(vec) end

---Sets the elements of this vector to the given vector or values.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vector3:set(x, y, z) end

---Subtracts the given vector or values from this vector.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector3
---@return self
function Vector3:sub(vec) end

---Subtracts the given vector or values from this vector.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Vector3:sub(x, y, z) end

---Creates and returns a copy of this vector as radians converted to degrees.
---@return Vector3
---@nodiscard
function Vector3:toDeg() end

---Creates and returns a copy of this vector as degrees converted to radians.
---@return Vector3
---@nodiscard
function Vector3:toRad() end

---Transforms this vector using the given matrix.
---@*vmerror `mat` == `nil`
---@generic self
---@param self self
---@param mat Matrix3
---@return self
function Vector3:transform(mat) end

---Converts this vector into separate numbers and returns them.
---@return number x
---@return number y
---@return number z
---@nodiscard
function Vector3:unpack() end


---==============================================================================================---
---  VECTOR4 extends VECTOR                                                                      ---
---==============================================================================================---

---A vector that is four elements long.
---@class Vector4: Vector
---@operator unm: Vector4
---@operator len: 4
---@operator add(number | Vector4): Vector4
---@operator sub(number | Vector4): Vector4
---@*error Multiplying by a Matrix modifies the vector instead of copying it.
---@operator mul(number | Vector4 | Matrix4): Vector4
---@operator div(number | Vector4): Vector4
---@operator mod(number | Vector4): Vector4
---@field x number     # The first element.
---@field r number     # The first element.
---@field ["1"] number # The first element.
---@field [1] number   # The first element.
---@field y number     # The second element.
---@field g number     # The second element.
---@field ["2"] number # The second element.
---@field [2] number   # The second element.
---@field z number     # The third element.
---@field b number     # The third element.
---@field ["3"] number # The third element.
---@field [3] number   # The third element.
---@field w number     # The fourth element.
---@field a number     # The fourth element.
---@field ["4"] number # The fourth element.
---@field [4] number   # The fourth element.
---Convert to Vector2.
---<!--
---@field xy Vector2
---Convert to Vector3.
---<!--
---@field xyz Vector3
---A copy of this vector.
---<!--
---@field xyzw Vector4
local Vector4


---===== METHODS =====---

---Adds the given vector or values to this vector.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector4
---@return self
function Vector4:add(vec) end

---Adds the given vector or values to this vector.
---
---If `x`, `y`, `z`, or `w` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return self
function Vector4:add(x, y, z, w) end

---Creates and returns a copy of this vector with its elements rounded up.
---@return Vector4
---@nodiscard
function Vector4:ceil() end

---Creates and returns a copy of this vector with its length clamped to the given values.
---
---If `min` or `max` are `nil`, the length will not be clamped from that side.
---@param min? number
---@param max? number
---@return Vector4
---@nodiscard
function Vector4:clamped(min, max) end

---Creates and returns a copy of this vector.
---@return Vector4
---@nodiscard
function Vector4:copy() end

---Divides this vector by the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector4
---@return self
function Vector4:div(vec) end

---Divides this vector by the given vector or values.
---
---If `x`, `y`, `z`, or `w` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return self
function Vector4:div(x, y, z, w) end

---Gets the dot product of this vector and another.
---@param vec Vector4
---@return number
---@nodiscard
function Vector4:dot(vec) end

---Creates and returns a copy of this vector with its elements rounded down.
---@return Vector4
---@nodiscard
function Vector4:floor() end

---Multiplies this vector by the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector4
---@return self
function Vector4:mul(vec) end

---Multiplies this vector by the given vector or values.
---
---If `x`, `y`, `z`, or `w` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return self
function Vector4:mul(x, y, z, w) end

---Creates and returns a copy of this vector modified to have a length of 1.  
---The copy does not change length if this vector's length is `0`.
---@return Vector4
---@nodiscard
function Vector4:normalized() end

---Reduces this vector modulo the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector4
---@return self
function Vector4:reduce(vec) end

---Reduces this vector modulo the given vector or values.
---
---If `x`, `y`, `z`, or `w` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return self
function Vector4:reduce(x, y, z, w) end

---Sets the elements of this vector to the given vector or values.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector4
---@return self
function Vector4:set(vec) end

---Sets the elements of this vector to the given vector or values.
---
---If `x`, `y`, `z`, or `w` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return self
function Vector4:set(x, y, z, w) end

---Subtracts the given vector or values from this vector.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector4
---@return self
function Vector4:sub(vec) end

---Subtracts the given vector or values from this vector.
---
---If `x`, `y`, `z`, or `w` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return self
function Vector4:sub(x, y, z, w) end

---Creates and returns a copy of this vector as radians converted to degrees.
---@return Vector4
---@nodiscard
function Vector4:toDeg() end

---Creates and returns a copy of this vector as degrees converted to radians.
---@return Vector4
---@nodiscard
function Vector4:toRad() end

---Transforms this vector using the given matrix.
---@*vmerror `mat` == `nil`
---@generic self
---@param self self
---@param mat Matrix4
---@return self
function Vector4:transform(mat) end

---Converts this vector into separate numbers and returns them.
---@return number x
---@return number y
---@return number z
---@return number w
---@nodiscard
function Vector4:unpack() end
