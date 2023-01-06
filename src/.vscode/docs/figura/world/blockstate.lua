---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  BLOCKSTATE                                                                                  ---
---==============================================================================================---

---A Minecraft block.
---@class BlockState
---The id of this block.
---<!--
---@field id Minecraft.blockID
---The state properties of this block.
---
---This is `nil` if this block has no properties.
---<!--
---@field properties? Minecraft.blockProperties
local BlockState


---===== METHODS =====---

---Creates a block state string with this block.
---@return string
function BlockState:toStateString() end


---===== GETTERS =====---

---Gets the item representation of this block, whatever that may be.
---
---Returns `nil` if no valid item was found.
---@return ItemStack?
function BlockState:asItem() end

---Gets if this block generates its own redstone power.
---@return boolean
function BlockState:emitsRedstonePower() end

---Gets the blast resistance of this block.
---@return number
function BlockState:getBlastResistance() end

---Gets the shape of this block's collision as a list of 6-element vectors.  
---Each vector contains both corners of a box in the shape `⟨minX, minY, minZ, maxX, maxY, maxZ⟩`.
---
---The coordinates used are relative to the starting corner of this block's position.
---@return Vector6[]
function BlockState:getCollisionShape() end

---Gets the amount of power a comparator reading this block would output.
---@return range*0-15
function BlockState:getComparatorOutput() end

---Gets the client-side NBT data of this block.
---
---This data *will* be different from what the server (and `/data`) sees as clients do not receive
---all NBT data.
---
---Returns `nil` if there is no NBT data attached to this block.
---@return table?
function BlockState:getEntityData() end

---Gets a list of all the fluid tags for the fluid in this block.
---@return string[]
function BlockState:getFluidTags() end

---Gets the friction of this block.
---@return number
function BlockState:getFriction() end

---Gets the hardness of this block.
---@return number
function BlockState:getHardness() end

---Gets the multiplier to jump height this block applies to entities standing on it.
---@return number
function BlockState:getJumpVelocityMultiplier() end

---Gets the block light level this block emits.
---@return range*0-15
function BlockState:getLuminance() end

---Gets the color of this block on a map.
---@return Vector3
function BlockState:getMapColor() end

---Gets the id of this block's material.
---
---Blocks with similar materials usually share similar properties.
---@return BlockState.material
function BlockState:getMaterial() end

---Gets how much this block reduces light level.
---@return range*0-15
function BlockState:getOpacity() end

---Gets the shape of this block's outline as a list of 6-element vectors.  
---Each vector contains both corners of a box in the shape `⟨minX, minY, minZ, maxX, maxY, maxZ⟩`.
---
---The coordinates used are relative to the starting corner of this block's position.
---@return Vector6[]
function BlockState:getOutlineShape() end

---Gets the position that this BlockState object uses for calculations.
---@return Vector3
function BlockState:getPos() end

---Gets information on the basic sounds this block plays.
---@return BlockState.Sounds
function BlockState:getSounds() end

---Gets a list of all the block tags for this block.
---@return string[]
function BlockState:getTags() end

---Gets the multiplier to movement speed this block applies to entities standing on it.
---@return number
function BlockState:getVelocityMultiplier() end

---Gets if this block has a block entity.
---@return boolean
function BlockState:hasBlockEntity() end

---Gets if this block has any collision.
---@return boolean
function BlockState:hasCollision() end

---Gets if this block has emissive textures.
---@return boolean
function BlockState:hasEmissiveLighting() end

---Gets if the collision of this block is a cube that takes the entire block space.
---@return boolean
function BlockState:isFullCube() end

---Gets if this block stops all light from going through it.
---@return boolean
function BlockState:isOpaque() end

---Gets if this block is considered solid.
---@return boolean
function BlockState:isSolidBlock() end

---Gets if this block does not stop any light from going through it.
---@return boolean
function BlockState:isTranslucent() end


---===== SETTERS =====---

---Sets the position that this BlockState object uses for calculations.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
function BlockState:setPos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? Vector3
---@param y? Vector3
---@param z? Vector3
function BlockState:setPos(x, y, z) end


---===== CHAINED =====---

---Sets the position that this BlockState object uses for calculations.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function BlockState:pos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? Vector3
---@param y? Vector3
---@param z? Vector3
---@return self
function BlockState:pos(x, y, z) end
