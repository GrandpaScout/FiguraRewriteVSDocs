---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  RENDERERAPI                                                                                 ---
---==============================================================================================---

---An API related to rendering and the camera.
---@class RendererAPI
---Determines if the paperdoll render should be visible even if no action is being performed.
---
---This does nothing if the paperdoll is disabled or always visible.
---@field forcePaperdoll boolean
---Determines if the crosshair should be rendered.
---@field renderCrosshair boolean
---Determines if the on-fire effect should be rendered.  
---This does *not* affect the first-person fire effect.
---@field renderFire boolean
---Determines if the vehicle the host is riding should be rendered.
---@field renderVehicle boolean
local RendererAPI


---===== GETTERS =====---

---Gets the pivot position offset of the camera in blocks.
---
---Returns `nil` if no pivot position offset is applied.
---@return Vector3?
function RendererAPI:getCameraOffsetPivot() end

---Gets the rotation offset of the camera in degrees.
---
---Returns `nil` if no rotation offset is applied.
---@return Vector3?
function RendererAPI:getCameraOffsetRot() end

---Gets the absolute pivot position of the camera in blocks.
---
---Returns `nil` if no absolute position is applied.
---@return Vector3?
function RendererAPI:getCameraPivot() end

---Gets the position offset of the camera in blocks.
---
---Not to be confused with `<ClientAPI>.getCameraPos()`, which returns the world position of the
---viewing client's camera.
---
---Returns `nil` if no position offset is applied.
---@return Vector3?
function RendererAPI:getCameraPos() end

---Gets the absolute rotation of the camera in degrees.
---
---Not to be confused with `<ClientAPI>.getCameraRot()`, which returns the rotation of the viewing
---client's camera.
---
---Returns `nil` if no absolute rotation is applied.
---@return Vector3?
function RendererAPI:getCameraRot() end

---Gets the offset of the crosshair set by the script.
---
---Returns `nil` if no offset has been made.
---@return Vector2?
function RendererAPI:getCrosshairOffset() end

---Gets the current FOV multiplier.
---
---Returns `nil` if no multiplier has been set.
---@return number?
function RendererAPI:getFOV() end

---Gets the radius of the host's shadow in blocks.
---
---Returns `nil` if no shadow radius is applied.
---@return number?
function RendererAPI:getShadowRadius() end

---Gets if the third-person camera is facing backwards.
---@return boolean
function RendererAPI:isCameraBackwards() end

---Gets if the first-person camera is active.
---@return boolean
function RendererAPI:isFirstPerson() end


---===== SETTERS =====---

---Sets the pivot position offset of the camera in blocks.
---
---To set the pivot position to an absolute position in the world, see `:setCameraPivot()`.
---
---If `pos` is `nil`, the pivot position offset will be removed.
---@param pos? Vector3
function RendererAPI:offsetCameraPivot(pos) end

---If `x` is `nil`, the pivot position offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function RendererAPI:offsetCameraPivot(x, y, z) end

---Sets the rotation offset of the camera in degrees.
---
---To set the rotation to an absolute rotation, see `:setCameraRot()`.
---
---If `rot` is `nil`, the rotation offset will be removed.
---@param rot? Vector3
function RendererAPI:offsetCameraRot(rot) end

---If `x` is `nil`, the rotation offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function RendererAPI:offsetCameraRot(x, y, z) end

---Sets the absolute pivot position of the camera in blocks.
---
---To set the pivot position to a relative position, see `:offsetCameraPivot()`.
---
---If `pos` is `nil`, the absolute pivot position will be removed.
---@param pos? Vector3
function RendererAPI:setCameraPivot(pos) end

---If `x` is `nil`, the absolute pivot position will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function RendererAPI:setCameraPivot(x, y, z) end

---Sets the position offset of the camera in blocks.
---
---If `pos` is `nil`, the position offset will be removed.
---@param pos? Vector3
function RendererAPI:setCameraPos(pos) end

---If `x` is `nil`, the position offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function RendererAPI:setCameraPos(x, y, z) end

---Sets the absolute rotation of the camera in degrees.
---
---To set the rotation to a relative rotation, see `:offsetCameraRot()`.
---
---If `rot` is `nil`, the absolute rotation will be removed.
---@param rot? Vector3
function RendererAPI:setCameraRot(rot) end

---If `x` is `nil`, the absolute rotation will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function RendererAPI:setCameraRot(x, y, z) end

---Offset the crosshair by the given amount of pixels.
---
---If `offset` is `nil`, the offset will be removed.
---@param offset? Vector2
function RendererAPI:setCrosshairOffset(offset) end

---If `x` is `nil`, the offset will be removed.  
---If `y` is `nil`, it will default to `0`.
---@param x? number
---@param y? number
function RendererAPI:setCrosshairOffset(x, y) end

---Sets the FOV multiplier.
---
---If `fov` is `nil`, it will default to `1`.
function RendererAPI:setFOV(fov) end

---Sets the current vanilla post-processing shader.
---
---If `shader` is `nil`, no shader will be applied.
---@*vmerror `shader` == `":"`
---@param shader? Minecraft.shader
function RendererAPI:setPostEffect(shader) end

---Sets the radius of the host's shadow in blocks.  
---The maximum value is 12.
---
---If `radius` is `nil`, the shadow radius will be reset.
---@param radius? number
function RendererAPI:setShadowRadius(radius) end
