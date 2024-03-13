---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  MATRIX                                                                                                          ---
---==================================================================================================================---

---The base class of all matrices.
---
---This should be used if the type of matrix is not known or does not need to be known.  
---To avoid having to type-check a matrix, use `Matrix.any`.
---@class Matrix
---@operator len: integer
---@operator add(Matrix): Matrix
---@operator sub(Matrix): Matrix
---@operator mul(number | Matrix): Matrix
---@operator mul(Vector): Vector
local Matrix


---===== METHODS =====---

---Calculates and returns the determinant of this matrix.
---@return number
---@nodiscard
function Matrix:det() end

---Inverts this matrix.
---@generic self
---@param self self
---@return self
function Matrix:invert() end

---Reverts this matrix back to the identity matrix.
---@generic self
---@param self self
---@return self
function Matrix:reset() end

---Transposes this matrix, swapping the rows and columns.
---@generic self
---@param self self
---@return self
function Matrix:transpose() end


---==================================================================================================================---
---  MATRIX2 extends MATRIX                                                                                          ---
---==================================================================================================================---

---A 2x2 matrix.
---@class Matrix2: Matrix
---@operator len: 2
---@operator add(Matrix2): Matrix2
---@operator sub(Matrix2): Matrix2
---@operator mul(number | Matrix2): Matrix2
---@operator mul(Vector2): Vector2
---Column 1 of the matrix.
---<!--
---@field [1] Vector2
---Column 1 of the matrix.
---<!--
---@field ["1"] Vector2
---Column 1 of the matrix.
---<!--
---@field c1 Vector2
---Column 2 of the matrix.
---<!--
---@field [2] Vector2
---Column 2 of the matrix.
---<!--
---@field ["2"] Vector2
---Column 2 of the matrix.
---<!--
---@field c2 Vector2
---Row 1 of the matrix.
---<!--
---@field r1 Vector2
---Row 2 of the matrix.
---<!--
---@field r2 Vector2
---@field v11 number # The value at row 1, column 1 in the matrix.
---@field v12 number # The value at row 1, column 2 in the matrix.
---@field v21 number # The value at row 2, column 1 in the matrix.
---@field v22 number # The value at row 2, column 2 in the matrix.
local Matrix2


---===== METHODS =====---

---Adds another matrix to this matrix.
---@generic self
---@param self self
---@param other Matrix2
---@return self
function Matrix2:add(other) end

---Augments the given value to a vector `⟨x, 1⟩`, multiplies that vector against this matrix, then deaugments the vector
---to return `x`.
---
---If `x` is `nil`, it will default to `0`.
---@param x? number
---@return number
---@nodiscard
function Matrix2:apply(x) end

---Augments the given value to a vector `⟨x, 0⟩`, multiplies that vector against this matrix, then deaugments the vector
---to return `x`.
---
---If `x` is `nil`, it will default to `0`.
---@param x? number
---@return number
---@nodiscard
function Matrix2:applyDir(x) end

---Copies this matrix and augments the copy, adding a blank column and row to it and placing a `1` in the corner of the
---new row and column.
---@return Matrix3
---@nodiscard
function Matrix2:augmented() end

---Creates and returns a copy of this matrix.
---@return Matrix2
---@nodiscard
function Matrix2:copy() end

---Creates and returns an inverted copy of this matrix.
---@return Matrix2
---@nodiscard
function Matrix2:inverted() end

---Multiplies this matrix by another matrix, placing the other matrix on the left-hand side of the operation.
---@generic self
---@param self self
---@param other Matrix2
---@return self
function Matrix2:multiply(other) end

---Multiplies this matrix by another matrix, placing the other matrix on the right-hand side of the operation.
---@generic self
---@param self self
---@param other Matrix2
---@return self
function Matrix2:rightMultiply(other) end

---Rotates this matrix by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param angle? number
---@return self
function Matrix2:rotate(angle) end

---Scales this matrix by the given factors.
---
---If `scales` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param scales? Vector2
---@return self
function Matrix2:scale(scales) end

---Scales this matrix by the given factors.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function Matrix2:scale(x, y) end

---Sets this matrix to have the same values as the given matrix.
---@generic self
---@param self self
---@param other Matrix2
---@return self
function Matrix2:set(other) end

---Subtracts another matrix from this matrix.
---@generic self
---@param self self
---@param other Matrix2
---@return self
function Matrix2:sub(other) end

---Creates and returns a transposed copy of this matrix.
---@return Matrix2
---@nodiscard
function Matrix2:transposed() end


---===== GETTERS =====---

---Gets the column at the given index as a vector.
---@param index 1 | 2
---@return Vector2
---@nodiscard
function Matrix2:getColumn(index) end

---Gets the row at the given index as a vector.
---@param index 1 | 2
---@return Vector2
---@nodiscard
function Matrix2:getRow(index) end


---==================================================================================================================---
---  MATRIX3 extends MATRIX                                                                                          ---
---==================================================================================================================---

---A 3x3 matrix.
---@class Matrix3: Matrix
---@operator len: 3
---@operator add(Matrix3): Matrix3
---@operator sub(Matrix3): Matrix3
---@operator mul(number | Matrix3): Matrix3
---@operator mul(Vector3): Vector3
---Column 1 of the matrix.
---<!--
---@field [1] Vector3
---Column 1 of the matrix.
---<!--
---@field ["1"] Vector3
---Column 1 of the matrix.
---<!--
---@field c1 Vector3
---Column 2 of the matrix.
---<!--
---@field [2] Vector3
---Column 2 of the matrix.
---<!--
---@field ["2"] Vector3
---Column 2 of the matrix.
---<!--
---@field c2 Vector3
---Column 3 of the matrix.
---<!--
---@field [3] Vector3
---Column 3 of the matrix.
---<!--
---@field ["3"] Vector3
---Column 3 of the matrix.
---<!--
---@field c3 Vector3
---Row 1 of the matrix.
---<!--
---@field r1 Vector3
---Row 2 of the matrix.
---<!--
---@field r2 Vector3
---Row 3 of the matrix.
---<!--
---@field r3 Vector3
---@field v11 number # The value at row 1, column 1 in the matrix.
---@field v12 number # The value at row 1, column 2 in the matrix.
---@field v13 number # The value at row 1, column 3 in the matrix.
---@field v21 number # The value at row 2, column 1 in the matrix.
---@field v22 number # The value at row 2, column 2 in the matrix.
---@field v23 number # The value at row 2, column 3 in the matrix.
---@field v31 number # The value at row 3, column 1 in the matrix.
---@field v32 number # The value at row 3, column 2 in the matrix.
---@field v33 number # The value at row 3, column 3 in the matrix.
local Matrix3


---===== METHODS =====---

---Adds another matrix to this matrix.
---@generic self
---@param self self
---@param other Matrix3
---@return self
function Matrix3:add(other) end

---Augments the given value to a vector `⟨x, y, 1⟩`, multiplies that vector against this matrix, then deaugments the
---vector to return `⟨x, y⟩`.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@param vec? Vector2
---@return Vector2
---@nodiscard
function Matrix3:apply(vec) end

---Augments the given values to a vector `⟨x, y, 1⟩`, multiplies that vector against this matrix, then deaugments the
---vector to return `⟨x, y⟩`.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@return Vector2
---@nodiscard
function Matrix3:apply(x, y) end

---Augments the given value to a vector `⟨x, y, 0⟩`, multiplies that vector against this matrix, then deaugments the
---vector to return `⟨x, y⟩`.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@param vec? Vector2
---@return Vector2
---@nodiscard
function Matrix3:applyDir(vec) end

---Augments the given values to a vector `⟨x, y, 0⟩`, multiplies that vector against this matrix, then deaugments the
---vector to return `⟨x, y⟩`.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@return Vector2
---@nodiscard
function Matrix3:applyDir(x, y) end

---Copies this matrix and augments the copy, adding a blank column and row to it and placing a `1` in the corner of the
---new row and column.
---@return Matrix4
---@nodiscard
function Matrix3:augmented() end

---Creates and returns a copy of this matrix.
---@return Matrix3
---@nodiscard
function Matrix3:copy() end

---Copies this matrix and deaugments the copy, removing a column and row from it.
---@return Matrix2
---@nodiscard
function Matrix3:deaugmented() end

---Creates and returns an inverted copy of this matrix.
---@return Matrix3
---@nodiscard
function Matrix3:inverted() end

---Multiplies this matrix by another matrix, placing the other matrix on the left-hand side of the operation.
---@generic self
---@param self self
---@param other Matrix3
---@return self
function Matrix3:multiply(other) end

---Multiplies this matrix by another matrix, placing the other matrix on the right-hand side of the operation.
---@generic self
---@param self self
---@param other Matrix3
---@return self
function Matrix3:rightMultiply(other) end

---Rotates this matrix by the given angles in degrees.
---
---If `angles` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param angles? Vector3
---@return self
function Matrix3:rotate(angles) end

---Rotates this matrix by the given angles in degrees.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Matrix3:rotate(x, y, z) end

---Rotates this matrix in the X axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param angle? number
---@return self
function Matrix3:rotateX(angle) end

---Rotates this matrix in the Y axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param angle? number
---@return self
function Matrix3:rotateY(angle) end

---Rotates this matrix in the Z axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param angle? number
---@return self
function Matrix3:rotateZ(angle) end

---Scales this matrix by the given factors.
---
---If `scales` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param scales? Vector3
---@return self
function Matrix3:scale(scales) end

---Scales this matrix by the given factors.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Matrix3:scale(x, y, z) end

---Sets this matrix to have the same values as the given matrix.
---@generic self
---@param self self
---@param other Matrix3
---@return self
function Matrix3:set(other) end

---Subtracts another matrix from this matrix.
---@generic self
---@param self self
---@param other Matrix3
---@return self
function Matrix3:sub(other) end

---Translates this matrix by the given amounts.
---
---If `vec` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector2
---@return self
function Matrix3:translate(vec) end

---Translates this matrix by the given amounts.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function Matrix3:translate(x, y) end

---Creates and returns a transposed copy of this matrix.
---@return Matrix3
---@nodiscard
function Matrix3:transposed() end


---===== GETTERS =====---

---Gets the column at the given index as a vector.
---@param index 1 | 2 | 3
---@return Vector3
---@nodiscard
function Matrix3:getColumn(index) end

---Gets the row at the given index as a vector.
---@param index 1 | 2 | 3
---@return Vector3
---@nodiscard
function Matrix3:getRow(index) end


---==================================================================================================================---
---  MATRIX4 extends MATRIX                                                                                          ---
---==================================================================================================================---

---A 4x4 matrix.
---@class Matrix4: Matrix
---@operator len: 4
---@operator add(Matrix4): Matrix4
---@operator sub(Matrix4): Matrix4
---@operator mul(number | Matrix4): Matrix4
---@operator mul(Vector4): Vector4
---Column 1 of the matrix.
---<!--
---@field [1] Vector4
---Column 1 of the matrix.
---<!--
---@field ["1"] Vector4
---Column 1 of the matrix.
---<!--
---@field c1 Vector4
---Column 2 of the matrix.
---<!--
---@field [2] Vector4
---Column 2 of the matrix.
---<!--
---@field ["2"] Vector4
---Column 2 of the matrix.
---<!--
---@field c2 Vector4
---Column 3 of the matrix.
---<!--
---@field [3] Vector4
---Column 3 of the matrix.
---<!--
---@field ["3"] Vector4
---Column 3 of the matrix.
---<!--
---@field c3 Vector4
---Column 4 of the matrix.
---<!--
---@field [4] Vector4
---Column 4 of the matrix.
---<!--
---@field ["4"] Vector4
---Column 4 of the matrix.
---<!--
---@field c4 Vector4
---Row 1 of the matrix.
---<!--
---@field r1 Vector4
---Row 2 of the matrix.
---<!--
---@field r2 Vector4
---Row 3 of the matrix.
---<!--
---@field r3 Vector4
---Row 4 of the matrix.
---<!--
---@field r4 Vector4
---@field v11 number # The value at row 1, column 1 in the matrix.
---@field v12 number # The value at row 1, column 2 in the matrix.
---@field v13 number # The value at row 1, column 3 in the matrix.
---@field v14 number # The value at row 1, column 4 in the matrix.
---@field v21 number # The value at row 2, column 1 in the matrix.
---@field v22 number # The value at row 2, column 2 in the matrix.
---@field v23 number # The value at row 2, column 3 in the matrix.
---@field v24 number # The value at row 2, column 4 in the matrix.
---@field v31 number # The value at row 3, column 1 in the matrix.
---@field v32 number # The value at row 3, column 2 in the matrix.
---@field v33 number # The value at row 3, column 3 in the matrix.
---@field v34 number # The value at row 3, column 4 in the matrix.
---@field v41 number # The value at row 4, column 1 in the matrix.
---@field v42 number # The value at row 4, column 2 in the matrix.
---@field v43 number # The value at row 4, column 3 in the matrix.
---@field v44 number # The value at row 4, column 4 in the matrix.
local Matrix4


---===== METHODS =====---

---Adds another matrix to this matrix.
---@generic self
---@param self self
---@param other Matrix4
---@return self
function Matrix4:add(other) end

---Augments the given value to a vector `⟨x, y, z, 1⟩`, multiplies that vector against this matrix, then deaugments the
---vector to return `⟨x, y, z⟩`.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param vec? Vector3
---@return Vector3
---@nodiscard
function Matrix4:apply(vec) end

---Augments the given value to a vector `⟨x, y, z, 1⟩`, multiplies that vector against this matrix, then deaugments the
---vector to return `⟨x, y, z⟩`.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Vector3
---@nodiscard
function Matrix4:apply(x, y, z) end

---Augments the given value to a vector `⟨x, y, z, 0⟩`, multiplies that vector against this matrix, then deaugments the
---vector to return `⟨x, y, z⟩`.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param vec? Vector3
---@return Vector3
---@nodiscard
function Matrix4:applyDir(vec) end

---Augments the given value to a vector `⟨x, y, z, 0⟩`, multiplies that vector against this matrix, then deaugments the
---vector to return `⟨x, y, z⟩`.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Vector3
---@nodiscard
function Matrix4:applyDir(x, y, z) end

---Creates and returns a copy of this matrix.
---@return Matrix4
---@nodiscard
function Matrix4:copy() end

---Copies this matrix and deaugments the copy, removing a column and row from it.
---@return Matrix3
---@nodiscard
function Matrix4:deaugmented() end

---Creates and returns an inverted copy of this matrix.
---@return Matrix4
---@nodiscard
function Matrix4:inverted() end

---Multiplies this matrix by another matrix, placing the other matrix on the left-hand side of the operation.
---@generic self
---@param self self
---@param other Matrix4
---@return self
function Matrix4:multiply(other) end

---Multiplies this matrix by another matrix, placing the other matrix on the right-hand side of the operation.
---@generic self
---@param self self
---@param other Matrix4
---@return self
function Matrix4:rightMultiply(other) end

---Rotates this matrix by the given angles in degrees.
---
---If `angles` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param angles? Vector3
---@return self
function Matrix4:rotate(angles) end

---Rotates this matrix by the given angles in degrees.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Matrix4:rotate(x, y, z) end

---Rotates this matrix in the X axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param angle? number
---@return self
function Matrix4:rotateX(angle) end

---Rotates this matrix in the Y axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param angle? number
---@return self
function Matrix4:rotateY(angle) end

---Rotates this matrix in the Z axis by the given angle in degrees.
---
---If `angle` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param angle? number
---@return self
function Matrix4:rotateZ(angle) end

---Scales this matrix by the given factors.
---
---If `scales` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param scales? Vector3
---@return self
function Matrix4:scale(scales) end

---Scales this matrix by the given factors.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Matrix4:scale(x, y, z) end

---Sets this matrix to have the same values as the given matrix.
---@generic self
---@param self self
---@param other Matrix4
---@return self
function Matrix4:set(other) end

---Subtracts another matrix from this matrix.
---@generic self
---@param self self
---@param other Matrix4
---@return self
function Matrix4:sub(other) end

---Translates this matrix by the given amounts.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param vec? Vector3
---@return self
function Matrix4:translate(vec) end

---Translates this matrix by the given amounts.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Matrix4:translate(x, y, z) end

---Creates and returns a transposed copy of this matrix.
---@return Matrix4
---@nodiscard
function Matrix4:transposed() end


---===== GETTERS =====---

---Gets the column at the given index as a vector.
---@param index 1 | 2 | 3 | 4
---@return Vector4
---@nodiscard
function Matrix4:getColumn(index) end

---Gets the row at the given index as a vector.
---@param index 1 | 2 | 3 | 4
---@return Vector4
---@nodiscard
function Matrix4:getRow(index) end
