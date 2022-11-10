---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  MATRICESAPI                                                                                 ---
---==============================================================================================---

---An API for working with matrices.
---
---> ***
---
---Create a new matrix with:
---```lua
---local mat2 = <MatricesAPI>.mat2(
---  vec(x1, x2),
---  vec(y1, y2)
---)
---
---local mat3 = <MatricesAPI>.mat3(
---  vec(x1, x2, x3),
---  vec(y1, y2, y3),
---  vec(z1, z2, z3)
---)
---
---local mat4 = <MatricesAPI>.mat4(
---  vec(x1, x2, x3, x4),
---  vec(y1, y2, y3, y4),
---  vec(z1, z2, z3, z4),
---  vec(w1, w2, w3, w4)
---)
---```
---Matrix4s are the most common type of matrix. They are often used to transform part positions to
---world positions.
---
---To get a transformed position from a Matrix4, use:
---```lua
---local newPos = <Matrix4>:apply(x, y, z)
---```
---@class MatricesAPI
local MatricesAPI


---===== METHODS =====---

---Creates a 2x2 matrix.
---
---If given vectors, those vectors become the columns of the matrix.
---
---If given nothing, the 2x2 identity matrix is returned.
---@return Matrix2
function MatricesAPI.mat2() end

---@param col1 Vector2
---@param col2 Vector2
---@return Matrix2
function MatricesAPI.mat2(col1, col2) end

---Creates a 3x3 matrix.
---
---If given vectors, those vectors become the columns of the matrix.
---
---If given nothing, the 3x3 identity matrix is returned.
---@return Matrix3
function MatricesAPI.mat3() end

---@param col1 Vector3
---@param col2 Vector3
---@param col3 Vector3
---@return Matrix3
function MatricesAPI.mat3(col1, col2, col3) end

---Creates a 4x4 matrix.
---
---If given vectors, those vectors become the columns of the matrix.
---
---If given nothing, the 4x4 identity matrix is returned.
---@return Matrix4
function MatricesAPI.mat4() end

---@param col1 Vector4
---@param col2 Vector4
---@param col3 Vector4
---@param col4 Vector4
---@return Matrix4
function MatricesAPI.mat4(col1, col2, col3, col4) end

---Creates a 2x2 matrix that rotates by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@param angle? number
---@return Matrix2
function MatricesAPI.rotation2(angle) end

---Creates a 3x3 matrix that rotates by the given angles in degrees.
---
---The rotation is done in `ZYX` order.
---
---If `angles` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param rot? Vector3
---@return Matrix3
function MatricesAPI.rotation3(rot) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Matrix3
function MatricesAPI.rotation3(x, y, z) end

---Creates a 4x4 matrix that rotates by the given angles in degrees.
---
---The rotation is done in `ZYX` order.
---
---If `angles` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param rot? Vector3
---@return Matrix4
function MatricesAPI.rotation4(rot) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Matrix4
function MatricesAPI.rotation4(x, y, z) end

---Creates a 2x2 matrix that scales by the given factors.
---
---If `scales` is `nil`, it will default to `⟨0, 0⟩`.
---@param scales? Vector2
---@return Matrix2
function MatricesAPI.scale2(scales) end

---If `x` or `y` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@return Matrix2
function MatricesAPI.scale2(x, y) end

---Creates a 3x3 matrix that scales by the given factors.
---
---If `scales` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param scales? Vector3
---@return Matrix3
function MatricesAPI.scale3(scales) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Matrix3
function MatricesAPI.scale3(x, y, z) end

---Creates a 4x4 matrix that scales by the given factors.
---
---If `scales` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param scales? Vector3
---@return Matrix4
function MatricesAPI.scale4(scales) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Matrix4
function MatricesAPI.scale4(x, y, z) end

---Creates a 3x3 matrix that translates by the given offset.
---
---If `offset` is `nil`, it will default to `⟨0, 0⟩`.
---@param offset? Vector2
---@return Matrix3
function MatricesAPI.translate3(offset) end

---If `x` or `y` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@return Matrix3
function MatricesAPI.translate3(x, y) end

---Creates a 4x4 matrix that translates by the given offset.
---
---If `offset` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param offset? Vector3
---@return Matrix4
function MatricesAPI.translate4(offset) end

---If `x` or `y` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Matrix4
function MatricesAPI.translate4(x, y, z) end

---Creates a 3x3 matrix that rotates in the X axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@param angle? number
---@return Matrix3
function MatricesAPI.xRotation3(angle) end

---Creates a 4x4 matrix that rotates in the X axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@param angle? number
---@return Matrix4
function MatricesAPI.xRotation4(angle) end

---Creates a 3x3 matrix that rotates in the Y axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@param angle? number
---@return Matrix3
function MatricesAPI.yRotation3(angle) end

---Creates a 4x4 matrix that rotates in the Y axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@param angle? number
---@return Matrix4
function MatricesAPI.yRotation4(angle) end

---Creates a 3x3 matrix that rotates in the Z axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@param angle? number
---@return Matrix3
function MatricesAPI.zRotation3(angle) end

---Creates a 4x4 matrix that rotates in the Z axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@param angle? number
---@return Matrix4
function MatricesAPI.zRotation4(angle) end
