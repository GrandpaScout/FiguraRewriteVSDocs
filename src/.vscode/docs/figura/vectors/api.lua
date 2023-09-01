---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  VECTORAPI                                                                                   ---
---==============================================================================================---

---An API for handling and creating vectors.
---@class VectorAPI
local VectorAPI


---===== METHODS =====---

---Converts a pitch and yaw to a direction vector.
---
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param vec? Vector2
---@return Vector3
---@nodiscard
function VectorAPI.angleToDir(vec) end

---Converts a pitch and yaw to a direction vector.
---
---If `pitch` or `yaw` are `nil`, they will default to `0`.
---@param pitch? number
---@param yaw? number
---@return Vector3
---@nodiscard
function VectorAPI.angleToDir(pitch, yaw) end

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
---@nodiscard
function VectorAPI.hexToRGB(hex) end

---Converts the given HSV values to a color vector.
---
---If `hsv` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param hsv? Vector3
---@return Vector3
---@nodiscard
function VectorAPI.hsvToRGB(hsv) end

---Converts the given HSV values to a color vector.
---
---If `h`, `s`, or `v` are `nil`, they will default to `0`.
---@param h? number
---@param s? number
---@param v? number
---@return Vector3
---@nodiscard
function VectorAPI.hsvToRGB(h, s, v) end

---Converts the given integer into a color vector.
---
---If `int` is `nil`, it will default to `0`.
---@param int? integer
---@return Vector3
---@nodiscard
function VectorAPI.intToRGB(int) end

---Converts the given rgb values to a 6-length hex string.  
---The `#` is not included.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param color? Vector3
---@return string
---@nodiscard
function VectorAPI.rgbToHex(color) end

---Converts the given rgb values to a 6-length hex string.  
---The `#` is not included.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@param r? number
---@param g? number
---@param b? number
---@return string
---@nodiscard
function VectorAPI.rgbToHex(r, g, b) end

---Converts the given rgb values to HSV.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param color? Vector3
---@return Vector3
---@nodiscard
function VectorAPI.rgbToHSV(color) end

---Converts the given rgb values to HSV.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@param r? number
---@param g? number
---@param b? number
---@return Vector3
---@nodiscard
function VectorAPI.rgbToHSV(r, g, b) end

---Converts the given rgb values to an integer.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param color? Vector3
---@return integer
---@nodiscard
function VectorAPI.rgbToInt(color) end

---Converts the given rgb values to an integer.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@param r? number
---@param g? number
---@param b? number
---@return integer
---@nodiscard
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
---@nodiscard
function VectorAPI.rotateAroundAxis(angle, vec, axis) end

---Rotates a vector an amount of degrees around an axis.
---
---If `angle`, `x`, `y`, or `z` are `nil`, they will default to `0`.  
---If `axis` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param angle? number
---@param x? number
---@param y? number
---@param z? number
---@param axis? Vector3
---@return Vector3
---@nodiscard
function VectorAPI.rotateAroundAxis(angle, x, y, z, axis) end

---Rotates a vector an amount of degrees around an axis.
---
---If `angle`, `axisX`, `axisY`, or `axisZ` are `nil`, they will default to `0`.  
---If `vec` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param angle? number
---@param vec? Vector3
---@param axisX? number
---@param axisY? number
---@param axisZ? number
---@return Vector3
---@nodiscard
function VectorAPI.rotateAroundAxis(angle, vec, axisX, axisY, axisZ) end

---Rotates a vector an amount of degrees around an axis.
---
---If `angle`, `x`, `y`, `z`, `axisX`, `axisY`, or `axisZ` are `nil`, they will default to `0`.
---@param angle? number
---@param x? number
---@param y? number
---@param z? number
---@param axisX? number
---@param axisY? number
---@param axisZ? number
---@return Vector3
---@nodiscard
function VectorAPI.rotateAroundAxis(angle, x, y, z, axisX, axisY, axisZ) end

---Converts the given world position to a position relative to the viewing client's camera.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return Vector3
---@nodiscard
function VectorAPI.toCameraSpace(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Vector3
---@nodiscard
function VectorAPI.toCameraSpace(x, y, z) end

---Creates a vector out of the given numbers.
---@*vmerror `x` == `nil` && `y` == `<number>`
---@param x number
---@param y number
---@return Vector2
---@nodiscard
function VectorAPI.vec(x, y) end

---@*vmerror (`x`|`y`) == `nil` && `z` == `<number>`
---@param x number
---@param y number
---@param z number
---@return Vector3
---@nodiscard
function VectorAPI.vec(x, y, z) end

---@*vmerror (`x`|`y`|`z`) == `nil` && `w` == `<number>`
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vector4
---@nodiscard
function VectorAPI.vec(x, y, z, w) end

---Creates a 2-element vector.
---
---If `x` or `y` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@return Vector2
---@nodiscard
function VectorAPI.vec2(x, y) end

---Creates a 3-element vector.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Vector3
---@nodiscard
function VectorAPI.vec3(x, y, z) end

---Creates a 4-element vector.
---
---If `x`, `y`, `z`, or `w` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return Vector4
---@nodiscard
function VectorAPI.vec4(x, y, z, w) end

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
---@nodiscard
function VectorAPI.worldToScreenSpace(pos) end
