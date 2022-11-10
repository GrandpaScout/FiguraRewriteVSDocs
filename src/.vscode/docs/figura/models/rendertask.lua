---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  RENDERTASK                                                                                  ---
---==============================================================================================---

---The base class of all render tasks.
---
---This should never be used directly unless the type of task does not need to be known.  
---If the type of subtask will be inferred later in your function, use `RenderTask.any` instead.
---@class RenderTask
local RenderTask


---===== GETTERS =====---

---Gets this task's position.
---@return Vector3
function RenderTask:getPos() end

---Gets this task's rotation.
---@return Vector3
function RenderTask:getRot() end

---Gets this task's scale multiplier.
---@return Vector3
function RenderTask:getScale() end

---Gets if this task is rendering at full brightness.
---@return boolean
function RenderTask:isEmissive() end

---Gets if this task is rendering.
---@return boolean
function RenderTask:isEnabled() end


---===== SETTERS =====---

---Sets if this task should render at full brightness at all times.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RenderTask:emissive(state) end

---Sets if this task should render at all.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function RenderTask:enabled(state) end

---Sets this task's position.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function RenderTask:pos(pos) end

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

---If `x`, `y`, or `z` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function RenderTask:scale(x, y, z) end


---==============================================================================================---
---  BLOCKTASK extends RENDERTASK                                                                ---
---==============================================================================================---

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
function BlockTask:block(block) end


---==============================================================================================---
---  ITEMTASK extends RENDERTASK                                                                 ---
---==============================================================================================---

---A render task that renders a Minecraft item.
---@class ItemTask: RenderTask
local ItemTask


---===== GETTERS =====---

---Gets the rendering mode for the item this task renders.
---@return ItemTask.renderType
function ItemTask:getRenderType(renderType) end


---===== SETTERS =====---

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

---Sets the rendering mode for the item this task renders.
---@generic self
---@param self self
---@param renderType ItemTask.renderType
---@return self
function ItemTask:renderType(renderType) end


---==============================================================================================---
---  TEXTTASK extends RENDERTASK                                                                 ---
---==============================================================================================---

---A render task that renders Minecraft text.
---@class TextTask: RenderTask
local TextTask


---===== GETTERS =====---

---Gets the color of this task's text outline.
---
---Returns `nil` if the outline color has never been set.
---@return Vector3?
function TextTask:getOutlineColor() end

---Gets if this task's text has an outline.
---@return boolean
function TextTask:hasOutline() end

---Gets if this task's text has a shadow.
---@return boolean
function TextTask:hasShadow() end

---Gets if this task's text is centered on its pivot.
---@*error This does not use the correct spelling. `centred` -> `centered`
---@return boolean
function TextTask:isCentred() end


---===== SETTERS =====---

---Sets if this task's text should be centered on its pivot similar to nameplates.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:centered(state) end

---Sets if this task's text should have an outline.
---
---Due to how this effect works, the text will also be emissive and shadows will not work.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:outline(state) end

---Sets the color of this task's outline (if enabled.)
---
---If `col` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param col? Vector3
---@return self
function TextTask:outlineColor(col) end

---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function TextTask:outlineColor(r, g, b) end

---Sets if this task's text should have a shadow.
---
---This has no immediate effect if this task also has an outline.
---
---If `state` is `nil`, it will default to `false`.
---@*error The shadow fails to actually stick to the text properly in world space.
---@generic self
---@param self self
---@param state? boolean
---@return self
function TextTask:shadow(state) end

---Sets this task's text.
---
---If `text` is `nil`, it will default to `""`.
function TextTask:text(text) end
