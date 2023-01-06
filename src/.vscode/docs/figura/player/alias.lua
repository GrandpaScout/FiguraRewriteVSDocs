---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ENTITYAPI                                                                                   ---
---==============================================================================================---

---A union of all Entity sub-types.
---<!--
---@alias EntityAPI.any EntityAPI | LivingEntityAPI | PlayerAPI

---A valid equipment slot on an entity.
---@alias EntityAPI.slot
---| 1 # Main Hand
---| 2 # Off Hand
---| 3 # Boots
---| 4 # Leggings
---| 5 # Chestplate
---| 6 # Helmet

---A valid server permission level.
---@alias EntityAPI.permissionLevel
---| 0 # No permissions
---| 1 # Bypass spawn protection
---| 2 # Use cheat commands
---| 3 # Use player management commands
---| 4 # Use server management commands

---A valid pose for an entity.
---@alias EntityAPI.pose
---| "STANDING"     # No special pose.
---| "FALL_FLYING"  # Using elytra.
---| "SLEEPING"     # Sleeping in bed.
---| "SWIMMING"     # Sprint-swimming.
---| "SPIN_ATTACK"  # Using Riptide trident.
---| "CROUCHING"    # Sneaking.
---| "LONG_JUMPING" # Goat long jump.
---| "DYING"        # Falling over.
---| "CROAKING"     # Frog Croaking.
---| "USING_TONGUE" # Frog using tongue.
---| "ROARING"      # Warden roaring.
---| "SNIFFING"     # Warden searching.
---| "EMERGING"     # Warden emerging.
---| "DIGGING"      # Warden leaving.

---A valid block side.
---@alias EntityAPI.blockSide
---| "north"
---| "east"
---| "south"
---| "west"
---| "up"
---| "down"


---==============================================================================================---
---  LIVIINGENTITYAPI extends ENTITYAPI                                                          ---
---==============================================================================================---

---A valid entity category.
---@alias LivingEntityAPI.category string
---| "UNDEFINED" # Default.
---| "UNDEAD"    # Undead, takes more damage from Smite.
---| "ARTHROPOD" # Spider-like, takes more damage from Bane of Arthropods.
---| "WATER"     # Aquatic, takes more damage from Impaling.
---| "ILLAGER"   # Illager faction, takes part in village raids.

---A valid hand for an entity.
---@alias LivingEntityAPI.hand
---| "MAIN_HAND" # The entity's main hand.
---| "OFF_HAND"  # The entity's off hand.


---==============================================================================================---
---  PLAYERAPI extends LIVIINGENTITYAPI extends ENTITYAPI                                        ---
---==============================================================================================---

---A valid gamemode for a player.
---@alias PlayerAPI.gamemode
---| "SURVIVAL"  # Survival.
---| "CREATIVE"  # Creative.
---| "ADVENTURE" # Adventure.
---| "SPECTATOR" # Spectator.

---A valid model type for a player's vanilla playermodel.
---@alias PlayerAPI.modelType
---| "DEFAULT" # Steve model.
---| "SLIM"    # Alex model.

---A valid secondary layer for a player's skin.
---@alias PlayerAPI.skinLayer
---| "HAT"             # Head layer.
---| "JACKET"          # Body layer.
---| "LEFT_SLEEVE"     # Left arm layer.
---| "RIGHT_SLEEVE"    # Right arm layer.
---| "LEFT_PANTS_LEG"  # Left leg layer.
---| "LEFT_PANTS"      # Alias for `"LEFT_PANTS_LEG"`.
---| "RIGHT_PANTS_LEG" # Right leg layer.
---| "RIGHT_PANTS"     # Alias for `"RIGHT_PANTS_LEG"`.
---| "CAPE"            # Cape.
