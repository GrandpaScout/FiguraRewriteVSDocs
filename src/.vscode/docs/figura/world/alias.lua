---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  WORLDAPI                                                                                                        ---
---==================================================================================================================---

---@alias WorldAPI.heightmap
---Targets the highest block in a column.
---
---**This heightmap updates data for a column only when the chunk containing is loaded in.**  
---To change the data in a column of this heightmap, the chunk containing the column must be unloaded and reloaded.
---| "WORLD_SURFACE_WG"
---Always targets the hightest block in a column.
---| "WORLD_SURFACE"
---Targets the highest non-fluid block in a column that is considered motion blocking.
---
---**This heightmap updates data for a column only when the chunk containing is loaded in.**  
---To change the data in a column of this heightmap, the chunk containing the column must be unloaded and reloaded.
---| "OCEAN_FLOOR_WG"
---Targets the highest non-fluid block in a column that is considered motion blocking.
---
---**This heightmap does not contain data for a column until the client sees a block being placed or changed in that
---column.**  
---Once this happens, the updated block and every block below the that block is added to the heightmap as normal. Blocks
---above the updated block are *not* added to the heightmap.  
---This heightmap loses data for columns in any chunk that the client unloads.
---| "OCEAN_FLOOR"
---Always targets the highest block in a column that is considered motion blocking, including fluids.
---|>"MOTION_BLOCKING"
---Targets the highest block in that column that is considered motion blocking and is not leaves, including fluids.
---
---**This heightmap does not contain data for a column until the client sees a block being placed or changed in that
---column.**  
---Once this happens, the updated block and every block below the that block is added to the heightmap as normal. Blocks
---above the updated block are *not* added to the heightmap.  
---This heightmap loses data for columns in any chunk that the client unloads.
---| "MOTION_BLOCKING_NO_LEAVES"

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
