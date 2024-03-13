---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  RENDERERAPI                                                                                                     ---
---==================================================================================================================---

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
---Deteminess if the HUD should be rendered.
---@field renderHUD boolean
---Determines if the vehicle the host is riding should be rendered.
---@field renderVehicle boolean
local RendererAPI


---===== GETTERS =====---

---Gets the color of the host's block outline.
---
---Returns `nil` if it has not been set yet.
---@return Vector4?
---@nodiscard
function RendererAPI:getBlockOutlineColor() end

---Gets the matrix of the camera.
---
---Returns `nil` if no matrix is applied.
---@return Matrix4?
---@nodiscard
function RendererAPI:getCameraMatrix() end

---Gets the normal matrix of the camera.
---
---Returns `nil` if no normal matrix is applied.
---@return Matrix3?
---@nodiscard
function RendererAPI:getCameraNormal() end

---Gets the pivot position offset of the camera in blocks.
---
---Returns `nil` if no pivot position offset is applied.
---@return Vector3?
---@nodiscard
function RendererAPI:getCameraOffsetPivot() end

---Gets the rotation offset of the camera in degrees.
---
---Returns `nil` if no rotation offset is applied.
---@return Vector3?
---@nodiscard
function RendererAPI:getCameraOffsetRot() end

---Gets the absolute pivot position of the camera in blocks.
---
---Returns `nil` if no absolute position is applied.
---@return Vector3?
---@nodiscard
function RendererAPI:getCameraPivot() end

---Gets the position offset of the camera in blocks.
---
---Not to be confused with `<ClientAPI>.getCameraPos()`, which returns the world position of the
---viewing client's camera.
---
---Returns `nil` if no position offset is applied.
---@return Vector3?
---@nodiscard
function RendererAPI:getCameraPos() end

---Gets the absolute rotation of the camera in degrees.
---
---Not to be confused with `<ClientAPI>.getCameraRot()`, which returns the rotation of the viewing
---client's camera.
---
---Returns `nil` if no absolute rotation is applied.
---@return Vector3?
---@nodiscard
function RendererAPI:getCameraRot() end

---Gets the offset of the host's crosshair in pixels.
---
---Returns `nil` if no offset has been set.
---@return Vector2?
---@nodiscard
function RendererAPI:getCrosshairOffset() end

---Gets the offset of the host's eye position in blocks.
---
---Returns `nil` if no offset has been set.
---@return Vector3?
---@nodiscard
function RendererAPI:getEyeOffset() end

---Gets the current FOV multiplier.
---
---Returns `nil` if no multiplier has been set.
---@return number?
---@nodiscard
function RendererAPI:getFOV() end

---Gets the color of the host's glow outline.
---
---Returns `nil` if no color has been set.
---@return Vector3?
---@nodiscard
function RendererAPI:getOutlineColor() end

---Gets the texture path of the host's on-fire primary layer.
---
---Returns `""` if it has not been set.
---@return string
---@nodiscard
function RendererAPI:getPrimaryFireTexture() end

---Gets if the host's left arm should be rendered in first-person.
---
---Returns `nil` if it has not been set.
---@return boolean?
---@nodiscard
function RendererAPI:getRenderLeftArm() end

---Gets if the host's right arm should be rendered in first-person.
---
---Returns `nil` if it has not been set.
---@return boolean?
---@nodiscard
function RendererAPI:getRenderRightArm() end

---Gets if the root of the Player entity is allowed to rotate.
---@return boolean
---@nodiscard
function RendererAPI:getRootRotationAllowed() end

---Gets the texture path of the host's on-fire secondary layer.
---
---Returns `""` if it has not been set.
---@return string
---@nodiscard
function RendererAPI:getSecondaryFireTexture() end

---Gets the radius of the host's shadow in blocks.
---
---Returns `nil` if no shadow radius is applied.
---@return number?
---@nodiscard
function RendererAPI:getShadowRadius() end

---Gets if the host's third-person camera is facing backwards.
---@return boolean
---@nodiscard
function RendererAPI:isCameraBackwards() end

---Gets if the host's first-person camera is active.
---@return boolean
---@nodiscard
function RendererAPI:isFirstPerson() end

---Gets if the host is being rendered upside-down.
---@return boolean
---@nodiscard
function RendererAPI:isUpsideDown() end

---Gets if the host's paperdoll render should be visible even if no action is being performed.
---@return boolean
---@nodiscard
function RendererAPI:shouldForcePaperdoll() end

---Gets if the host's crosshair should be rendered.
---@return boolean
---@nodiscard
function RendererAPI:shouldRenderCrosshair() end

---Gets if the on-fire effect should be rendered on the host when they are on fire.
---@return boolean
---@nodiscard
function RendererAPI:shouldRenderFire() end

---Gets if the host's HUD should be rendered.
---@return boolean
---@nodiscard
function RendererAPI:shouldRenderHUD() end

---Gets if the vehicle the host is riding should be rendered.
---@return boolean
---@nodiscard
function RendererAPI:shouldRenderVehicle() end


---===== SETTERS =====---

---Sets the color of the host's block outline.  
---If a `Vector3` is given, it is augmented with `0.4`.
---
---If `color` is `nil`, the default color is restored.
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function RendererAPI:setBlockOutlineColor(color) end

---Sets the color of the host's block outline.
---
---If `r` is `nil`, the default color is restored.  
---If `g` or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to `0.4`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function RendererAPI:setBlockOutlineColor(r, g, b, a) end

---Sets the matrix of the host's camera.
---
---If `mat` is `nil`, the matrix is removed.
---@generic self
---@param self self
---@param mat? Matrix4
---@return self
function RendererAPI:setCameraMatrix(mat) end

---Sets the normal matrix of the host's camera.
---
---If `mat` is `nil`, the normal matrix is removed.
---@generic self
---@param self self
---@param normal? Matrix3
---@return self
function RendererAPI:setCameraNormal(normal) end

---Sets the absolute pivot position of the camera in blocks.
---
---To set the pivot position to a relative position, see `:setOffsetCameraPivot()`.
---
---If `pos` is `nil`, the absolute pivot position will be removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RendererAPI:setCameraPivot(pos) end

---Sets the absolute pivot position of the camera in blocks.
---
---To set the pivot position to a relative position, see `:setOffsetCameraPivot()`.
---
---If `x` is `nil`, the absolute pivot position will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:setCameraPivot(x, y, z) end

---Sets the position offset of the camera in blocks.
---
---If `pos` is `nil`, the position offset will be removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RendererAPI:setCameraPos(pos) end

---Sets the position offset of the camera in blocks.
---
---If `x` is `nil`, the position offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:setCameraPos(x, y, z) end

---Sets the absolute rotation of the camera in degrees.
---
---To set the rotation to a relative rotation, see `:setOffsetCameraRot()`.
---
---If `rot` is `nil`, the absolute rotation will be removed.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function RendererAPI:setCameraRot(rot) end

---Sets the absolute rotation of the camera in degrees.
---
---To set the rotation to a relative rotation, see `:setOffsetCameraRot()`.
---
---If `x` is `nil`, the absolute rotation will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:setCameraRot(x, y, z) end

---Offset the crosshair by the given amount of pixels.
---
---If `offset` is `nil`, the offset will be removed.
---@generic self
---@param self self
---@param offset? Vector2
---@return self
function RendererAPI:setCrosshairOffset(offset) end

---Offset the crosshair by the given amount of pixels.
---
---If `x` is `nil`, the offset will be removed.  
---If `y` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function RendererAPI:setCrosshairOffset(x, y) end

---Sets the offset of the host's eye position in blocks.
---
---The eye position controls where interactions (such as block breaking and attacking) start from.  
---To change the position of the camera, see `:setOffsetCameraPivot()`.
---
---If `pos` is `nil`, the eye offset is removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RendererAPI:setEyeOffset(pos) end

---Sets the offset of the host's eye position in blocks.
---
---The eye position controls where interactions (such as block breaking and attacking) start from.  
---To change the position of the camera, see `:offsetCameraPivot()`.
---
---If `x` is `nil`, the eye offset is removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:setEyeOffset(x, y, z) end

---Sets if the paperdoll render should be visible even if no action is being performed.
---
---This does nothing if the paperdoll is disabled or always visible.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setForcePaperdoll(state) end

---Sets the FOV multiplier.
---
---If `fov` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param fov? number
---@return self
function RendererAPI:setFOV(fov) end

---Sets the pivot position offset of the camera in blocks.
---
---To set the pivot position to an absolute position in the world, see `:setCameraPivot()`.  
---To change the position that the host interacts from, see `:setEyeOffset()`.
---
---If `pos` is `nil`, the pivot position offset will be removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RendererAPI:setOffsetCameraPivot(pos) end

---Sets the pivot position offset of the camera in blocks.
---
---To set the pivot position to an absolute position in the world, see `:setCameraPivot()`.  
---To change the position that the host interacts from, see `:setEyeOffset()`.
---
---If `x` is `nil`, the pivot position offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:setOffsetCameraPivot(x, y, z) end

---Sets the rotation offset of the camera in degrees.
---
---To set the rotation to an absolute rotation, see `:setCameraRot()`.
---
---If `rot` is `nil`, the rotation offset will be removed.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function RendererAPI:setOffsetCameraRot(rot) end

---Sets the rotation offset of the camera in degrees.
---
---To set the rotation to an absolute rotation, see `:setCameraRot()`.
---
---If `x` is `nil`, the rotation offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:setOffsetCameraRot(x, y, z) end

---Sets the color of the host's glow outline.
---
---If `color` is `nil`, the default color is used.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function RendererAPI:setOutlineColor(color) end

---Sets the color of the host's glow outline.
---
---If `r` is `nil`, the default color is used.  
---If `g` or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function RendererAPI:setOutlineColor(r, g, b) end

---Sets the current vanilla post-processing shader.
---
---If `shader` is `nil`, no shader will be applied.
---@generic self
---@param self self
---@param shader? Minecraft.shaderName
---@return self
function RendererAPI:setPostEffect(shader) end

---Sets the texture path of the host's on-fire primary layer.  
---If the secondary layer is not set, it uses the value of this layer.
---
---This layer does not render in first-person. Only the secondary layer does.
---
---If `path` is `nil`, the default fire texture is used.
---@generic self
---@param self self
---@param path? string
---@return self
function RendererAPI:setPrimaryFireTexture(path) end

---Sets if the crosshair should be rendered.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setRenderCrosshair(state) end

---Sets if the on-fire effect should be rendered.  
---This does *not* affect the first-person fire effect.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setRenderFire(state) end

---Sets if the host's HUD should be rendered.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setRenderHUD(state) end

---Sets if the host's left arm should be rendered in first-person.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setRenderLeftArm(state) end

---Sets if the host's right arm should be rendered in first-person.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setRenderRightArm(state) end

---Sets if the vehicle the host is riding should be rendered.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setRenderVehicle(state) end

---Sets if the root of the Player entity is allowed to rotate.  
---If disabled, not even Minecraft will be able to rotate it.
---
---If `state` is `nil`, it will default to `true`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setRootRotationAllowed(state) end

---Sets the texture path of the host's on-fire secondary layer.
---
---Only this layer renders in first-person. The primary layer does not.
---
---If `path` is `nil`, the primary layer's texture is used.
---@generic self
---@param self self
---@param path? string
---@return self
function RendererAPI:setSecondaryFireTexture(path) end

---Sets the radius of the host's shadow in blocks.  
---The maximum value is 12.
---
---If `radius` is `nil`, the shadow radius will be reset.
---@generic self
---@param self self
---@param radius? number
---@return self
function RendererAPI:setShadowRadius(radius) end

---Sets if the host should be rendered upside-down.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:setUpsideDown(state) end


---===== CHAINED =====---

---Sets the color of the host's block outline.  
---If a `Vector3` is given, it is augmented with `0.4`.
---
---If `color` is `nil`, the default color is restored.
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function RendererAPI:blockOutlineColor(color) end

---Sets the color of the host's block outline.
---
---If `r` is `nil`, the default color is restored.  
---If `g` or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to `0.4`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function RendererAPI:blockOutlineColor(r, g, b, a) end

---Sets the matrix of the host's camera.
---
---If `mat` is `nil`, the matrix is removed.
---@generic self
---@param self self
---@param mat? Matrix4
---@return self
function RendererAPI:cameraMatrix(mat) end

---Sets the normal matrix of the host's camera.
---
---If `mat` is `nil`, the normal matrix is removed.
---@generic self
---@param self self
---@param normal? Matrix3
---@return self
function RendererAPI:cameraNormal(normal) end

---Sets the absolute pivot position of the camera in blocks.
---
---To set the pivot position to a relative position, see `:offsetCameraPivot()`.
---
---If `pos` is `nil`, the absolute pivot position will be removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RendererAPI:cameraPivot(pos) end

---Sets the absolute pivot position of the camera in blocks.
---
---To set the pivot position to a relative position, see `:offsetCameraPivot()`.
---
---If `x` is `nil`, the absolute pivot position will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:cameraPivot(x, y, z) end

---Sets the position offset of the camera in blocks.
---
---If `pos` is `nil`, the position offset will be removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RendererAPI:cameraPos(pos) end

---Sets the position offset of the camera in blocks.
---
---If `x` is `nil`, the position offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:cameraPos(x, y, z) end

---Sets the absolute rotation of the camera in degrees.
---
---To set the rotation to a relative rotation, see `:offsetCameraRot()`.
---
---If `rot` is `nil`, the absolute rotation will be removed.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function RendererAPI:cameraRot(rot) end

---Sets the absolute rotation of the camera in degrees.
---
---To set the rotation to a relative rotation, see `:offsetCameraRot()`.
---
---If `x` is `nil`, the absolute rotation will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:cameraRot(x, y, z) end

---Offset the crosshair by the given amount of pixels.
---
---If `offset` is `nil`, the offset will be removed.
---@generic self
---@param self self
---@param offset? Vector2
---@return self
function RendererAPI:crosshairOffset(offset) end

---Offset the crosshair by the given amount of pixels.
---
---If `x` is `nil`, the offset will be removed.  
---If `y` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@return self
function RendererAPI:crosshairOffset(x, y) end

---Sets the offset of the host's eye position in blocks.
---
---The eye position controls where interactions (such as block breaking and attacking) start from.  
---To change the position of the camera, see `:offsetCameraPivot()`.
---
---If `pos` is `nil`, the eye offset is removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RendererAPI:eyeOffset(pos) end

---Sets the offset of the host's eye position in blocks.
---
---The eye position controls where interactions (such as block breaking and attacking) start from.  
---To change the position of the camera, see `:offsetCameraPivot()`.
---
---If `x` is `nil`, the eye offset is removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:eyeOffset(x, y, z) end

---Sets the FOV multiplier.
---
---If `fov` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param fov? number
---@return self
function RendererAPI:fov(fov) end

---Sets the pivot position offset of the camera in blocks.
---
---To set the pivot position to an absolute position in the world, see `:cameraPivot()`.  
---To change the position that the host interacts from, see `:eyeOffset()`.
---
---If `pos` is `nil`, the pivot position offset will be removed.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RendererAPI:offsetCameraPivot(pos) end

---Sets the pivot position offset of the camera in blocks.
---
---To set the pivot position to an absolute position in the world, see `:cameraPivot()`.  
---To change the position that the host interacts from, see `:eyeOffset()`.
---
---If `x` is `nil`, the pivot position offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:offsetCameraPivot(x, y, z) end

---Sets the rotation offset of the camera in degrees.
---
---To set the rotation to an absolute rotation, see `:cameraRot()`.
---
---If `rot` is `nil`, the rotation offset will be removed.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function RendererAPI:offsetCameraRot(rot) end

---Sets the rotation offset of the camera in degrees.
---
---To set the rotation to an absolute rotation, see `:cameraRot()`.
---
---If `x` is `nil`, the rotation offset will be removed.  
---If `y` or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RendererAPI:offsetCameraRot(x, y, z) end

---Sets the color of the host's glow outline.
---
---If `color` is `nil`, the default color is used.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function RendererAPI:outlineColor(color) end

---Sets the color of the host's glow outline.
---
---If `r` is `nil`, the default color is used.  
---If `g` or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function RendererAPI:outlineColor(r, g, b) end

---Sets the current vanilla post-processing shader.
---
---If `shader` is `nil`, no shader will be applied.
---@generic self
---@param self self
---@param shader? Minecraft.shader
---@return self
function RendererAPI:postEffect(shader) end

---Sets the texture path of the host's on-fire primary layer.  
---If the secondary layer is not set, it uses the value of this layer.
---
---This layer does not render in first-person. Only the secondary layer does.
---
---If `path` is `nil`, the default fire texture is used.
---@generic self
---@param self self
---@param path? string
---@return self
function RendererAPI:primaryFireTexture(path) end


---Sets if the host's left arm should be rendered in first-person.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:renderLeftArm(state) end

---Sets if the host's right arm should be rendered in first-person.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:renderRightArm(state) end

---Sets if the root of the Player entity is allowed to rotate.  
---If disabled, not even Minecraft will be able to rotate it.
---
---If `state` is `nil`, it will default to `true`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:rootRotationAllowed(state) end

---Sets the texture path of the host's on-fire secondary layer.
---
---Only this layer renders in first-person. The primary layer does not.
---
---If `path` is `nil`, the primary layer's texture is used.
---@generic self
---@param self self
---@param path? string
---@return self
function RendererAPI:secondaryFireTexture(path) end

---Sets the radius of the host's shadow in blocks.  
---The maximum value is 12.
---
---If `radius` is `nil`, the shadow radius will be reset.
---@generic self
---@param self self
---@param radius? number
---@return self
function RendererAPI:shadowRadius(radius) end

---Sets if the host should be rendered upside-down.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RendererAPI:upsideDown(state) end
