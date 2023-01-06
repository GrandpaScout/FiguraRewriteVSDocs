---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  MODELPART                                                                                   ---
---==============================================================================================---

---A valid parent type for a model part.
---@alias ModelPart.parentType
---| "None"                 # Follow the player.
---| "NONE"                 # Alias for `"None"`
---| "Head"                 # Follow the player's head.
---| "HEAD"                 # Alias for `"Head"`
---| "Body"                 # Follow the player's body.
---| "BODY"                 # Alias for `"Body"`
---| "LeftArm"              # Follow the player's left arm.
---| "LEFT_ARM"             # Alias for `"LeftArm"`
---| "RightArm"             # Follow the player's right arm.
---| "RIGHT_ARM"            # Alias for `"LeftArm"`
---| "LeftLeg"              # Follow the player's left leg.
---| "LEFT_LEG"             # Alias for `"LeftLeg"`
---| "RightLeg"             # Follow the player's right leg.
---| "RIGHT_LEG"            # Alias for `"RightLeg"`
---| "LeftElytra"           # Follow the player's left elytra wing.
---| "LEFT_ELYTRA"          # Alias for `"LeftElytra"`
---| "LeftElytron"          # Alias for `"LeftElytra"`
---| "LEFT_ELYTRON"         # Alias for `"LeftElytra"`
---| "RightElytra"          # Follow the player's right elytra wing.
---| "RIGHT_ELYTRA"         # Alias for `"RightElytra"`
---| "RightElytron"         # Alias for `"RightElytra"`
---| "RIGHT_ELYTRON"        # Alias for `"RightElytra"`
---| "Cape"                 # Follow the player's cape.
---| "CAPE"                 # Alias for `"Cape"`
---| "World"                # Appear as a world object.
---| "WORLD"                # Alias for `"World"`
---| "Hud"                  # Appear on the HUD.
---| "HUD"                  # Alias for `"Hud"`
---| "Gui"                  # Alias for `"Hud"`
---| "GUI"                  # Alias for `"Hud"`
---| "Camera"               # Face the viewing client's camera.
---| "CAMERA"               # Alias for `"Camera"`
---| "Skull"                # Replace the player's skull block.
---| "SKULL"                # Alias for `"Skull"`
---| "\u{1F480}"            # Alias for `"Skull"`
---| [[\xF0\x9F\x92\x80]]   # Alias for `"Skull"` ([U+1F480] 💀, as UTF-8 bytes)
---| "LeftItemPivot"        # Sets a new left item pivot point.
---| "LEFT_ITEM_PIVOT"      # Alias for `"LeftItemPivot"`
---| "RightItemPivot"       # Sets a new right item pivot point.
---| "RIGHT_ITEM_PIVOT"     # Alias for `"RightItemPivot"`
---| "LeftSpyglassPivot"    # Sets a new left spyglass pivot point.
---| "LEFT_SPYGLASS_PIVOT"  # Alias for `"LeftSpyglassPivot"`
---| "RightSpyglassPivot"   # Sets a new right spyglass pivot point.
---| "RIGHT_SPYGLASS_PIVOT" # Alias for `"RightSpyglassPivot"`
---| "HelmetItemPivot"      # Sets a new helmet item pivot point.
---| "HELMET_ITEM_PIVOT"    # Alias for `"HelmetItemPivot"`
---| "LeftParrotPivot"      # Sets a new left parrot pivot point.
---| "LEFT_PARROT_PIVOT"    # Alias for `"LeftParrotPivot"`
---| "RightParrotPivot"     # Sets a new right parrot pivot point.
---| "RIGHT_PARROT_PIVOT"   # Alias for `"RightParrotPivot"`

---A valid render type for a model part.
---@alias ModelPart.renderType
---| "NONE"             # Disable rendering.
---| "CUTOUT"           # Default render mode. Used for simple opaque and transparent parts.
---| "CUTOUT_CULL"      # Similar to `"CUTOUT"`, but inside faces do not render.
---| "TRANSLUCENT"      # Used to allow translucency.
---| "TRANSLUCENT_CULL" # Similar to `"TRANSLUCENT"`, but inside faces do not render.
---| "EMISSIVE"         # Default secondary render mode. Used for emissive textures.
---| "EMISSIVE_SOLID"   # Similar to `"EMISSIVE"`, but color is not additive.
---| "END_PORTAL"       # Applies the end portal field effect.
---| "END_GATEWAY"      # Similar to `"END_PORTAL"`, but contains another layer of blue "particles".
---| "GLINT"            # Applies the enchantment glint effect.
---| "GLINT2"           # Similar to `"GLINT"`, but with only one denser glint layer.
---| "LINES"            # Adds a white outline.
---| "LINES_STRIP"      # Similar to `"LINES"`, but also adds some more lines in-between.

---A valid type for a model part.
---@alias ModelPart.type
---| "GROUP" # A Blockbench group, .bbmodel file, or system folder.
---| "CUBE"  # A Blockbench cube.
---| "MESH"  # A Blockbench mesh.

---A valid texture type for a model part.
---@alias ModelPart.textureType
---| "PRIMARY"   # The primary texture.
---| "SECONDARY" # The secondary texture. (Usually the emissive texture.)
---| "NORMAL"    # The normal map.
---| "SPECULAR"  # The specular map.
---| "SKIN"      # The player's skin.
---| "CAPE"      # The player's cape.
---| "ELYTRA"    # The base elytra texture. To use the player's elytra, use `"CAPE"`.
---| "RESOURCE"  # A Minecraft resource.
---| "CUSTOM"    # A custom Figura texture.


---==============================================================================================---
---  RENDERTASK                                                                                  ---
---==============================================================================================---

---A union of all RenderTask sub-types.
---<!--
---@alias RenderTask.any BlockTask|ItemTask|TextTask


---==============================================================================================---
---  ITEMTASK extends RENDERTASK                                                                 ---
---==============================================================================================---

---A valid render type for an item task.
---@alias ItemTask.renderType
---| "NONE"                    # No transformations.
---| "FIRST_PERSON_LEFT_HAND"  # First-person, left hand.
---| "FIRST_PERSON_RIGHT_HAND" # First-person, right hand.
---| "THIRD_PERSON_LEFT_HAND"  # Third-person, left hand.
---| "THIRD_PERSON_RIGHT_HAND" # Third-person, right hand.
---| "HEAD"                    # Wearing on head.
---| "GUI"                     # In GUI slot.
---| "GROUND"                  # Dropped item.
---| "FIXED"                   # In item frame.
