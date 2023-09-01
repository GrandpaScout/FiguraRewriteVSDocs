---@meta _


---==============================================================================================---
---  MATH                                                                                        ---
---==============================================================================================---

---The factor by which the player is scaled down before being rendered into the world.
math.playerScale = 0.9375

---A number that will reverse the `.playerScale` factor.
---
---This number is *slightly* off from the exact value. To get the exact value, use
---`1 / math.playerScale`.
math.worldScale = 1.0666666667

---Restricts the value given to be between the other two numbers.
---@param x number
---@param min number
---@param max number
---@return number
---@nodiscard
function math.clamp(x, min, max) end

---Linearly interpolates between two numbers, vectors, or matrices.
---
---Numbers, vectors, and matrices can go in *any* of the three parameters, but only *one* type of
---vector or matrix may be used maximum.  
---If any vector type is used, the return will be the type of that vector.
---```html
---<a>(3)
--- ╤     0 = 3
--- ┼
--- ┼
--- ╪ <t> 0.5 = 5.5
--- ┼
--- ┼
--- ╧     1 = 8
---<b>(8)
---```
---@generic A: number | Vector.any | Matrix.any
---@generic B: number | Vector.any | Matrix.any
---@generic T: number | Vector.any | Matrix.any
---@param a A
---@param b B
---@param t T
---@return number | A | B | T
---@nodiscard
function math.lerp(a, b, t) end

---Linearly interpolates between two number angles, vector angles, or matrices.  
---The shortest path to the destination angle will always be taken, even if it ends up with the
---result being out of the 0 to 360 (or -180 to 180) bounds.
---
---The final number will be reduced modulo 360.
---
---Numbers, vectors, and matrices can go in *any* of the three parameters, but only *one* type of
---vector or matrix may be used maximum.  
---If any vector type is used, the return will be the type of that vector.
---```html
---             ,--- <a>(60°)
---    ,-"""""-/      ╤     0 = 60°
---  ,'       / `.    ┼
--- /        /    \   ┼
---|        /      |  ╪ <t> 0.5 = 7.5°
---|        `.     |  ┼
--- \         `.  /   ┼
---  `.         `.    ╧     1 = 315°
---    `-_____-'  `- <b>(315°)
---
---
---```
---@generic A: number | Vector.any | Matrix.any
---@generic B: number | Vector.any | Matrix.any
---@generic T: number | Vector.any | Matrix.any
---@param a A
---@param b B
---@param t T
---@return number | A | B | T
---@nodiscard
function math.lerpAngle(a, b, t) end

---Converts a number, vector, or matrix from one range to another.
---
---Numbers, vectors, and matrices can go in *any* of the five parameters, but only *one* type of
---vector or matrix may be used maximum.  
---If any vector or matrix type is used, the return will be the type of that vector or matrix.
---```html
--- (0)  v     v   v   (12)
---<aMin>╟─┼─┼─╫─┼─┼─╢<aMax>
---      0     6   10
---      ↓     ↓   ↓
---      32    48  58.67
---<bMin>╟─┼─┼─╫─┼─┼─╢<bMax>
--- (32)               (64)
---```
---@generic V: number | Vector.any | Matrix.any
---@generic A1: number | Vector.any | Matrix.any, A2: number | Vector.any | Matrix.any
---@generic B1: number | Vector.any | Matrix.any, B2: number | Vector.any | Matrix.any
---@param v V
---@param aMin A1
---@param aMax A2
---@param bMin B1
---@param bMax B2
---@return number | V | A1 | A2 | B1 | B2
---@nodiscard
function math.map(v, aMin, aMax, bMin, bMax) end

---Rounds the given value to the nearest integer.
---@param x number
---@return integer
---@nodiscard
function math.round(x) end

---Gets the shortest angle between two numbers or vectors.
---
---The shortest path to the destination angle will always be taken, even if it ends up with the
---result being out of the -180 to 180 (or 0 to 360) bounds.
---
---Numbers and vectors can go in *any* of the two parameters, but only *one* type of vector may be
---used maximum.  
---If any vector type is used, the return will be the type of that vector.
---@generic A: number | Vector.any | Matrix.any
---@generic B: number | Vector.any | Matrix.any
---@param a A
---@param b B
---@return number | A | B
---@nodiscard
function math.shortAngle(a, b) end

---Gets the sign of the given value.
---
---* All positive numbers return `1`
---* All negative numbers return `-1`
---* `0` returns `0`
---* `NaN` returns `-1`
---@param x number
---@return
---| -1 # Negative / NaN
---| 0 # Zero
---| 1 # Positive
---@nodiscard
function math.sign(x) end
