---@meta

---@diagnostic disable: duplicate-set-field

--TODO: Review all descriptions to see if they fit the style guide.

---==============================================================================================---
---  WORLDAPI                                                                                    ---
---==============================================================================================---

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


---==============================================================================================---
---  BIOME                                                                                       ---
---==============================================================================================---

---A valid precipitation type.
---@alias Biome.precipitation
---| "NONE" # No precipitation.
---| "RAIN" # Rain.
---| "SNOW" # Snow.


---==============================================================================================---
---  BLOCKSTATE                                                                                  ---
---==============================================================================================---

---A valid block material.
---
---These materials use intermediary names.
---@alias BlockState.material string
---| "field_15913" # Cobwebs (`COBWEB`)
---| "field_15914" # Stone-like (`STONE`)
---| "field_15915" # Bubble Column (`BUBBLE_COLUMN`)
---| "field_15916" # Sand-like (`SAND`)
---| "field_15917" # Sponge (`SPONGE`)
---| "field_15918" # Redstone Lamp (`BUILDABLE_GLASS`)
---| "field_15919" # Portal (`PORTAL`)
---| "field_15920" # Water (`WATER`)
---| "field_15921" # Moss Block (`MOSS`)
---| "field_15922" # Lava (`LAVA`)
---| "field_15923" # Leafy (`LEAVES`)
---| "field_15924" # Small Decoration (`DECORATION`)
---| "field_15925" # Cactus (`CACTUS`)
---| "field_15926" # Replacable Underwater Plant (`REPLACEABLE_WATER_PLANT`)
---| "field_15927" # Structure Void (`STRUCTURAL_AIR`)
---| "field_15928" # Dense Ice (`ICE_SOLID`)
---| "field_15930" # Egg (`EGG`)
---| "field_15931" # Wooly (`WOOL`)
---| "field_15932" # Wooden (`WOOD`)
---| "field_15933" # Piston (`PISTON`)
---| "field_15934" # Snow Block (`SNOW`)
---| "field_15935" # Plant (`PLANT`)
---| "field_15936" # Clay / Organic (`CLAY`)
---| "field_15937" # Cake (`CAKE`)
---| "field_15938" # Bamboo Sapling (`BAMBOO_SAPLING`)
---| "field_15941" # Dirt (`SOIL`)
---| "field_15942" # Glass (`GLASS`)
---| "field_15943" # Fire (`FIRE`)
---| "field_15945" # Plant Block (`GRASS`)
---| "field_15946" # Bamboo (`BAMBOO`)
---| "field_15947" # Underwater Plants (`WATER_PLANT`)
---| "field_15948" # Snow Layers (`TOP_SNOW`)
---| "field_15949" # Heavy Metallic (`HEAVY_METAL`)
---| "field_15952" # Barrier (`BARRIER`)
---| "field_15953" # Metallic (`METAL`)
---| "field_15954" # Vegetable Blocks (`VEGETABLE`)
---| "field_15955" # Explosives (`EXPLOSIVE`)
---| "field_15956" # Misc Plants (`REPLACEABLE_PLANT`)
---| "field_15957" # Carpet (`CLOTH_DECORATION`)
---| "field_15958" # Weak Ice (`ICE`)
---| "field_15959" # Air (`AIR`)
---| "field_17008" # Shulker Box (`SHULKER_BOX`)
---| "field_22223" # Nether Wooden (`NETHER_WOOD`)
---| "field_26708" # Nether Plants (`REPLACEABLE_FIREPROOF_PLANT`)
---| "field_27340" # Amethyst (`AMETHYST`)
---| "field_27890" # Powder Snow (`POWDER_SNOW`)
---| "field_28242" # Sculk (`SCULK`)
---| "field_37828" # Frogspawn (`FROGSPAWN`)
---| "field_38977" # Frog Light (`FROG_LIGHT`)

---A block sound table.
---@class BlockState.Sounds
---The sound that plays when this block is broken.
---@field break Minecraft.soundID
---The sound that plays when something falls on this block.
---@field fall Minecraft.soundID
---The sound that plays when this block is hit.
---@field hit Minecraft.soundID
---The pitch these sounds will play at.
---@field pitch number
---The sound that plays when this block is placed.
---
---*No, that is not a typo. This is the actual key used in Figura.*
---@*error This is probably meant to be "place"
---@field plate Minecraft.soundID
---The sound that plays when this block is stepped on.
---@field step Minecraft.soundID
---The volume these sounds will play at.
---@field volume number

---==============================================================================================---
---  ITEMSTACK                                                                                   ---
---==============================================================================================---

---A valid item rarity.
---@alias ItemStack.rarity
---| "COMMON"   # White.
---| "UNCOMMON" # Yellow.
---| "RARE"     # Aqua.
---| "EPIC"     # Light purple.

---A valid item use action.
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
