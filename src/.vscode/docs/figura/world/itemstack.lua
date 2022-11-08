---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ITEMSTACK                                                                                   ---
---==============================================================================================---

---A Minecraft item stack.
---@class ItemStack
---The id of this item.
---<!--
---@field id Minecraft.itemID
---The NBT tag of this item.
---
---This data *may* be different from what the server (and `/data`) sees as the server may change
---values when sending the item's information to the client. (This is common when using Polymer.)
---
---This is `nil` if this item has no tag.
---@field tag table
local ItemStack


---===== METHODS =====---

---Creates an item stack string with this item.
---@return string
function ItemStack:toStackString() end


---===== GETTERS =====---

---Gets the cooldown time of this stack in ticks.
---@return integer
function ItemStack:getCooldown() end

---Gets the amount of this item.
---@return integer
function ItemStack:getCount() end

---Gets the damage of this item.
---@return integer
function ItemStack:getDamage() end

---Gets the maximum amount this item can stack to.
---@return integer
function ItemStack:getMaxCount() end

---Gets the maximum durability of this item.
---@return integer
function ItemStack:getMaxDamage() end

---Gets the name of this item.
---@return string
function ItemStack:getName() end

---Gets the rarity of this item.
---@return ItemStack.rarity
function ItemStack:getRarity() end

---Gets the cost to repair this item in an anvil.
---@return integer
function ItemStack:getRepairCost() end

---Gets a list of all the item tags for this item.
---@return string[]
function ItemStack:getTags() end

---Gets the action this item performs when used.
---@return ItemStack.useAction
function ItemStack:getUseAction() end

---Gets the amount of time needed to fully use this item in ticks.
---@return integer
---| 32 # Most food items.
---| 16 # Dried Kelp.
function ItemStack:getUseDuration() end

---Gets if there is an enchantment glint on this item.
---@return boolean
function ItemStack:hasGlint() end

---Gets if this item is also a block.
---@return boolean
function ItemStack:isBlockItem() end

---Gets if this item has durability.
---@return boolean
function ItemStack:isDamageable() end

---Gets if this item can be enchanted.
---@return boolean
function ItemStack:isEnchantable() end

---Gets if this item is edible.
---@return boolean
function ItemStack:isFood() end

---Gets if this item is stackable.
---@return boolean
function ItemStack:isStackable() end
