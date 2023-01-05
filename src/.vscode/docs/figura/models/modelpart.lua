---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  MODELPART-INTERNAL                                                                          ---
---==============================================================================================---

---**INTERNAL CLASS**&emsp;*Do not use this!*
---
---Contains generic string field for indexing.
---@class ModelPart.*INTERNAL*
---@field [string] ModelPart


---==============================================================================================---
---  MODELPART                                                                                   ---
---==============================================================================================---

---A part of the avatar's model.  
---This can be a group, cube, or mesh.
---@class ModelPart: ModelPart.*INTERNAL*
local ModelPart


---===== METHODS =====---

---Adds a Block Render Task to this part.
---@param name string
---@return BlockTask
function ModelPart:newBlock(name) end

---Adds an Item Render Task to this part.
---@param name string
---@return ItemTask
function ModelPart:newItem(name) end

---Adds a Text Render Task to this part.
---@param name string
---@return TextTask
function ModelPart:newText(name) end

---Removes a previously added render task by name.  
---If no name is given, all render tasks are removed from this part.
---@generic self
---@param self self
---@param name? string
---@return self
function ModelPart:removeTask(name) end


---===== GETTERS =====---

---Gets the position offset caused by any currently playing animations.
---@return Vector3
function ModelPart:getAnimPos() end

---Gets the rotation offset in degrees caused by any currently playing animations.
---@return Vector3
function ModelPart:getAnimRot() end

---Gets the scale multiplier caused by any currently playing animations.
---@return Vector3
function ModelPart:getAnimScale() end

---Gets the children of this part.
---@return ModelPart[]
function ModelPart:getChildren() end

---Gets the color multiplier of this part.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will
---result in black.
---@return Vector3
function ModelPart:getColor() end

---Gets the light overrides set earlier by `:setLight()`.
---
---Returns `nil` if no light overrides are set.
---@return Vector2?
function ModelPart:getLight() end

---Gets the name of this part.
---@return string
function ModelPart:getName() end

---Recalculates then gets the normal matrix of this part.
---@return Matrix3
function ModelPart:getNormalMatrix() end

---Gets the normal matrix of this part without recalculating it.
---@return Matrix3
function ModelPart:getNormalMatrixRaw() end

---Gets the pivot offset of this part.
---
---If you are looking for the true pivot position, use `:getPivot()`.
---@return Vector3
function ModelPart:getOffsetPivot() end

---Gets the rotation offset of this part in degrees.
---
---If you are looking for the true rotation, use `:getRot()`.
function ModelPart:getOffsetRot() end

---Gets the opacity multiplier of this part.
---@return number
function ModelPart:getOpacity() end

---Gets the overlay values of this part.
---@return Vector2?
function ModelPart:getOverlay() end

---Gets the parent of this part, if it has any.
---@return ModelPart?
function ModelPart:getParent() end

---Gets the keyword this part follows.
---@return ModelPart.parentType
function ModelPart:getParentType() end

---Gets the pivot position of this part.
---@return Vector3
function ModelPart:getPivot() end

---Gets the position offset of this part.
---@return Vector3
function ModelPart:getPos() end

---Recalculates then gets the position matrix of this part.
---@return Matrix4
function ModelPart:getPositionMatrix() end

---Gets the position matrix of this part without recalculating it.
---@return Matrix4
function ModelPart:getPositionMatrixRaw() end

---Gets the render type of this part's primary layer.
---
---Returns `nil` if it is inheriting from its parent.
---@return ModelPart.renderType?
function ModelPart:getPrimaryRenderType() end

---Gets the rotation of this part in degrees.
---@return Vector3
function ModelPart:getRot() end

---Gets the scale multiplier of this part.
---@return Vector3
function ModelPart:getScale() end

---Gets the render type of this part's secondary layer.
---
---Returns `nil` if it is inheriting from its parent.
---@return ModelPart.renderType?
function ModelPart:getSecondaryRenderType() end

---Gets the render task with the given name from this part.  
---If no name is given, a list of all render tasks on this part is returned.
---
---If the task is confirmed to be of a certain type, add `--[[@as ???Task]]` after the function call
---to allow the Lua Server to know which task type it should expect.
---```lua
---local task = <ModelPart>:getTask("TotallyABlockTask") --[[@as BlockTask]]
---      ┌┴──────────────────────┐
---      │local task: BlockTask {│
---      │    ...                │
---      │}                      │
---      └───────────────────────┘
---```
---@return {[string]?: RenderTask.any}
function ModelPart:getTask() end

---@param name string
---@return RenderTask.any
function ModelPart:getTask(name) end

---Gets a list of all the textures this part uses.
---
---This does not do anything if used on a group part.
---@return Texture[]
function ModelPart:getTextures() end

---Gets the width and height of this part's texture in pixels.
---
---Throws if the part has multiple different sized textures on its faces.
---@return Vector2
function ModelPart:getTextureSize() end

---Gets the type of this part.
---@return ModelPart.type
function ModelPart:getType() end

---Gets the UV offset of this part.
---@return Vector2
function ModelPart:getUV() end

---Gets the UV matrix of this part.
---@return Matrix3
function ModelPart:getUVMatrix() end

---Gets the UV offset of this part in pixels.
---
---Returns `nil` if no UV offset is set.
---@return Vector2
function ModelPart:getUVPixels() end

---Gets if this part is visible.
---
---Returns `nil` if it is inheriting from its parent.
---@return boolean?
function ModelPart:getVisible() end

---Gets if this part is a child of another part.
---@param part ModelPart
---@return boolean
function ModelPart:isChildOf(part) end

---Gets if an animation is overriding the vanilla position of this part.
---@return boolean
function ModelPart:overrideVanillaPos() end

---Gets if an animation is overriding the vanilla rotation of this part.
---@return boolean
function ModelPart:overrideVanillaRot() end

---Gets if an animation is overriding the vanilla scale of this part.
---@return boolean
function ModelPart:overrideVanillaScale() end

---Gets a matrix which transforms a point from this part's position to a world position.
---
---This matrix only updates in `POST_RENDER`, if you attempt to use it in `RENDER`, it will be one
---frame behind.
---
---This matrix will not update if the part is not visible. (Unless you are in first-person.)
---@*error The matrix is incorrect if the camera is rolled.
---@return Matrix4
function ModelPart:partToWorldMatrix() end


---===== SETTERS =====---

---Sets the pivot offset of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
function ModelPart:setOffsetPivot(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function ModelPart:setOffsetPivot(x, y, z) end

---Sets the rotation offset of this part.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param rot? Vector3
function ModelPart:setOffsetRot(rot) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function ModelPart:setOffsetRot(x, y, z) end

---Sets the color multiplier of this part.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will
---result in black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@param col? Vector3
function ModelPart:setColor(col) end

---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@param r? number
---@param g? number
---@param b? number
function ModelPart:setColor(r, g, b) end

---Sets the block light and sky light overrides of this part.  
---Light values above 15 or below 0 will cause the part to stop rendering.
---
---Light overrides are removed if `light` is `nil`.
---@param light? Vector2
function ModelPart:setLight(light) end

---Light overrides are removed if `block` is `nil`.  
---If `sky` is `nil`, it will default to `0`.
---@param block? range*0-15
---@param sky? range*0-15
function ModelPart:setLight(block, sky) end

---Sets the position matrix of this part to the given matrix.
---
---This does not change the actual position, rotation, or scale of the part and the effects of this
---matrix will be removed if `:setPos()`, `:setRot()`, or `:setScale()` are used.
---@param mat Matrix4
function ModelPart:setMatrix(mat) end

---Sets the opacity multiplier of this part.
---
---This only has an effect if the render type of the part supports it.
---(`TRANSLUCENT`/`TRANSLUCENT_CULL`)
---@param opacity number
function ModelPart:setOpacity(opacity) end

---Sets the white flash and hurt overlays on this part.
---
---If `overlays` is `nil`, all overlays are removed.
---@param overlays? Vector2
function ModelPart:setOverlay(overlays) end

---If `white` is `nil`, all overlays are removed.  
---If `hurt` is `nil`, it will default to `0`.
---@param white? integer
---@param hurt? integer
function ModelPart:setOverlay(white, hurt) end

---Sets the keyword this part follows.
---@param parent ModelPart.parentType
function ModelPart:setParentType(parent) end

---Sets the pivot position of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
function ModelPart:setPivot(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function ModelPart:setPivot(x, y, z) end

---Sets the position offset of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
function ModelPart:setPos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function ModelPart:setPos(x, y, z) end

---Sets the render type of this part's primary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@param renderType ModelPart.renderType
function ModelPart:setPrimaryRenderType(renderType) end

---Sets the primary texture of this part.  
---Setting the texture type to `"RESOURCE"` allows selecting any namespaced texture to use as the
---texture for this part.  
---Setting the texture type to `"CUSTOM"` allows selecting a Figura `Texture` to use as the texture
---for this part.
---
---If `texture` is `nil`, it will default to `"PRIMARY"`.
---@param texture ModelPart.textureType
---@param extra? string | Texture
function ModelPart:setPrimaryTexture(texture, extra) end

---Sets the rotation of this part.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param rot? Vector3
function ModelPart:setRot(rot) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function ModelPart:setRot(x, y, z) end

---Sets the scale multiplier of this part.
---
---If `scale` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param scale? Vector3
function ModelPart:setScale(scale) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function ModelPart:setScale(x, y, z) end

---Sets the render type of this part's secondary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@param renderType ModelPart.renderType
function ModelPart:setSecondaryRenderType(renderType) end

---Sets the secondary texture of this part.  
---Setting the texture type to `"RESOURCE"` allows selecting any namespaced texture to use as the
---texture for the part.  
---Setting the texture type to `"CUSTOM"` allows selecting a Figura texture to use as the texture
---for this part.
---
---If `texture` is `nil`, it will default to `"SECONDARY"`.
---@param texture ModelPart.textureType
---@param extra? string | Texture
function ModelPart:setSecondaryTexture(texture, extra) end

---Sets the UV offset of this part as a percentage of the texture's size.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@param uv? Vector2
function ModelPart:setUV(uv) end

---If `u` or `v` are `nil`, they will default to `0`.
---@param u? number
---@param v? number
function ModelPart:setUV(u, v) end

---Sets the matrix that is applied to all UV points.
---@param mat Matrix3
function ModelPart:setUVMatrix(mat) end

---Sets the UV offset of this part in pixels.  
---Throws if the part has multiple different sized textures on its faces.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@param uv? Vector2
function ModelPart:setUVPixels(uv) end

---If `u` or `v` are `nil`, they will default to `0`.
---@param u? number
---@param v? number
function ModelPart:setUVPixels(u, v) end

---Sets this part to either be always visible, always invisible, or visible when its parent is.
---
---A boolean value will force the part to be (in)visible, `nil` will make the part inherit its
---parent's visiblity.
---@param visible? boolean
function ModelPart:setVisible(visible) end


---===== SETTERS =====---

---Sets the pivot offset of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function ModelPart:offsetPivot(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:offsetPivot(x, y, z) end

---Sets the rotation offset of this part.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function ModelPart:offsetRot(rot) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:offsetRot(x, y, z) end

---Sets the color multiplier of this part.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will
---result in black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3
---@return self
function ModelPart:color(col) end

---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function ModelPart:color(r, g, b) end

---Sets the block light and sky light overrides of this part.  
---Light values above 15 or below 0 will cause the part to stop rendering.
---
---Light overrides are removed if `light` is `nil`.
---@generic self
---@param self self
---@param light? Vector2
---@return self
function ModelPart:light(light) end

---Light overrides are removed if `block` is `nil`.  
---If `sky` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param block? range*0-15
---@param sky? range*0-15
---@return self
function ModelPart:light(block, sky) end

---Sets the position matrix of this part to the given matrix.
---
---This does not change the actual position, rotation, or scale of the part and the effects of this
---matrix will be removed if `:setPos()`, `:setRot()`, or `:setScale()` are used.
---@generic self
---@param self self
---@param mat Matrix4
---@return self
function ModelPart:matrix(mat) end

---Sets the opacity multiplier of this part.
---
---This only has an effect if the render type of the part supports it.
---(`TRANSLUCENT`/`TRANSLUCENT_CULL`)
---@generic self
---@param self self
---@param opacity number
---@return self
function ModelPart:opacity(opacity) end

---Sets the white flash and hurt overlays on this part.
---
---If `overlays` is `nil`, all overlays are removed.
---@generic self
---@param self self
---@param overlays? Vector2
---@return self
function ModelPart:overlay(overlays) end

---If `white` is `nil`, all overlays are removed.  
---If `hurt` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param white? integer
---@param hurt? integer
---@return self
function ModelPart:overlay(white, hurt) end

---Sets the keyword this part follows.
---@generic self
---@param self self
---@param parent ModelPart.parentType
---@return self
function ModelPart:parentType(parent) end

---Sets the pivot position of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function ModelPart:pivot(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:pivot(x, y, z) end

---Sets the position offset of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function ModelPart:pos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:pos(x, y, z) end

---Sets the render type of this part's primary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@generic self
---@param self self
---@param renderType ModelPart.renderType
---@return self
function ModelPart:primaryRenderType(renderType) end

---Sets the primary texture of this part.  
---Setting the texture type to `"RESOURCE"` allows selecting any namespaced texture to use as the
---texture for this part.  
---Setting the texture type to `"CUSTOM"` allows selecting a Figura `Texture` to use as the texture
---for this part.
---
---If `texture` is `nil`, it will default to `"PRIMARY"`.
---@generic self
---@param self self
---@param texture ModelPart.textureType
---@param extra? string | Texture
---@return self
function ModelPart:primaryTexture(texture, extra) end

---Sets the rotation of this part.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function ModelPart:rot(rot) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:rot(x, y, z) end

---Sets the scale multiplier of this part.
---
---If `scale` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function ModelPart:scale(scale) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:scale(x, y, z) end

---Sets the render type of this part's secondary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@generic self
---@param self self
---@param renderType ModelPart.renderType
---@return self
function ModelPart:secondaryRenderType(renderType) end

---Sets the secondary texture of this part.  
---Setting the texture type to `"RESOURCE"` allows selecting any namespaced texture to use as the
---texture for the part.  
---Setting the texture type to `"CUSTOM"` allows selecting a Figura texture to use as the texture
---for this part.
---
---If `texture` is `nil`, it will default to `"SECONDARY"`.
---@generic self
---@param self self
---@param texture ModelPart.textureType
---@param extra? string | Texture
---@return self
function ModelPart:secondaryTexture(texture, extra) end

---Sets the UV offset of this part as a percentage of the texture's size.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function ModelPart:uv(uv) end

---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function ModelPart:uv(u, v) end

---Sets the matrix that is applied to all UV points.
---@generic self
---@param self self
---@param mat Matrix3
---@return self
function ModelPart:uvMatrix(mat) end

---Sets the UV offset of this part in pixels.  
---Throws if the part has multiple different sized textures on its faces.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function ModelPart:uvPixels(uv) end

---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function ModelPart:uvPixels(u, v) end

---Sets this part to either be always visible, always invisible, or visible when its parent is.
---
---A boolean value will force the part to be (in)visible, `nil` will make the part inherit its
---parent's visiblity.
---@generic self
---@param self self
---@param visible? boolean
---@return self
function ModelPart:visible(visible) end
