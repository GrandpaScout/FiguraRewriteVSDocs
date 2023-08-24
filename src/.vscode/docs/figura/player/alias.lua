---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ENTITY                                                                                                          ---
---==================================================================================================================---

---A union of all Entity sub-types.
---<!--
---@alias Entity.any Entity | LivingEntity | Player

---@alias Entity.slot
---| 1 # Main Hand
---| 2 # Off Hand
---| 3 # Boots
---| 4 # Leggings
---| 5 # Chestplate
---| 6 # Helmet

---@alias Entity.permissionLevel
---| 0 # No permissions
---| 1 # Bypass spawn protection
---| 2 # Use cheat commands
---| 3 # Use player management commands
---| 4 # Use server management commands

---@alias Entity.pose
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

---@alias Entity.blockSide
---| "north"
---| "east"
---| "south"
---| "west"
---| "up"
---| "down"


---==================================================================================================================---
---  LIVINGENTITY extends ENTITY                                                                                     ---
---==================================================================================================================---

---@alias LivingEntity.category string
---| "UNDEFINED" # Default.
---| "UNDEAD"    # Undead, takes more damage from Smite.
---| "ARTHROPOD" # Spider-like, takes more damage from Bane of Arthropods.
---| "WATER"     # Aquatic, takes more damage from Impaling.
---| "ILLAGER"   # Illager faction, takes part in village raids.

---@alias LivingEntity.hand
---| "MAIN_HAND" # The entity's main hand.
---| "OFF_HAND"  # The entity's off hand.


---==================================================================================================================---
---  PLAYER extends LIVINGENTITY extends ENTITY                                                                      ---
---==================================================================================================================---

---@alias Player.gamemode
---| "SURVIVAL"  # Survival.
---| "CREATIVE"  # Creative.
---| "ADVENTURE" # Adventure.
---| "SPECTATOR" # Spectator.

---@alias Player.modelType
---| "DEFAULT" # Steve model.
---| "SLIM"    # Alex model.

---@class Player.teamInfo
---The internal name of this team
---@field name string
---The name that is displayed to players.
---@field display_name string
---The text that appears before the names of players on this team.
---@field prefix string
---The text that appears after the names of players on this team.
---@field suffix string
---This team's color. Affects name and glow outline color.
---
---`"reset"` is the "unassigned" color.
---@field color
---| "aqua"
---| "black"
---| "blue"
---| "dark_aqua"
---| "dark_blue"
---| "dark_gray"
---| "dark_green"
---| "dark_purple"
---| "dark_red"
---| "gold"
---| "gray"
---| "green"
---| "light_purple"
---| "red"
---| "reset"
---| "white"
---| "yellow"
---Whether this team can attack teammates.
---@field friendly_fire boolean
---Whether this team can see invisible teammates.
---@field see_friendly_invisibles boolean
---When players in this team should push other entities.
---@field collision_rule
---| "always"
---| "never"
---| "pushOtherTeams" # Only push teammates
---| "pushOwnTeam"    # Only push non-teammates
---When death messages of players in this team should be printed to chat.
---@field death_message_visibility
---| "always"
---| "never"
---| "hideForOwnTeam"    # Only show to non-teammates
---| "hideForOtherTeams" # Only show to teammates
---When nametags of players in this team should be visible.
---@field nametag_visibility
---| "always"
---| "never"
---| "hideForOwnTeam"    # Only show to non-teammates
---| "hideForOtherTeams" # Only show to teammates

---@alias Player.skinLayer
---| "HAT"             # Head layer.
---| "JACKET"          # Body layer.
---| "LEFT_SLEEVE"     # Left arm layer.
---| "RIGHT_SLEEVE"    # Right arm layer.
---| "LEFT_PANTS_LEG"  # Left leg layer.
---| "LEFT_PANTS"      # Alias for `"LEFT_PANTS_LEG"`.
---| "RIGHT_PANTS_LEG" # Right leg layer.
---| "RIGHT_PANTS"     # Alias for `"RIGHT_PANTS_LEG"`.
---| "CAPE"            # Cape.
