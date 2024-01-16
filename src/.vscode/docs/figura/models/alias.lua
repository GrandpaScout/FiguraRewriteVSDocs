---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  MODELPART                                                                                                       ---
---==================================================================================================================---

---@alias ModelPart.renderFunc fun(delta?: number, context?: Event.Render.context, part?: ModelPart)

---@alias ModelPart.parentType
---| "None"                   # Follow the player.
---| "NONE"                   # Alias for `"None"`.
---| "Model"                  # Alias for `"None"`.
---| "MODEL"                  # Alias for `"None"`.
---| "Head"                   # Follow the player's head.
---| "HEAD"                   # Alias for `"Head"`.
---| "Body"                   # Follow the player's body.
---| "BODY"                   # Alias for `"Body"`.
---| "LeftArm"                # Follow the player's left arm.
---| "LEFT_ARM"               # Alias for `"LeftArm"`.
---| "RightArm"               # Follow the player's right arm.
---| "RIGHT_ARM"              # Alias for `"LeftArm"`.
---| "LeftLeg"                # Follow the player's left leg.
---| "LEFT_LEG"               # Alias for `"LeftLeg"`.
---| "RightLeg"               # Follow the player's right leg.
---| "RIGHT_LEG"              # Alias for `"RightLeg"`.
---| "LeftElytra"             # Follow the player's left elytra wing.
---| "LEFT_ELYTRA"            # Alias for `"LeftElytra"`.
---| "LeftElytron"            # Alias for `"LeftElytra"`.
---| "LEFT_ELYTRON"           # Alias for `"LeftElytra"`.
---| "RightElytra"            # Follow the player's right elytra wing.
---| "RIGHT_ELYTRA"           # Alias for `"RightElytra"`.
---| "RightElytron"           # Alias for `"RightElytra"`.
---| "RIGHT_ELYTRON"          # Alias for `"RightElytra"`.
---| "Cape"                   # Follow the player's cape.
---| "CAPE"                   # Alias for `"Cape"`.
---| "World"                  # Appear as a world object.
---| "WORLD"                  # Alias for `"World"`.
---| "Hud"                    # Appear on the HUD.
---| "HUD"                    # Alias for `"Hud"`.
---| "HeadsUpDisplay"         # Alias for `"Hud"`.
---| "Gui"                    # Alias for `"Hud"`.
---| "GUI"                    # Alias for `"Hud"`.
---| "GraphicalUserInterface" # Alias for `"Hud"`.
---| "JraficalUserInterface"  # Alias for `"Hud"`.
---| "Camera"                 # Face the viewing client's camera.
---| "CAMERA"                 # Alias for `"Camera"`
---
---| "Skull"                  # Replaces the player's skull block.
---| "SKULL"                  # Alias for `"Skull"`.
---| "\u{2620}"               # Alias for `"Skull"`.
---| [[\xE2\x98\xA0]]         # Alias for `"Skull"`. ([U+2620] ☠, as UTF-8 bytes)
---| "Portrait"               # Replaces the head icon in the tab list and in the permissions screen.
---| "PORTRAIT"               # Alias for `"Portrait"`.
---| "Arrow"                  # Replaces the player's shot arrows.
---| "ARROW"                  # Alias for `"Arrow"`.
---Prepares this group to replace an equipped item. This must be returned by an `ITEM_RENDER` event for it to work.
---| "Item"
---| "ITEM"                   # Alias for `"Item"`.
---
---| "HelmetPivot"            # Sets a new helmet armor pivot point.
---| "HELMET_PIVOT"           # Alias for `"HelmetPivot"`.
---| "HelmetItemPivot"        # Sets a new helmet item pivot point.
---| "HELMET_ITEM_PIVOT"      # Alias for `"HelmetItemPivot"`.
---| "ChestplatePivot"        # Sets a new chestplate armor pivot point.
---| "CHESTPLATE_PIVOT"       # Alias for `"ChestplatePivot"`.
---| "LeftShoulderPivot"      # Sets a new left shoulder armor pivot point.
---| "LEFT_SHOULDER_PIVOT"    # Alias for `"LeftShoulderPivot"`.
---| "RightShoulderPivot"     # Sets a new right shoulder armor pivot point.
---| "RIGHT_SHOULDER_PIVOT"   # Alias for `"RightShoulderPivot"`.
---| "LeggingsPivot"          # Sets a new leggings belt armor pivot point.
---| "LEGGINGS_PIVOT"         # Alias for `"LeggingsPivot"`.
---| "LeftLeggingPivot"       # Sets a new left legging armor pivot point.
---| "LEFT_LEGGING_PIVOT"     # Alias for `"LeftLeggingPivot"`.
---| "RightLeggingPivot"      # Sets a new right legging armor pivot point.
---| "RIGHT_LEGGING_PIVOT"    # Alias for `"RightLeggingPivot"`.
---| "LeftBootPivot"          # Sets a new left boot armor pivot point.
---| "LEFT_BOOT_PIVOT"        # Alias for `"LeftBootPivot"`.
---| "RightBootPivot"         # Sets a new right boot armor pivot point.
---| "RIGHT_BOOT_PIVOT"       # Alias for `"RightBootPivot"`.
---
---| "LeftItemPivot"          # Sets a new left item pivot point.
---| "LEFT_ITEM_PIVOT"        # Alias for `"LeftItemPivot"`.
---| "RightItemPivot"         # Sets a new right item pivot point.
---| "RIGHT_ITEM_PIVOT"       # Alias for `"RightItemPivot"`.
---| "LeftSpyglassPivot"      # Sets a new left spyglass pivot point.
---| "LEFT_SPYGLASS_PIVOT"    # Alias for `"LeftSpyglassPivot"`.
---| "RightSpyglassPivot"     # Sets a new right spyglass pivot point.
---| "RIGHT_SPYGLASS_PIVOT"   # Alias for `"RightSpyglassPivot"`.
---| "LeftParrotPivot"        # Sets a new left parrot pivot point.
---| "LEFT_PARROT_PIVOT"      # Alias for `"LeftParrotPivot"`.
---| "RightParrotPivot"       # Sets a new right parrot pivot point.
---| "RIGHT_PARROT_PIVOT"     # Alias for `"RightParrotPivot"`.

---@alias ModelPart.renderType
---| "NONE"             # Disable rendering.
---| "CUTOUT"           # Used for simple opaque and transparent parts.
---| "CUTOUT_CULL"      # Similar to `"CUTOUT"`, but inside faces do not render.
---| "TRANSLUCENT"      # Default primary render mode. Used to allow translucency.
---| "TRANSLUCENT_CULL" # Similar to `"TRANSLUCENT"`, but inside faces do not render.
---| "EMISSIVE"         # Default secondary render mode. Used for emissive textures.
---| "EMISSIVE_SOLID"   # Similar to `"EMISSIVE"`, but color is not additive.
---| "EYES"             # Used to apply the default emissive type even if shaders are enabled.
---| "END_PORTAL"       # Applies the end portal field effect.
---| "END_GATEWAY"      # Similar to `"END_PORTAL"`, but contains another layer of blue "particles".
---| "TEXTURED_PORTAL"  # Similar to `"END_PORTAL"`, but the part's texture is used instead.
---| "GLINT"            # Applies the enchantment glint effect.
---| "GLINT2"           # Similar to `"GLINT"`, but with only one denser glint layer.
---| "TEXTURED_GLINT"   # Similar to `"GLINT"`, but the part's texture is used instead.
---| "LINES"            # Converts the layer into an outline.
---| "LINES_STRIP"      # Similar to `"LINES"`, but acts like a wireframe instead.
---| "SOLID"            # Converts the layer into a solid white color.
---| "BLURRY"           # Makes the texture blurry.

---@alias ModelPart.type
---| "GROUP" # A Blockbench group, .bbmodel file, or system folder.
---| "CUBE"  # A Blockbench cube.
---| "MESH"  # A Blockbench mesh.

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
---@alias RenderTask.any BlockTask | ItemTask | TextTask


---==============================================================================================---
---  ITEMTASK extends RENDERTASK                                                                 ---
---==============================================================================================---

---@alias ItemTask.renderMode
---| "NONE"                    # No transformations.
---| "FIRST_PERSON_LEFT_HAND"  # First-person, left hand.
---| "FIRST_PERSON_RIGHT_HAND" # First-person, right hand.
---| "THIRD_PERSON_LEFT_HAND"  # Third-person, left hand.
---| "THIRD_PERSON_RIGHT_HAND" # Third-person, right hand.
---| "HEAD"                    # Wearing on head.
---| "GUI"                     # In GUI slot.
---| "GROUND"                  # Dropped item.
---| "FIXED"                   # In item frame.


---==============================================================================================---
---  TEXTTASK extends RENDERTASK                                                                 ---
---==============================================================================================---


