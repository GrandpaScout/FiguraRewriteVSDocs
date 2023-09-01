---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ITEMSTACK                                                                                                       ---
---==================================================================================================================---

---A Minecraft item stack.
---@class ItemStack
---The id of this item.
---<!--
---@field id Minecraft.itemID
---The NBT tag of this item.
---
---This data *may* be different from what the server (and `/data`) sees as the server may change values when sending the
---item's information to the client. (This is common when using Polymer.)
---
---This is empty if this item has no tag.
---@field tag table
local ItemStack


---===== METHODS =====---

---Creates a copy of this item stack.
---@return ItemStack
---@nodiscard
function ItemStack:copy() end

---Creates an item stack string with this item.
---@return string
---@nodiscard
function ItemStack:toStackString() end


---===== GETTERS =====---

---Gets the BlockState representation of this item.
---
---Returns `nil` if no block is found.
---@return BlockState?
---@nodiscard
function ItemStack:getBlockstate() end

---Gets the amount of this item.
---@return integer
---@nodiscard
function ItemStack:getCount() end

---Gets the damage of this item.
---@return integer
---@nodiscard
function ItemStack:getDamage() end

---Gets the equipment slot of this item.
---@return ItemStack.equipmentSlot
---@nodiscard
function ItemStack:getEquipmentSlot() end

---Gets the namespaced ID of this item.
---@return Minecraft.itemID
---@nodiscard
function ItemStack:getID() end

---Gets the maximum amount this item can stack to.
---@return integer
---@nodiscard
function ItemStack:getMaxCount() end

---Gets the maximum durability of this item.
---@return integer
---@nodiscard
function ItemStack:getMaxDamage() end

---Gets the name of this item.
---@return string
---@nodiscard
function ItemStack:getName() end

---Gets the amount of ticks are left in this item's hotbar pop animation.
---@return integer
---@nodiscard
function ItemStack:getPopTime() end

---Gets the rarity of this item.
---@return ItemStack.rarity
---@nodiscard
function ItemStack:getRarity() end

---Gets the cost to repair this item in an anvil.
---@return integer
---@nodiscard
function ItemStack:getRepairCost() end

---Gets the NBT tag of this item.
---@return table
---@nodiscard
function ItemStack:getTag() end

---Gets a list of all the item tags for this item.
---@return string[]
---@nodiscard
function ItemStack:getTags() end

---Gets the action this item performs when used.
---@return ItemStack.useAction
---@nodiscard
function ItemStack:getUseAction() end

---Gets the amount of time needed to fully use this item in ticks.
---@return integer
---| 32 # Most food items.
---| 16 # Dried Kelp.
---@nodiscard
function ItemStack:getUseDuration() end

---Gets if there is an enchantment glint on this item.
---@return boolean
---@nodiscard
function ItemStack:hasGlint() end

---Gets if this item is armor.
---@return boolean
---@nodiscard
function ItemStack:isArmor() end

---Gets if this item is also a block.
---@return boolean
---@nodiscard
function ItemStack:isBlockItem() end

---Gets if this item has durability.
---@return boolean
---@nodiscard
function ItemStack:isDamageable() end

---Gets if this item can be enchanted.
---@return boolean
---@nodiscard
function ItemStack:isEnchantable() end

---Gets if this item is edible.
---@return boolean
---@nodiscard
function ItemStack:isFood() end

---Gets if this item is stackable.
---@return boolean
---@nodiscard
function ItemStack:isStackable() end

---Gets if this item is a tool.
---@return boolean
---@nodiscard
function ItemStack:isTool() end
