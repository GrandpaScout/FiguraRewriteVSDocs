---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  RENDERTASK                                                                                                      ---
---==================================================================================================================---

---The base class of all render tasks.
---
---This should be used if the type of render task is not known or does not need to be known.  
---To avoid having to type-check a render task, use `RenderTask.any`.
---@class RenderTask
local RenderTask


---===== METHODS =====---

---Removes this render task from its parent model part.
---@generic self
---@param self self
---@return self
function RenderTask:remove() end


---===== GETTERS =====---

---Gets the current light overrides of this task.
---@return Vector2?
---@nodiscard
function RenderTask:getLight() end

---Gets the name of this task.
---@return string
---@nodiscard
function RenderTask:getName() end

---Recalculates then gets the normal matrix of this task.
---@return Matrix3
---@nodiscard
function RenderTask:getNormalMatrix() end

---Gets the normal matrix of this task without recalculating it.
---@return Matrix3
---@nodiscard
function RenderTask:getNormalMatrixRaw() end

---Gets the overlay values of this task.
---@return Vector2?
---@nodiscard
function RenderTask:getOverlay() end

---Gets this task's position.
---@return Vector3
---@nodiscard
function RenderTask:getPos() end

---Recalculates then gets the position matrix of this task.
---@return Matrix4
---@nodiscard
function RenderTask:getPositionMatrix() end

---Gets the position matrix of this task without recalculating it.
---@return Matrix4
---@nodiscard
function RenderTask:getPositionMatrixRaw() end

---Gets this task's rotation.
---@return Vector3
---@nodiscard
function RenderTask:getRot() end

---Gets this task's scale multiplier.
---@return Vector3
---@nodiscard
function RenderTask:getScale() end

---Gets if this task is rendering.
---@return boolean
---@nodiscard
function RenderTask:isVisible() end


---===== SETTERS =====---

---Sets the block light and sky light overrides of this task.  
---Light values above 15 or below 0 will cause the task to stop rendering.
---
---If `light` is `nil`, light overrides are removed.
---@generic self
---@param self self
---@param light? Vector2
---@return self
function RenderTask:setLight(light) end

---Sets the block light and sky light overrides of this task.  
---Light values above 15 or below 0 will cause the task to stop rendering.
---
---If `block` is `nil`, light overrides are removed.  
---If `sky` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param block? integer
---@param sky? integer
---@return self
function RenderTask:setLight(block, sky) end

---Sets the matrix applied as the position matrix for this task.
---
---This does not overwrite the position, rotation, or scale of the render task. The given matrix is used for rendering
---instead until one of the previously listed values are modified, after which the task will stop using the matrix and
---return to using the position, rotation, and scale for rendering.
---@generic self
---@param self self
---@param mat Matrix4
---@return self
function RenderTask:setMatrix(mat) end

---Sets the white flash and hurt overlays on this task.
---
---If `overlays` is `nil`, all overlays are removed.
---@generic self
---@param self self
---@param overlays? Vector2
---@return self
function RenderTask:setOverlay(overlays) end

---Sets the white flash and hurt overlays on this task.
---
---If `white` is `nil`, all overlays are removed.  
---If `hurt` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param white? integer
---@param hurt? integer
---@return self
function RenderTask:setOverlay(white, hurt) end

---Sets this task's position.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RenderTask:setPos(pos) end

---Sets this task's position.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RenderTask:setPos(x, y, z) end

---Sets this task's rotation.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function RenderTask:setRot(rot) end

---Sets this task's rotation.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RenderTask:setRot(x, y, z) end

---Sets this task's scale multiplier.
---
---If `scale` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function RenderTask:setScale(scale) end

---Sets this task's scale multiplier.
---
---If `x`, `y`, or `z` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RenderTask:setScale(x, y, z) end

---Sets if this task should render at all.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RenderTask:setVisible(state) end


---===== CHAINED =====---

---Sets the block light and sky light overrides of this task.  
---Light values above 15 or below 0 will cause the task to stop rendering.
---
---If `light` is `nil`, light overrides are removed.
---@generic self
---@param self self
---@param light? Vector2
---@return self
function RenderTask:light(light) end

---Sets the block light and sky light overrides of this task.  
---Light values above 15 or below 0 will cause the task to stop rendering.
---
---If `block` is `nil`, light overrides are removed.  
---If `sky` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param block? integer
---@param sky? integer
---@return self
function RenderTask:light(block, sky) end

---Sets the matrix applied as the position matrix for this task.
---
---This does not overwrite the position, rotation, or scale of the render task. The given matrix is used for rendering
---instead until one of the previously listed values are modified, after which the task will stop using the matrix and
---return to using the position, rotation, and scale for rendering.
---@generic self
---@param self self
---@param mat Matrix4
---@return self
function RenderTask:matrix(mat) end

---Sets the white flash and hurt overlays on this task.
---
---If `overlays` is `nil`, all overlays are removed.
---@generic self
---@param self self
---@param overlays? Vector2
---@return self
function RenderTask:overlay(overlays) end

---Sets the white flash and hurt overlays on this task.
---
---If `white` is `nil`, all overlays are removed.  
---If `hurt` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param white? integer
---@param hurt? integer
---@return self
function RenderTask:overlay(white, hurt) end

---Sets this task's position.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RenderTask:pos(pos) end

---Sets this task's position.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RenderTask:pos(x, y, z) end

---Sets this task's rotation.
---
---If `rot` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param rot? Vector3
---@return self
function RenderTask:rot(rot) end

---Sets this task's rotation.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RenderTask:rot(x, y, z) end

---Sets this task's scale multiplier.
---
---If `scale` is `nil`, it will default to `⟨1, 1, 1⟩`.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function RenderTask:scale(scale) end

---Sets this task's scale multiplier.
---
---If `x`, `y`, or `z` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RenderTask:scale(x, y, z) end

---Sets if this task should render at all.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RenderTask:visible(state) end


---==================================================================================================================---
---  BLOCKTASK extends RENDERTASK                                                                                    ---
---==================================================================================================================---

---A render task that renders a Minecraft block.
---@class BlockTask: RenderTask
local BlockTask


---===== SETTERS =====---

---Sets the block this task renders.
---
---Also supports block states and NBT similar to Minecraft's `/setblock` command.
---
---If `block` is `nil`, it will default to `"minecraft:air"`.
---@generic self
---@param self self
---@param block? Minecraft.blockID | BlockState
---@return self
function BlockTask:setBlock(block) end


---===== CHAINED =====---

---Sets the block this task renders.
---
---Also supports block states and NBT similar to Minecraft's `/setblock` command.
---
---If `block` is `nil`, it will default to `"minecraft:air"`.
---@generic self
---@param self self
---@param block? Minecraft.blockID | BlockState
---@return self
function BlockTask:block(block) end


---==============================================================================================---
---  ENTITYTASK extends RENDERTASK                                                                 ---
---==============================================================================================---

---A render task that renders a Minecraft entity.
---@class EntityTask: RenderTask
local EntityTask


---===== METHODS =====---

---Creates an Entity from the NBT data stored in this entity task.  
---Returns `nil` if an entity can't be made for some reason.
---@return Entity?
---@nodiscard
function EntityTask:asEntity() end

---Sets the walking limb distance for this task's entity, if applicable.  
---This influences the walking animation of the entity stored in this task.
---
---This should be run once every tick for it to function properly.
---@generic self
---@param self self
---@param dist number
---@return self
function EntityTask:updateWalkingDistance(dist) end


---===== SETTERS =====---

---Sets the head rotation of this task's entity, if applicable.
---@generic self
---@param self self
---@param rot Vector2
---@return self
function EntityTask:setHeadRotation(rot) end

---Sets the NBT stored in this entity task to the given SNBT string.  
---The stored NBT is used to create the entity this task renders.
---
---The `id` property is *required* and must contain the namespaced id of a valid Minecraft entity.
---@generic self
---@param self self
---@param snbt string
---@return self
function EntityTask:setNbt(snbt) end

---Sets the NBT stored in this entity task to the given SNBT string.  
---The stored NBT is used to create the entity this task renders.
---@generic self
---@param self self
---@param id Minecraft.entityID
---@param snbt string
---@return self
function EntityTask:setNbt(id, snbt) end


---==============================================================================================---
---  ITEMTASK extends RENDERTASK                                                                 ---
---==============================================================================================---

---A render task that renders a Minecraft item.
---@class ItemTask: RenderTask
local ItemTask


---===== GETTERS =====---

---Gets the rendering mode for the item this task renders.
---@return ItemTask.displayMode
---@nodiscard
function ItemTask:getDisplayMode() end


---===== SETTERS =====---

---Sets the rendering mode for the item this task renders.
---@generic self
---@param self self
---@param mode ItemTask.displayMode
---@return self
function ItemTask:setDisplayMode(mode) end

---Sets the item this task renders.
---
---Also supports NBT similar to Minecraft's `/give` command.
---
---If `item` is `nil`, it will default to `"minecraft:air"`.
---@generic self
---@param self self
---@param item? Minecraft.itemID | ItemStack
---@return self
function ItemTask:setItem(item) end


---===== CHAINED =====---

---Sets the rendering mode for the item this task renders.
---@generic self
---@param self self
---@param mode ItemTask.displayMode
---@return self
function ItemTask:displayMode(mode) end

---Sets the item this task renders.
---
---Also supports NBT similar to Minecraft's `/give` command.
---
---If `item` is `nil`, it will default to `"minecraft:air"`.
---@generic self
---@param self self
---@param item? Minecraft.itemID | ItemStack
---@return self
function ItemTask:item(item) end


---==================================================================================================================---
---  SPRITETASK extends RENDERTASK                                                                                   ---
---==================================================================================================================---

---A render task that renders a texture as a sprite.
---@class SpriteTask: RenderTask
local SpriteTask


---===== GETTERS =====---

---Gets the color multiplier of this part.  
---This also includes opacity.
---
---This is a multiplier, that means that `⟨1, 1, 1, 1⟩` will result in no change and `⟨0, 0, 0, 1⟩` will
---result in black.
---@return Vector4
---@nodiscard
function SpriteTask:getColor() end

---Gets the size of the texture this task uses in pixels.
---@return Vector2
---@nodiscard
function SpriteTask:getDimensions() end

---Gets the size of the region this task uses from its texture.
---@return Vector2
---@nodiscard
function SpriteTask:getRegion() end

---Gets the render type of this task.
---@return ModelPart.renderType
---@nodiscard
function SpriteTask:getRenderType() end

---Gets the width and height of this task.
---@return Vector2
---@nodiscard
function SpriteTask:getSize() end

---Gets the path to the texture this task uses.
---@return string?
---@nodiscard
function SpriteTask:getTexture() end

---Gets the UV offset of this task.
---@return Vector2
---@nodiscard
function SpriteTask:getUV() end

---Gets the UV offset of this task in pixels.
---
---Returns `nil` if no UV offset is set.
---@return Vector2
---@nodiscard
function SpriteTask:getUVPixels() end

---Gets the list of vertices this task uses to render itself.
---
---Any modifications to these vertices will be undone if you change the position, rotation, or scale of this task.
---@return Vertex[]
---@nodiscard
function SpriteTask:getVertices() end


---===== SETTERS =====---

---Sets the color multiplier of this part.  
---Optionally takes a Vector4 to control opacity.
---
---This is a multiplier, that means that `⟨1, 1, 1, 1⟩` will result in no change and `⟨0, 0, 0, 1⟩` will result in
---black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3 | Vector4
---@return self
function SpriteTask:setColor(col) end

---Sets the color multiplier of this part.
---
---This is a multiplier, that means that `1, 1, 1, 1` will result in no change and `0, 0, 0, 1` will result in black.
---
---If `r`, `g`, `b`, or `a` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function SpriteTask:setColor(r, g, b, a) end

---Sets the size of the texture this task uses in pixels.
---
---If `size` is `nil`, an error is thrown.
---@generic self
---@param self self
---@param size Vector2
---@return self
function SpriteTask:setDimensions(size) end

---Sets the size of the texture this task uses in pixels.
---
---If `width` or `height` are `nil`, an error is thrown.
---@generic self
---@param self self
---@param width integer
---@param height integer
---@return self
function SpriteTask:setDimensions(width, height) end

---Sets the size of the region this task uses from its texture.
---
---If `size` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param size? Vector2
---@return self
function SpriteTask:setRegion(size) end

---Sets the size of the region this task uses from its texture.
---
---If `width` or `height` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param width? integer
---@param height? integer
---@return self
function SpriteTask:setRegion(width, height) end

---Sets the render type of this task.
---@generic self
---@param self self
---@param rendertype ModelPart.renderType
---@return self
function SpriteTask:setRenderType(rendertype) end

---Sets the width and height of this task.
---
---If `size` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param size? Vector2
---@return self
function SpriteTask:setSize(size) end

---Sets the width and height of this task.
---
---If `width` or `height` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param width? integer
---@param height? integer
---@return self
function SpriteTask:setSize(width, height) end

---**Do not use this version of this function, it ignores the given dimensions!**
---
---Sets the texture this task uses to the given texture.  
---The dimensions of the given texture are used.
---@*error This overload is completely broken. Vector2 is ignored entirely by implementation.
---@*error A path cannot be given to this version of this function due to an error.
---@generic self
---@param self self
---@param texture? Texture
---@param dimensions? Vector2
---@return self
function SpriteTask:setTexture(texture, dimensions) end

---Sets the texture this task uses to the given texture or path.
---
---If given a texture object, the dimensions of the texture are used if no dimensions are given.  
---If given a texture path, the dimensions of the texture must be given.
---
---The width and height of the texture must be given.
---@generic self
---@param self self
---@param texture? Texture | string
---@param width? integer
---@param height? integer
---@return self
function SpriteTask:setTexture(texture, width, height) end

---Sets the texture this task uses to the given texture or path.
---
---If given a texture object, the dimensions of the texture are used if no dimensions are given.  
---If given a texture path, the dimensions of the texture must be given.
---
---The `_` parameter *must* have a value if `dimensions` is not `nil`.
---@*hidden This overload exists due to an error with the first overload.
---@generic self
---@param self self
---@param texture? Texture | string
---@param dimensions? Vector2
---@param _? number
---@return self
function SpriteTask:setTexture(texture, dimensions, _) end

---Sets the UV offset of this task.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function SpriteTask:setUV(uv) end

---Sets the UV offset of this task.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function SpriteTask:setUV(u, v) end

---Sets the UV offset of this task in pixels.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function SpriteTask:setUVPixels(uv) end

---Sets the UV offset of this task in pixels.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function SpriteTask:setUVPixels(u, v) end


---===== CHAINED =====---

---Sets the color multiplier of this part.  
---Optionally takes a Vector4 to control opacity.
---
---This is a multiplier, that means that `⟨1, 1, 1, 1⟩` will result in no change and `⟨0, 0, 0, 1⟩` will result in
---black.
---
---If `col` is `nil`, it will default to `⟨1, 1, 1, 1⟩`.
---@generic self
---@param self self
---@param col? Vector3 | Vector4
---@return self
function SpriteTask:color(col) end

---Sets the color multiplier of this part.
---
---This is a multiplier, that means that `1, 1, 1, 1` will result in no change and `0, 0, 0, 1` will result in black.
---
---If `r`, `g`, `b`, or `a` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function SpriteTask:color(r, g, b, a) end

---Sets the size of the texture this task uses in pixels.
---
---If `size` is `nil`, an error is thrown.
---@generic self
---@param self self
---@param size Vector2
---@return self
function SpriteTask:dimensions(size) end

---Sets the size of the texture this task uses in pixels.
---
---If `width` or `height` are `nil`, an error is thrown.
---@generic self
---@param self self
---@param width integer
---@param height integer
---@return self
function SpriteTask:dimensions(width, height) end

---Sets the size of the region this task uses from its texture.
---
---If `size` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param size? Vector2
---@return self
function SpriteTask:region(size) end

---Sets the size of the region this task uses from its texture.
---
---If `width` or `height` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param width? integer
---@param height? integer
---@return self
function SpriteTask:region(width, height) end

---Sets the render type of this task.
---@generic self
---@param self self
---@param rendertype ModelPart.renderType
---@return self
function SpriteTask:renderType(rendertype) end

---Sets the width and height of this task.
---
---If `size` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param size? Vector2
---@return self
function SpriteTask:size(size) end

---Sets the width and height of this task.
---
---If `width` or `height` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param width? integer
---@param height? integer
---@return self
function SpriteTask:size(width, height) end

---Sets the texture this task uses to the given texture or path.
---
---The width and height of the texture must be given.
---@generic self
---@param self self
---@param texture? Texture | string
---@param width? integer
---@param height? integer
---@return self
function SpriteTask:texture(texture, width, height) end

---Sets the UV offset of this task.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function SpriteTask:uv(uv) end

---Sets the UV offset of this task.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function SpriteTask:uv(u, v) end

---Sets the UV offset of this task in pixels.
---
---If `uv` is `nil`, it will default to `⟨0, 0⟩`.
---@generic self
---@param self self
---@param uv? Vector2
---@return self
function SpriteTask:uvPixels(uv) end

---Sets the UV offset of this task in pixels.
---
---If `u` or `v` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param u? number
---@param v? number
---@return self
function SpriteTask:uvPixels(u, v) end


---==================================================================================================================---
---  TEXTTASK extends RENDERTASK                                                                                     ---
---==================================================================================================================---

---A render task that renders Minecraft text.
---@class TextTask: RenderTask
local TextTask


---===== GETTERS =====---

---Gets the horizontal alignment of the text in this task.
---@return "LEFT" | "CENTER" | "RIGHT"
---@nodiscard
function TextTask:getAlignment() end

---Gets the color of this task's background.
---
---Returns `nil` if the background color has never been set.
---@return Vector4?
---@nodiscard
function TextTask:getBackgroundColor() end

---Gets the opacity of this task.
---@return number
---@nodiscard
function TextTask:getOpacity() end

---Gets the color of this task's text outline.
---
---Returns `⟨0, 0, 0⟩` if the outline color has never been set.
---@return Vector3
---@nodiscard
function TextTask:getOutlineColor() end

---Gets the text displayed on this task.
---
---Returns `nil` if nothing is being displayed.
---@return string?
---@nodiscard
function TextTask:getText() end

---Gets the maximum width of this task in text-pixels.
---@return integer
---@nodiscard
function TextTask:getWidth() end

---Gets if this task has a background.
---@return boolean
---@nodiscard
function TextTask:hasBackground() end

---Gets if this task's text has an outline.
---@return boolean
---@nodiscard
function TextTask:hasOutline() end

---Gets if this task's text has a shadow.
---@return boolean
---@nodiscard
function TextTask:hasShadow() end

---Gets if this task's text should wrap around if it gets too long.
---@return boolean
---@nodiscard
function TextTask:hasWrap() end

---Gets if this task is able to be seen through everything.
---@return boolean
---@nodiscard
function TextTask:isSeeThrough() end

---===== SETTERS =====---

---Sets the horizontal alignment of the text in this task.
---@generic self
---@param self self
---@param align "LEFT" | "CENTER" | "RIGHT"
---@return self
function TextTask:setAlignment(align) end

---Sets if this task has a background.
---
---If `state` is `nil`, it will default to `false`
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:setBackground(state) end

---Sets the color of this task's background.  
---If a `Vector3` is given, it is augmented with the `a` value defined below.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0, a⟩` where `a` is either `0.24705` or the Text Background Opacity
---setting if Text Background is set to "Everywhere".
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function TextTask:setBackgroundColor(color) end

---Sets the color of this task's background.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to either `0.24705` or the Text Background Opacity setting if Text Background is set
---to "Everywhere".
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function TextTask:setBackgroundColor(r, g, b, a) end

---Sets the opacity of this task.
---@generic self
---@param self self
---@param opacity number
---@return self
function TextTask:setOpacity(opacity) end

---Sets if this task's text should have an outline.  
---Text shadows are not rendered if this is enabled.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:setOutline(state) end

---Sets the color of this task's outline (if enabled.)
---
---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function TextTask:setOutlineColor(color) end

---Sets the color of this task's outline (if enabled.)
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function TextTask:setOutlineColor(r, g, b) end

---Sets if this task is able to be seen through everything.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:setSeeThrough(state) end

---Sets if this task's text should have a shadow.
---
---This has no immediate effect if this task also has an outline.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:setShadow(state) end

---Sets this task's text.
---
---If `text` is `nil`, nothing will render.
---@generic self
---@param self self
---@param text? string
---@return self
function TextTask:setText(text) end

---Sets the maximum width of this task in text-pixels.
---@generic self
---@param self self
---@param width? integer
---@return self
function TextTask:setWidth(width) end

---Sets if this task's text should wrap around if it gets too long.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:setWrap(state) end


---===== CHAINED =====---

---Sets the horizontal alignment of the text in this task.
---@generic self
---@param self self
---@param align "LEFT" | "CENTER" | "RIGHT"
---@return self
function TextTask:alignment(align) end

---Sets if this task has a background.
---
---If `state` is `nil`, it will default to `false`
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:background(state) end

---Sets the color of this task's background.  
---If a `Vector3` is given, it is augmented with the `a` value defined below.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0, a⟩` where `a` is either `0.24705` or the Text Background Opacity
---setting if Text Background is set to "Everywhere".
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function TextTask:backgroundColor(color) end

---Sets the color of this task's background.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to either `0.24705` or the Text Background Opacity setting if Text Background is set
---to "Everywhere".
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function TextTask:backgroundColor(r, g, b, a) end

---Sets the opacity of this task.
---@generic self
---@param self self
---@param opacity number
---@return self
function TextTask:opacity(opacity) end

---Sets if this task's text should have an outline.  
---Text shadows are not rendered if this is enabled.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:outline(state) end

---Sets the color of this task's outline (if enabled.)
---
---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function TextTask:outlineColor(color) end

---Sets the color of this task's outline (if enabled.)
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function TextTask:outlineColor(r, g, b) end

---Sets if this task is able to be seen through everything.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:seeThrough(state) end

---Sets if this task's text should have a shadow.
---
---This has no immediate effect if this task also has an outline.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:shadow(state) end

---Sets this task's text.
---
---If `text` is `nil`, nothing will render.
---@generic self
---@param self self
---@param text? string
---@return self
function TextTask:text(text) end

---Sets the maximum width of this task in text-pixels.
---@generic self
---@param self self
---@param width? integer
---@return self
function TextTask:width(width) end

---Sets if this task's text should wrap around if it gets too long.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:wrap(state) end
