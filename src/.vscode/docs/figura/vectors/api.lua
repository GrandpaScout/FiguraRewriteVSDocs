---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  VECTORAPI                                                                                   ---
---==============================================================================================---

---An API for handling and creating vectors.
---@class VectorAPI
local VectorAPI


---===== METHODS =====---

---Parses a hexadecimal string and converts it into a color vector.
---
---The `#` is optional and the hex color can have any length, though only the first 6 digits are
---read. If the hex string is 3 digits long, it is treated as a short hex string. (`#ABC` ==
---`#AABBCC`)
---
---Returns `⟨0, 0, 0⟩` if the hex string is invalid.
---
---Some special strings are also accepted in place of a hex string.
---@param hex string
---@return Vector3
function VectorAPI.hexToRGB(hex) end

---Converts the given HSV values to a color vector.
---
---If `hsv` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param hsv? Vector3
---@return Vector3
function VectorAPI.hsvToRGB(hsv) end

---If `h`, `s`, or `v` are `nil`, they will default to `0`.
---@param h? number
---@param s? number
---@param v? number
---@return Vector3
function VectorAPI.hsvToRGB(h, s, v) end

---Converts the given integer into a color vector.
---
---If `int` is `nil`, it will default to `0`.
---@param int? integer
---@return Vector3
function VectorAPI.intToRGB(int) end

---Converts the given rgb values to a 6-length hex string.  
---The `#` is not included.
---
---If `col` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param col? Vector3
---@return string
function VectorAPI.rgbToHex(col) end

---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@param r? number
---@param g? number
---@param b? number
---@return string
function VectorAPI.rgbToHex(r, g, b) end

---Converts the given rgb values to HSV.
---
---If `col` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param col? Vector3
---@return Vector3
function VectorAPI.rgbToHSV(col) end

---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@param r? number
---@param g? number
---@param b? number
---@return Vector3
function VectorAPI.rgbToHSV(r, g, b) end

---Converts the given rgb values to an integer.
---
---If `col` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param col? Vector3
---@return integer
function VectorAPI.rgbToInt(col) end

---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@param r? number
---@param g? number
---@param b? number
---@return integer
function VectorAPI.rgbToInt(r, g, b) end

---Rotates a vector an amount of degrees around an axis.
---
---If `angle` is `nil`, it will default to `0`.  
---If `vec` or `axis` are `nil`, they will default to `⟨0, 0, 0⟩`.
---@*vmerror `vec` == `nil` && `axis` == `<Vector3>`
---@param angle? number
---@param vec? Vector3
---@param axis? Vector3
---@return Vector3
function VectorAPI.rotateAroundAxis(angle, vec, axis) end

---If `angle`, `x`, `y`, or `z` are `nil`, they will default to `0`.  
---If `axis` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param angle? number
---@param x? number
---@param y? number
---@param z? number
---@param axis? Vector3
---@return Vector3
function VectorAPI.rotateAroundAxis(angle, x, y, z, axis) end

---If `angle`, `axisX`, `axisY`, or `axisZ` are `nil`, they will default to `0`.  
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param angle? number
---@param vec? Vector3
---@param axisX? number
---@param axisY? number
---@param axisZ? number
---@return Vector3
function VectorAPI.rotateAroundAxis(angle, vec, axisX, axisY, axisZ) end

---If `angle`, `x`, `y`, `z`, `axisX`, `axisY`, or `axisZ` are `nil`, they will default to `0`.
---@param angle? number
---@param x? number
---@param y? number
---@param z? number
---@param axisX? number
---@param axisY? number
---@param axisZ? number
---@return Vector3
function VectorAPI.rotateAroundAxis(angle, x, y, z, axisX, axisY, axisZ) end

---Converts the given world position to a position relative to the viewing client's camera.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return Vector3
function VectorAPI.toCameraSpace(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Vector3
function VectorAPI.toCameraSpace(x, y, z) end

---Creates a vector out of the given numbers.
---@*vmerror `x` == `nil` && `y` == `<number>`
---@param x number
---@param y number
---@return Vector2
function VectorAPI.vec(x, y) end

---@*vmerror (`x`|`y`) == `nil` && `z` == `<number>`
---@param x number
---@param y number
---@param z number
---@return Vector3
function VectorAPI.vec(x, y, z) end

---@*vmerror (`x`|`y`|`z`) == `nil` && `w` == `<number>`
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vector4
function VectorAPI.vec(x, y, z, w) end

---@*vmerror (`x`|`y`|`z`|`w`) == `nil` && `t` == `<number>`
---@param x number
---@param y number
---@param z number
---@param w number
---@param t number
---@return Vector5
function VectorAPI.vec(x, y, z, w, t) end

---@*vmerror (`x`|`y`|`z`|`w`|`t`) == `nil` && `h` == `<number>`
---@param x number
---@param y number
---@param z number
---@param w number
---@param t number
---@param h number
---@return Vector6
function VectorAPI.vec(x, y, z, w, t, h) end

---Creates a 2-element vector.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@return Vector2
function VectorAPI.vec2(x, y) end

---Creates a 3-element vector.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Vector3
function VectorAPI.vec3(x, y, z) end

---Creates a 4-element vector.
---
---If `x`, `y`, `z`, or `w` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return Vector4
function VectorAPI.vec4(x, y, z, w) end

---Creates a 5-element vector.
---
---If `x`, `y`, `z`, `w`, or `t` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@param t? number
---@return Vector5
function VectorAPI.vec5(x, y, z, w, t) end

---Creates a 6-element vector.
---
---If `x`, `y`, `z`, `w`, `t`, or `h` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@param t? number
---@param h? number
---@return Vector6
function VectorAPI.vec6(x, y, z, w, t, h) end

---Converts the given world position to a position on the viewing client's screen.
---
---The first and second elements of the returned vector are the x and y positions where `-1 .. 1` is
---the range for the edges of the screen.  
---The third element is some value that is `>1.0` when looking at the world position and `<1.0` when
---looking away.  
---The fourth element is the distance of the screen from the world position.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return Vector4
function VectorAPI.worldToScreenSpace(pos) end
