---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  WORLDAPI                                                                                                        ---
---==================================================================================================================---

---A valid phase of the moon.
---@alias WorldAPI.moonPhase
---| 0 # Full Moon.
---| 1 # Waning Gibbous.
---| 2 # Last Quarter.
---| 3 # Waning Crescent.
---| 4 # New Moon.
---| 5 # Waxing Crescent.
---| 6 # First Quarter.
---| 7 # Waxing Gibbous.


---==================================================================================================================---
---  BIOME                                                                                                           ---
---==================================================================================================================---

---A valid precipitation type.
---@alias Biome.precipitation
---| "NONE" # No precipitation.
---| "RAIN" # Rain.
---| "SNOW" # Snow.


---==================================================================================================================---
---  BLOCKSTATE                                                                                                      ---
---==================================================================================================================---

---@class BlockState.blockSounds
---The sound that plays when this block is broken.
---<!--
---@field break Minecraft.soundID
---The sound that plays when something falls on this block.
---<!--
---@field fall Minecraft.soundID
---The sound that plays when this block is hit.
---<!--
---@field hit Minecraft.soundID
---The pitch these sounds will play at.
---@field pitch number
---The sound that plays when this block is placed.
---<!--
---@field place Minecraft.soundID
---The sound that plays when this block is stepped on.
---<!--
---@field step Minecraft.soundID
---The volume these sounds will play at.
---@field volume number

---@class BlockState.blockTextures
---The paths of textures that don't have a definite side assigned to them.
---@field NONE string[]
---The paths of textures that are assigned as the particles to use when the block is broken.
---@field PARTICLE string[]
---The paths of textures that are assigned to the north side of the block.
---@field NORTH string[]
---The paths of textures that are assigned to the south side of the block.
---@field SOUTH string[]
---The paths of textures that are assigned to the west side of the block.
---@field WEST string[]
---The paths of textures that are assigned to the east side of the block.
---@field EAST string[]
---The paths of textures that are assigned to the top side of the block.
---@field UP string[]
---The paths of textures that are assigned to the bottom side of the block.
---@field DOWN string[]


---==================================================================================================================---
---  ITEMSTACK                                                                                                       ---
---==================================================================================================================---

---@alias ItemStack.equipmentSlot
---| "MAINHAND" # Main Hand
---| "OFFHAND"  # Off Hand
---| "FEET"     # Feet
---| "LEGS"     # Legs
---| "CHEST"    # Chest
---| "HEAD"     # Head

---@alias ItemStack.rarity
---| "COMMON"   # White.
---| "UNCOMMON" # Yellow.
---| "RARE"     # Aqua.
---| "EPIC"     # Light purple.

---@alias ItemStack.useAction
---| "NONE"      # No animation.
---| "EAT"       # Eat food.
---| "DRINK"     # Drink liquid.
---| "BLOCK"     # Block with shield.
---| "BOW"       # Draw bow.
---| "SPEAR"     # Throw trident.
---| "CROSSBOW"  # Load crossbow.
---| "SPYGLASS"  # Look through spyglass.
---| "TOOT_HORN" # Blow goat horn.
