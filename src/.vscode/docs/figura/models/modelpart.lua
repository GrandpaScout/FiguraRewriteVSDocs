---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  MODELPART-INTERNAL                                                                                              ---
---==================================================================================================================---

---**INTERNAL CLASS**&emsp;*Do not use this!*
---
---Contains generic string field for indexing.
---@class ModelPart.*INTERNAL*
---@field [string] ModelPart


---==================================================================================================================---
---  MODELPART                                                                                                       ---
---==================================================================================================================---

---A part of the avatar's model.  
---This can be a group, cube, or mesh.
---@class ModelPart: ModelPart.*INTERNAL*
---The function to run after this model part calculates its matrices, but before it is fully rendered.
---@field midRender ModelPart.renderFunc
---The function to run just after this model part has fully rendered.
---@field postRender ModelPart.renderFunc
---The function to run just before this model part starts rendering.
---@field preRender ModelPart.renderFunc
local ModelPart


---===== METHODS =====---

---Adds the given part as a child of this part.
---@generic self
---@param self self
---@param part ModelPart
---@return self
function ModelPart:addChild(part) end

---Creates a shallow copy of this part.
---
---*This does not create a deep copy, all of the child parts are references to the original child parts.*
---@param name string
---@return ModelPart
---@nodiscard
function ModelPart:copy(name) end

---Makes this part a child of the given part.
---
---If this part already has a parent, it is removed from that parent first.
---@generic self
---@param self self
---@param parent ModelPart
---@return self
function ModelPart:moveTo(parent) end

---Adds a block task to this part.
---@param name string
---@return BlockTask
---@nodiscard
function ModelPart:newBlock(name) end

---Adds an entity task to this part.
---@param name string
---@return EntityTask
---@nodiscard
function ModelPart:newEntity(name) end

---Adds an item task to this part.
---@param name string
---@return ItemTask
---@nodiscard
function ModelPart:newItem(name) end

---Adds a blank part to this part. The initial parent type of the part can optionally be set.
---
---If `parent` is `nil`, it will default to `"None"`.
---@param name string
---@param parent? ModelPart.parentType
---@return ModelPart
---@nodiscard
function ModelPart:newPart(name, parent) end

---Adds a sprite task to this part.
---@param name string
---@return SpriteTask
---@nodiscard
function ModelPart:newSprite(name) end

---Adds the given render task to this part.
---@generic task: RenderTask
---@param task task
---@return task
function ModelPart:addTask(task) end

---Adds a text task to this part.
---@param name string
---@return TextTask
---@nodiscard
function ModelPart:newText(name) end

---Removes the given part from this part.

---Gets a matrix which transforms a local position of this part to a world position.
---
---This matrix only updates in `POST_RENDER` or `.midRender`, if you attempt to use it in `RENDER` or `.preRender`, it
---will be one frame behind.
---
---This matrix will not update if the part is not visible. (Unless you are in first-person.)
---@*error The matrix is incorrect if the camera is rolled.
---@return Matrix4
---@nodiscard
function ModelPart:partToWorldMatrix() end

---Removes this part from its parent.
---@generic self
---@param self self
---@return self
function ModelPart:remove() end

---Removes the given part as a child of this part.
---@generic self
---@param self self
---@param part ModelPart
---@return self
function ModelPart:removeChild(part) end

---Removes a previously added render task by name.  
---If no name is given, all render tasks are removed from this part.
---@generic self
---@param self self
---@param name? string
---@return self
function ModelPart:removeTask(name) end


---===== GETTERS =====---

---Gets all vertices of this part sorted by the name of the texture the face they make up uses.
---@return {[string]: Vertex[]}
---@nodiscard
function ModelPart:getAllVertices() end

---Gets the position offset caused by any currently playing animations.
---@return Vector3
---@nodiscard
function ModelPart:getAnimPos() end

---Gets the rotation offset in degrees caused by any currently playing animations.
---@return Vector3
---@nodiscard
function ModelPart:getAnimRot() end

---Gets the scale multiplier caused by any currently playing animations.
---@return Vector3
---@nodiscard
function ModelPart:getAnimScale() end

---Gets the children of this part.
---@return ModelPart[]
---@nodiscard
function ModelPart:getChildren() end

---Gets the color multiplier of this part.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---@return Vector3
---@nodiscard
function ModelPart:getColor() end

---Gets the light overrides set earlier by `:setLight()`.
---
---Returns `nil` if no light overrides are set.
---@return Vector2?
---@nodiscard
function ModelPart:getLight() end

---Gets the name of this part.
---@return string
---@nodiscard
function ModelPart:getName() end

---Recalculates then gets the normal matrix of this part.
---@return Matrix3
---@nodiscard
function ModelPart:getNormalMatrix() end

---Gets the normal matrix of this part without recalculating it.
---@return Matrix3
---@nodiscard
function ModelPart:getNormalMatrixRaw() end

---Gets the pivot offset of this part.
---
---If you are looking for the normal pivot position, use `:getPivot()`.
---@return Vector3
---@nodiscard
function ModelPart:getOffsetPivot() end

---Gets the rotation offset of this part in degrees.
---
---If you are looking for the normal rotation, use `:getRot()`.
---@return Vector3
---@nodiscard
function ModelPart:getOffsetRot() end

---Gets the scale offset of this part.
---
---If you are looking for the normal scale, use `:getScale()`.
---@return Vector3
---@nodiscard
function ModelPart:getOffsetScale() end

---Gets the opacity multiplier of this part.
---@return number
---@nodiscard
function ModelPart:getOpacity() end

---Gets the overlay values of this part.
---@return Vector2?
---@nodiscard
function ModelPart:getOverlay() end

---Gets the parent of this part, if it has any.
---@return ModelPart?
---@nodiscard
function ModelPart:getParent() end

---Gets the keyword this part follows.
---@return ModelPart.parentType
---@nodiscard
function ModelPart:getParentType() end

---Gets the pivot position of this part.
---@return Vector3
---@nodiscard
function ModelPart:getPivot() end

---Gets the position offset of this part.
---@return Vector3
---@nodiscard
function ModelPart:getPos() end

---Recalculates then gets the position matrix of this part.
---@return Matrix4
---@nodiscard
function ModelPart:getPositionMatrix() end

---Gets the position matrix of this part without recalculating it.
---@return Matrix4
---@nodiscard
function ModelPart:getPositionMatrixRaw() end

---Gets the color multiplier of this part's primary layer.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---@return Vector3
---@nodiscard
function ModelPart:getPrimaryColor() end

---Gets the defined textures in the given internal texture index.
---
---This function does *not* do what it says it does in-game.
---@*error In-game description is wrong and is missing the param and return type.
---@*error Missing an alias.
---@*vmerror if `index` does not point to a valid texture index.
---@param index integer
---@return ModelPart.textureIndex
---@nodiscard
function ModelPart:getPrimaryDefinedTextures(index) end

---Gets the render type of this part's primary layer.
---
---Returns `nil` if it is inheriting from its parent.
---@return ModelPart.renderType?
---@nodiscard
function ModelPart:getPrimaryRenderType() end

---Gets the texture data of this part's primary layer.
---
---If the texture of this layer is `"RESOURCE"` or `"CUSTOM"`, then a second value will be returned.
---@return ModelPart.textureType
---@return (string | Texture)?
---@nodiscard
function ModelPart:getPrimaryTexture() end

---Gets the rotation of this part in degrees.
---@return Vector3
---@nodiscard
function ModelPart:getRot() end

---Gets the scale multiplier of this part.
---@return Vector3
---@nodiscard
function ModelPart:getScale() end

---Gets the color multiplier of this part's secondary layer.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---@return Vector3
---@nodiscard
function ModelPart:getSecondaryColor() end

---Gets the defined textures in the given internal texture index.
---
---This function does *not* do what it says it does in-game.
---@*error In-game description is wrong and is missing the param and return type.
---@*vmerror if `index` does not point to a valid texture index.
---@param index integer
---@return ModelPart.textureIndex
---@nodiscard
function ModelPart:getSecondaryDefinedTextures(index) end

---Gets the render type of this part's secondary layer.
---
---Returns `nil` if it is inheriting from its parent.
---@return ModelPart.renderType?
---@nodiscard
function ModelPart:getSecondaryRenderType() end

---Gets the texture data of this part's secondary layer.
---
---If the texture of this layer is `"RESOURCE"` or `"CUSTOM"`, then a second value will be returned.
---
---Returns `"PRIMARY"` instead of `"SECONDARY"` if no texture data has been applied to this part.
---@return ModelPart.textureType
---@return (string | Texture)?
---@nodiscard
function ModelPart:getSecondaryTexture() end

---Gets a table of all render tasks on this part.
---@return {[string]?: RenderTask}
---@nodiscard
function ModelPart:getTask() end

---Gets the render task with the given name from this part.  
---If a render task with the given name isn't found, `nil` is returned instead.
---
---If the task is confirmed to be of a certain type, add `--[[@as ???Task]]` after the function call to allow the Lua
---Server to know which task type it should expect.
---```lua
---local task = <ModelPart>:getTask("Block") --[[@as BlockTask]]
---      ┌┴──────────────────────┐
---      │local task: BlockTask {│
---      │    ...                │
---      │}                      │
---      └───────────────────────┘
---```
---@param name string
---@return RenderTask?
---@nodiscard
function ModelPart:getTask(name) end

---Gets a list of all textures the avatar's models use.
---
---This function does *not* do what it says it does in-game.
---@*error In-game description is wrong.
---@return Texture[]
---@nodiscard
function ModelPart:getTextures() end

---Gets the width and height of this part's texture in pixels.
---
---Throws if the part has multiple different sized textures on its faces.
---@return Vector2
---@nodiscard
function ModelPart:getTextureSize() end

---Gets the actual pivot position of this part.
---
---This is the sum of the pivot's position and the pivot offset.
---@return Vector3
---@nodiscard
function ModelPart:getTruePivot() end

---Gets the actual position of this part.
---
---This is the sum of the position and any position offsets created by any playing animations.
---@return Vector3
---@nodiscard
function ModelPart:getTruePos() end

---Gets the actual rotation of this part.
---
---This is the sum of the rotation, rotation offset, and any further rotation offsets created by any playing animations.
---@return Vector3
---@nodiscard
function ModelPart:getTrueRot() end

---Gets the actual scale of this part.
---
---This is the sum of the scale, scale offset, and any further scale offsets created by any playing animations.
---@return Vector3
---@nodiscard
function ModelPart:getTrueScale() end

---Gets the type of this part.
---@return ModelPart.type
---@nodiscard
function ModelPart:getType() end

---Gets the UV offset of this part.
---@return Vector2
---@nodiscard
function ModelPart:getUV() end

---Gets the UV matrix of this part.
---@return Matrix3
---@nodiscard
function ModelPart:getUVMatrix() end

---Gets the UV offset of this part in pixels.
---
---Returns `nil` if no UV offset is set.
---@return Vector2
---@nodiscard
function ModelPart:getUVPixels() end

---Gets the vertices of this part which make up the faces that use the given texture.
---@param texture string
---@return Vertex[]
---@nodiscard
function ModelPart:getVertices(texture) end

---Gets if this part is visible.
---
---This check includes the entire chain of parts up to the root.
---@return boolean
---@nodiscard
function ModelPart:getVisible() end

---Gets if this part is a child of another part.
---@param part ModelPart
---@return boolean
---@nodiscard
function ModelPart:isChildOf(part) end

---Gets if an animation is overriding the vanilla position of this part.
---@return boolean
---@nodiscard
function ModelPart:overrideVanillaPos() end

---Gets if an animation is overriding the vanilla rotation of this part.
---@return boolean
---@nodiscard
function ModelPart:overrideVanillaRot() end

---Gets if an animation is overriding the vanilla scale of this part.
---@return boolean
---@nodiscard
function ModelPart:overrideVanillaScale() end


---===== SETTERS =====---

---Sets the color multiplier of this part.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3
---@return self
function ModelPart:setColor(col) end

---Sets the color multiplier of this part.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---
---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function ModelPart:setColor(r, g, b) end

---Sets the block light and sky light overrides of this part.  
---Light values above 15 or below 0 will cause the part to stop rendering.
---
---If `light` is `nil`, light overrides are removed.
---@generic self
---@param self self
---@param light? Vector2
---@return self
function ModelPart:setLight(light) end

---Sets the block light and sky light overrides of this part.  
---Light values above 15 or below 0 will cause the part to stop rendering.
---
---If `block` is `nil`, light overrides are removed.  
---If `sky` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param block? integer
---@param sky? integer
---@return self
function ModelPart:setLight(block, sky) end

---Sets the position matrix of this part to the given matrix.
---
---This does not change the actual position, rotation, or scale of the part and the effects of this matrix will be
---removed if `:setPos()`, `:setRot()`, or `:setScale()` are used.
---@generic self
---@param self self
---@param mat Matrix4
---@return self
function ModelPart:setMatrix(mat) end

---Sets the function to run after this model part calculates its matrices, but before it is fully rendered.
---@generic self
---@param self self
---@param func? ModelPart.renderFunc
---@return self
function ModelPart:setMidRender(func) end

---Sets the pivot offset of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function ModelPart:setOffsetPivot(pos) end

---Sets the pivot offset of this part.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:setOffsetPivot(x, y, z) end

---Sets the rotation offset of this part.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function ModelPart:setOffsetRot(rot) end

---Sets the rotation offset of this part.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:setOffsetRot(x, y, z) end

---Sets the scale offset of this part.
---
---If `scale` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function ModelPart:setOffsetScale(scale) end

---Sets the scale offset of this part.
---
---If `x` is `nil`, it will default to `1`.
---If `y` or `z` are `nil`, they will default to the value of `x`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:setOffsetScale(x, y, z) end

---Sets the opacity multiplier of this part.
---
---This only has an effect if the render type of the part supports it. (`TRANSLUCENT`/`TRANSLUCENT_CULL`)
---@generic self
---@param self self
---@param opacity number
---@return self
function ModelPart:setOpacity(opacity) end

---Sets the white flash and hurt overlays on this part.
---
---If `overlays` is `nil`, all overlays are removed.
---@generic self
---@param self self
---@param overlays? Vector2
---@return self
function ModelPart:setOverlay(overlays) end

---Sets the white flash and hurt overlays on this part.
---
---If `white` is `nil`, all overlays are removed.  
---If `hurt` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param white? integer
---@param hurt? integer
---@return self
function ModelPart:setOverlay(white, hurt) end

---Sets the keyword this part follows.
---@generic self
---@param self self
---@param parent ModelPart.parentType
---@return self
function ModelPart:setParentType(parent) end

---Sets the pivot position of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function ModelPart:setPivot(pos) end

---Sets the pivot position of this part.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:setPivot(x, y, z) end

---Sets the position offset of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function ModelPart:setPos(pos) end

---Sets the position offset of this part.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:setPos(x, y, z) end

---Sets the function to run just after this model part has fully rendered.
---@generic self
---@param self self
---@param func ModelPart.renderFunc
---@return self
function ModelPart:setPostRender(func) end

---Sets the function to run just before this model part starts rendering.
---@generic self
---@param self self
---@param func ModelPart.renderFunc
---@return self
function ModelPart:setPreRender(func) end

---Sets the color multiplier of this part's primary layer.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3
---@return self
function ModelPart:setPrimaryColor(col) end

---Sets the color multiplier of this part's primary layer.
---
---This is a multiplier, that means that `1, 1, 1` will result in no change and `0, 0, 0` will result in black.
---
---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function ModelPart:setPrimaryColor(r, g, b) end

---Sets the render type of this part's primary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@generic self
---@param self self
---@param renderType? ModelPart.renderType
---@return self
function ModelPart:setPrimaryRenderType(renderType) end

---Sets the primary texture of this part.  
---Setting the texture type to `"RESOURCE"` allows selecting any namespaced texture to use as the texture source.  
---Setting the texture type to `"CUSTOM"` allows selecting a Figura `Texture` to use as the texture source.
---
---If `texture` is `nil`, it will default to `"PRIMARY"`.
---@generic self
---@param self self
---@param texture ModelPart.textureType
---@param source? string | Texture
---@return self
function ModelPart:setPrimaryTexture(texture, source) end

---Sets the rotation of this part.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function ModelPart:setRot(rot) end

---Sets the rotation of this part.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:setRot(x, y, z) end

---Sets the scale multiplier of this part.
---
---If `scale` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function ModelPart:setScale(scale) end

---Sets the scale multiplier of this part.
---
---If `x` is `nil`, it will default to `1`.
---If `y` or `z` are `nil`, they will default to the value of `x`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:setScale(x, y, z) end

---Sets the color multiplier of this part's secondary layer.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3
---@return self
function ModelPart:setSecondaryColor(col) end

---Sets the color multiplier of this part's secondary layer.
---
---This is a multiplier, that means that `1, 1, 1` will result in no change and `0, 0, 0` will result in black.
---
---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function ModelPart:setSecondaryColor(r, g, b) end

---Sets the render type of this part's secondary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@generic self
---@param self self
---@param renderType? ModelPart.renderType
---@return self
function ModelPart:setSecondaryRenderType(renderType) end

---Sets the secondary texture of this part.  
---Setting the texture type to `"RESOURCE"` allows selecting any namespaced texture to use as the texture source.  
---Setting the texture type to `"CUSTOM"` allows selecting a Figura `Texture` to use as the texture source.
---
---If `texture` is `nil`, it will default to `"SECONDARY"`.
---@generic self
---@param self self
---@param texture ModelPart.textureType
---@param extra? string | Texture
---@return self
function ModelPart:setSecondaryTexture(texture, extra) end

---Sets the UV offset of this part as a percentage of the texture's size.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function ModelPart:setUV(uv) end

---Sets the UV offset of this part as a percentage of the texture's size.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function ModelPart:setUV(u, v) end

---Sets the matrix that is applied to all UV points.
---@generic self
---@param self self
---@param mat Matrix3
---@return self
function ModelPart:setUVMatrix(mat) end

---Sets the UV offset of this part in pixels.  
---Throws if the part has multiple different sized textures on its faces.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function ModelPart:setUVPixels(uv) end

---Sets the UV offset of this part in pixels.  
---Throws if the part has multiple different sized textures on its faces.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function ModelPart:setUVPixels(u, v) end

---Sets if this part is visible.  
---If this part's parent is invisible, this does nothing and this part will always be invisible.
---
---If `state` is `nil`, it will default to `true`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function ModelPart:setVisible(state) end


---===== SETTERS =====---

---Sets the color multiplier of this part.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3
---@return self
function ModelPart:color(col) end

---Sets the color multiplier of this part.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---
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
---If `light` is `nil`, light overrides are removed.
---@generic self
---@param self self
---@param light? Vector2
---@return self
function ModelPart:light(light) end

---Sets the block light and sky light overrides of this part.  
---Light values above 15 or below 0 will cause the part to stop rendering.
---
---If `block` is `nil`, light overrides are removed.  
---If `sky` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param block? integer
---@param sky? integer
---@return self
function ModelPart:light(block, sky) end

---Sets the position matrix of this part to the given matrix.
---
---This does not change the actual position, rotation, or scale of the part and the effects of this matrix will be
---removed if `:setPos()`, `:setRot()`, or `:setScale()` are used.
---@generic self
---@param self self
---@param mat Matrix4
---@return self
function ModelPart:matrix(mat) end

---Sets the pivot offset of this part.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function ModelPart:offsetPivot(pos) end

---Sets the pivot offset of this part.
---
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

---Sets the rotation offset of this part.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:offsetRot(x, y, z) end

---Sets the scale offset of this part.
---
---If `scale` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function ModelPart:offsetScale(scale) end

---Sets the scale offset of this part.
---
---If `x` is `nil`, it will default to `1`.
---If `y` or `z` are `nil`, they will default to the value of `x`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:offsetScale(x, y, z) end

---Sets the opacity multiplier of this part.
---
---This only has an effect if the render type of the part supports it. (`TRANSLUCENT`/`TRANSLUCENT_CULL`)
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

---Sets the white flash and hurt overlays on this part.
---
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

---Sets the pivot position of this part.
---
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

---Sets the position offset of this part.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:pos(x, y, z) end

---Sets the color multiplier of this part's primary layer.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3
---@return self
function ModelPart:primaryColor(col) end

---Sets the color multiplier of this part's primary layer.
---
---This is a multiplier, that means that `1, 1, 1` will result in no change and `0, 0, 0` will result in black.
---
---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function ModelPart:primaryColor(r, g, b) end

---Sets the render type of this part's primary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@generic self
---@param self self
---@param renderType? ModelPart.renderType
---@return self
function ModelPart:primaryRenderType(renderType) end

---Sets the render type of this part's primary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@generic self
---@param self self
---@param renderType ModelPart.renderType
---@return self
function ModelPart:primaryTexture(renderType) end

---Sets the primary texture of this part.  
---Setting the texture type to `"RESOURCE"` allows selecting any namespaced texture to use as the texture source.  
---Setting the texture type to `"CUSTOM"` allows selecting a Figura `Texture` to use as the texture source.
---
---If `texture` is `nil`, it will default to `"PRIMARY"`.
---@generic self
---@param self self
---@param texture ModelPart.textureType
---@param source? string | Texture
---@return self
function ModelPart:primaryTexture(texture, source) end

---Sets the rotation of this part.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function ModelPart:rot(rot) end

---Sets the rotation of this part.
---
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

---Sets the scale multiplier of this part.
---
---If `x` is `nil`, it will default to `1`.
---If `y` or `z` are `nil`, they will default to the value of `x`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function ModelPart:scale(x, y, z) end

---Sets the color multiplier of this part's secondary layer.
---
---This is a multiplier, that means that `⟨1, 1, 1⟩` will result in no change and `⟨0, 0, 0⟩` will result in black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3
---@return self
function ModelPart:secondaryColor(col) end

---Sets the color multiplier of this part's secondary layer.
---
---This is a multiplier, that means that `1, 1, 1` will result in no change and `0, 0, 0` will result in black.
---
---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function ModelPart:secondaryColor(r, g, b) end

---Sets the render type of this part's secondary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@generic self
---@param self self
---@param renderType? ModelPart.renderType
---@return self
function ModelPart:secondaryRenderType(renderType) end

---Sets the render type of this part's secondary layer.
---
---This part inherits from its parent if `renderType` is `nil`.
---@generic self
---@param self self
---@param renderType ModelPart.renderType
---@return self
function ModelPart:secondaryTexture(renderType) end

---Sets the secondary texture of this part.  
---Setting the texture type to `"RESOURCE"` allows selecting any namespaced texture to use as the texture source.  
---Setting the texture type to `"CUSTOM"` allows selecting a Figura `Texture` to use as the texture source.
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

---Sets the UV offset of this part as a percentage of the texture's size.
---
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

---Sets the UV offset of this part in pixels.  
---Throws if the part has multiple different sized textures on its faces.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function ModelPart:uvPixels(u, v) end

---Sets if this part is visible.  
---If this part's parent is invisible, this does nothing and this part will always be invisible.
---
---If `state` is `nil`, it will default to `true`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function ModelPart:visible(state) end
