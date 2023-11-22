---@meta _
---@diagnostic disable


---@class «deprecated»

-- THIS FILE IS FOR DEPRECATIONS COMING FROM PREWRITE. THIS IS NOT FOR DEPRECATIONS IN ANY OF THE
-- REWRITE VERSIONS OF FIGURA.


---==============================================================================================---
---  ACTION_WHEEL                                                                                ---
---==============================================================================================---

---@class ActionWheelAPI
local ActionWheelAPI

---@type «deprecated»
---The action wheel no longer uses slots. It now uses pages.
---
---See `:newPage()` for more info.
---@deprecated [[Complex, hover for more info]]
ActionWheelAPI.SLOT_1 = nil

---@type «deprecated»
---The action wheel no longer uses slots. It now uses pages.
---
---See `:newPage()` for more info.
---@deprecated [[Complex, hover for more info]]
ActionWheelAPI.SLOT_2 = nil

---@type «deprecated»
---The action wheel no longer uses slots. It now uses pages.
---
---See `:newPage()` for more info.
---@deprecated [[Complex, hover for more info]]
ActionWheelAPI.SLOT_3 = nil

---@type «deprecated»
---The action wheel no longer uses slots. It now uses pages.
---
---See `:newPage()` for more info.
---@deprecated [[Complex, hover for more info]]
ActionWheelAPI.SLOT_4 = nil

---@type «deprecated»
---The action wheel no longer uses slots. It now uses pages.
---
---See `:newPage()` for more info.
---@deprecated [[Complex, hover for more info]]
ActionWheelAPI.SLOT_5 = nil

---@type «deprecated»
---The action wheel no longer uses slots. It now uses pages.
---
---See `:newPage()` for more info.
---@deprecated [[Complex, hover for more info]]
ActionWheelAPI.SLOT_6 = nil

---@type «deprecated»
---The action wheel no longer uses slots. It now uses pages.
---
---See `:newPage()` for more info.
---@deprecated [[Complex, hover for more info]]
ActionWheelAPI.SLOT_7 = nil

---@type «deprecated»
---The action wheel no longer uses slots. It now uses pages.
---
---See `:newPage()` for more info.
---@deprecated [[Complex, hover for more info]]
ActionWheelAPI.SLOT_8 = nil

---@type «deprecated»
---`.getLeftSize()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ActionWheelAPI.getLeftSize = nil

---@type «deprecated»
---`.getRightSize()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ActionWheelAPI.getRightSize = nil

---@type «deprecated»
---`.getSelectedSlot()` is deprecated. To get highlighted slot, use `:getSelected()`.
---@deprecated [[Replace with ":getSelected()"]]
ActionWheelAPI.getSelectedSlot = nil

---@type «deprecated»
---`.runAction()` is deprecated. To run an action, use `:execute()`.
---@deprecated [[Replace with ":execute()"]]
ActionWheelAPI.runAction = nil

---@type «deprecated»
---`.setLeftSize()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ActionWheelAPI.setLeftSize = nil

---@type «deprecated»
---`.setRightSize()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ActionWheelAPI.setRightSize = nil

---@type «deprecated»
---`.isOpen()` is deprecated. To get if the action wheel is visible, use `:isEnabled()`.
---@deprecated [[Replace with ":isEnabled()"]]
ActionWheelAPI.isOpen = nil


---==============================================================================================---
---  ANIMATION                                                                                   ---
---==============================================================================================---

---@class Animation
local Animation

---@type «deprecated»
---`.cease()` is deprecated. To stop animations, use `:stop()`.
---@deprecated [[Replace with ":stop()"]]
Animation.cease = nil

---@type «deprecated»
---`.getBlendTime()` is deprecated. It has no built-in replacement.
---
---Library replacements:
---* ### [`❰GSAnimBlend❱` Animation Blending](https://discord.com/channels/1129805506354085959/1135537784543776829)
---@deprecated [[Has library replacement]]
Animation.getBlendTime = nil

---@type «deprecated»
---`.getBlendWeight()` is deprecated. To get the blend weight, use `:getBlend()`.
---@deprecated [[Replace with ":getBlend()"]]
Animation.getBlendWeight = nil

---@type «deprecated»
---`.getLoopMode()` is deprecated. To get the loop mode, use `:getLoop()`.
---@deprecated [[Replace with ":getLoop()"]]
Animation.getLoopMode = nil

---@type «deprecated»
---`.getOverride()` is deprecated. It now has three forms.
---* `:getOverridePos()` for getting the override of the position channel,
---* `:getOverrideRot()` for getting the override of the rotation channel,
---* `:getOverrideScale()` for getting the override of the scale channel.
---@deprecated [[Complex, hover for more info]]
Animation.getOverride = nil

---@type «deprecated»
---`.getReplace()` is deprecated. To get vanilla override, use one of the following:
---* `:getOverridePos()` for getting the override of the position channel,
---* `:getOverrideRot()` for getting the override of the rotation channel,
---* `:getOverrideScale()` for getting the override of the scale channel.
---@deprecated [[Complex, hover for more info]]
Animation.getReplace = nil

---@type «deprecated»
---`.getStartOffset()` is deprecated. To get start offset, use `:getOffset()`.
---@deprecated [[Replace with ":getOffset()"]]
Animation.getStartOffset = nil

---@type «deprecated»
---`.setBlendTime()` is deprecated. It has no built-in replacement.
---
---Library replacements:
---* ### [`❰GSAnimBlend❱` Animation Blending](https://discord.com/channels/1129805506354085959/1135537784543776829)
---@deprecated [[Has library replacement]]
Animation.setBlendTime = nil

---@type «deprecated»
---`.setBlendWeight()` is deprecated. To set blend weight, use `:setBlend()`.
---@deprecated [[Replace with ":setBlend()"]]
Animation.setBlendWeight = nil

---@type «deprecated»
---`.setLoopMode()` is deprecated. To set loop mode, use `:setLoop()`.
---@deprecated [[Replace with ":setLoop()"]]
Animation.setLoopMode = nil

---@type «deprecated»
---`.setReplace()` is deprecated. To set vanilla override, use `:setOverride()`.
---@deprecated [[Replace with ":setOverride()"]]
Animation.setReplace = nil

---@type «deprecated»
---`.setPlayState()` is deprecated. To set if an animation is playing, use `:setPlaying()`.
---@deprecated [[Replace with ":setPlaying()"]]
Animation.setPlayState = nil

---@type «deprecated»
---`.setStartOffset()` is deprecated. To set start offset, use `:setOffset()`.
---@deprecated [[Replace with ":setOffset()"]]
Animation.setStartOffset = nil

---@type «deprecated»
---`.start()` is deprecated. To play an animation, use `:play()`.
---@deprecated [[Replace with ":play()"]]
Animation.start = nil


---@class AnimationAPI
local AnimationTable

---@type «deprecated»
---`.ceaseAll()` is deprecated. To stop all animations, use `:stopAll()`.
---@deprecated [[Replace with ":stopAll()"]]
AnimationTable.ceaseAll = nil

---@type «deprecated»
---`.listAnimations()` is deprecated. To get a list of all animations, use `:getAnimations()`.
---@deprecated [[Replace with ":getAnimations()"]]
AnimationTable.listAnimations = nil


---@type «deprecated»
---`animation` is deprecated. To get all animations in the avatar, use `animations`.
---
---Animations are now accessed per-model by indexing `animations` with the name of the bbmodel file.  
---(To get animations from `mycoolmodel.bbmodel`, do `animations.mycoolmodel`.)
---@deprecated [[Replace with "animations.<bbmodel_name>"]]
animation = nil


---==============================================================================================---
---  BIOME                                                                                       ---
---==============================================================================================---

---@class Biome
local Biome

---@type «deprecated»
---`.getCategory()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Biome.getCategory = nil

---@type «deprecated»
---`.getID()` is deprecated. To get this biome's id, use `.id`.
---@deprecated [[Replace with ".id"]]
Biome.getID = nil


---@type «deprecated»
---`biome` is deprecated. Replace the following:
---* `biome.getBiome()` with `world.getBiome()`
---@deprecated [[Complex, hover for more info]]
biome = nil


---==============================================================================================---
---  BLOCK                                                                                       ---
---==============================================================================================---

---@class BlockState
local BlockState

---@type «deprecated»
---`["figura$block_state"]` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
BlockState["figura$block_state"] = nil

---@type «deprecated»
---`.name` is deprecated. To get this block's id, read `.id`.
---@deprecated [[Replace with ".id"]]
BlockState.name = nil

---@type «deprecated»
---`.getBlockTags()` is deprecated. To get this block's block tags, use `:getTags()`.
---@deprecated [[Replace with ":getTags()"]]
BlockState.getBlockTags = nil

---@type «deprecated»
---`.getMaterial()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
BlockState.getMaterial = nil

---@type «deprecated»
---`.getSlipperiness()` is deprecated. To get this block's friction, use `:getFriction()`.
---@deprecated [[Replace with ":getFriction()"]]
BlockState.getSlipperiness = nil

---@type «deprecated»
---`.getSoundGroup()` is deprecated. To get the basic sounds this block makes, use `:getSounds()`.
---@deprecated [[Replace with ":getSounds()"]]
BlockState.getSoundGroup = nil

---@type «deprecated»
---`.isCollidable()` is deprecated. To get if this block can be collided with, use `:hasCollision()`.
---@deprecated [[Replace with ":hasCollision()"]]
BlockState.isCollidable = nil


---@type «deprecated»
---`block_state` is deprecated. Replace the following:
---* `block_state.createBlock()` with `world.newBlock()`.
---@deprecated [[Complex, hover for more info]]
block_state = nil


---==============================================================================================---
---  CAMERA                                                                                      ---
---==============================================================================================---

---@type «deprecated»
---`camera` is deprecated. Replace the following: 
---* <code>camera.‹<small><sup>FIRST_PERSON</sup></small>⁄<small><small>THIRD_PERSON</small></small>›.getPivot()</code>
---  with `renderer:getCameraOffsetPivot()`
---* <code>camera.‹<small><sup>FIRST_PERSON</sup></small>⁄<small><small>THIRD_PERSON</small></small>›.getRot()</code>
---  with `renderer:getCameraOffsetRot()`
---* <code>camera.‹<small><sup>FIRST_PERSON</sup></small>⁄<small><small>THIRD_PERSON</small></small>›.getPos()</code>
---  with `renderer:getCameraPos()`
---* <code>camera.‹<small><sup>FIRST_PERSON</sup></small>⁄<small><small>THIRD_PERSON</small></small>›.setPivot()</code>
---  with `renderer:offsetCameraPivot()`
---* <code>camera.‹<small><sup>FIRST_PERSON</sup></small>⁄<small><small>THIRD_PERSON</small></small>›.setRot()</code>
---  with `renderer:offsetCameraRot()`
---* <code>camera.‹<small><sup>FIRST_PERSON</sup></small>⁄<small><small>THIRD_PERSON</small></small>›.setPos()</code>
---  with `renderer:setCameraPos()`
---@deprecated [[Complex, hover for more info]]
camera = nil


---==============================================================================================---
---  CHAT                                                                                        ---
---==============================================================================================---

---@type «deprecated»
---`chat` is deprecated. Replace the following:
---* `chat.getMessage()` with `host:getChatMessage()`
---* `chat.isOpen()` with `host:isChatOpen()`
---* `chat.sendMessage()` with `host:sendChatMessage()`/`host:sendCommandMessage()`
---* `chat.getInputText()` with `host:getChatText()`
---
---`chat.setFiguraCommandPrefix()` does not have a direct counterpart, however its functionality can be emulated with
---the `CHAT_SEND_MESSAGE` event.
---@deprecated [[Complex, hover for more info]]
chat = nil


---==============================================================================================---
---  CLIENT                                                                                      ---
---==============================================================================================---

---@class ClientAPI
local ClientAPI

---@type «deprecated»
---`.checkVersion()` is deprecated. To compare versions, use `.compareVersions()`.
---@deprecated [[Replace with ".compareVersions()"]]
ClientAPI.checkVersion = nil

---@type «deprecated»
---`.clearTitle()` is deprecated. To clear the title, see `host:clearTitle()`.
---@deprecated [[Replace with "host:clearTitle()"]]
ClientAPI.clearTitle = nil

---@type «deprecated»
---`.getActionBar()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ClientAPI.getActionBar = nil

---@type «deprecated»
---`.getActiveShader()` is deprecated. To get the current shader, use `.getCurrentEffect()`.
---@deprecated [[Replace with ".getCurrentEffect()"]]
ClientAPI.getActiveShader = nil

---@type «deprecated»
---`.getChunksCount()` is deprecated. To get the chunk info line, use `.getChunkStatistics()`.
---@deprecated [[Replace with ".getChunkStatistics()"]]
ClientAPI.getChunksCount = nil

---@type «deprecated»
---`.getCrosshairEnabled()` is deprecated. To get the crosshair state, use `renderer:shouldRenderCrosshair()`.
---@deprecated [[Replace with "renderer:shouldRenderCrosshair()"]]
ClientAPI.getCrosshairEnabled = nil

---@type «deprecated»
---`.getCrosshairPos()` is deprecated. To get the crosshair offset, use `renderer:getCrosshairOffset()`.
---@deprecated [[replace with "renderer:getCrosshairOffset()"]]
ClientAPI.getCrosshairPos = nil

---@type «deprecated»
---`.getIrisShadersEnabled()` is deprecated. To get Iris shader state, use `.hasIrisShader()`.
---@deprecated [[Replace with ".hasIrisShader()"]]
ClientAPI.getIrisShadersEnabled = nil

---@type «deprecated»
---`.getMemoryInUse()` is deprecated. To get used memory, use `.getUsedMemory()`.
---@deprecated [[Replace with ".getUsedMemory()"]]
ClientAPI.getMemoryInUse = nil

---@type «deprecated»
---`.getMouseScroll()` is deprecated. To get mouse scroll, use the `MOUSE_SCROLL` event.
---@deprecated [[Replace with "MOUSE_SCROLL" event]]
ClientAPI.getMouseScroll = nil

---@type «deprecated»
---`.getOpenScreen()` is deprecated. To get the current screen, use `host:getScreen()`.
---@deprecated [[Replace with "host:getScreen()"]]
ClientAPI.getOpenScreen = nil

---@type «deprecated»
---`.getScaleFactor()` is deprecated. To get GUI Scale factor, use `.getGuiScale()`.
---@deprecated [[Replace with ".getGuiScale()"]]
ClientAPI.getScaleFactor = nil

---@type «deprecated»
---`.getSoundCount()` is deprecated. To get sound count, use `.getSoundStatistics()`.
---@deprecated [[Replace with ".getSoundStatistics()"]]
ClientAPI.getSoundCount = nil

---@type «deprecated»
---`.getSubtitle()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ClientAPI.getSubtitle = nil

---@type «deprecated»
---`.getTitle()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ClientAPI.getTitle = nil

---@type «deprecated»
---`.isHost()` is deprecated. To get the host state, use `host:isHost()`.
---@deprecated [[Replace with "host:isHost()"]]
ClientAPI.isHost = nil

---@type «deprecated»
---`.setActionbar()` is deprecated. To set the action bar, use `host:setActionbar()`.
---@deprecated [[Replace with "host:setActionbar()"]]
ClientAPI.setActionbar = nil

---@type «deprecated»
---`.setCrosshairEnabled()` is deprecated. To set crosshair state, use `renderer:setRenderCrosshair()`.
---@deprecated [[Replace with "renderer:setRenderCrosshair()"]]
ClientAPI.setCrosshairEnabled = nil

---@type «deprecated»
---`.setCrosshairPos()` is deprecated. To move the crosshair, use `renderer:setCrosshairOffset()`.
---@deprecated [[Replace with "renderer:setCrosshairOffset()"]]
ClientAPI.setCrosshairPos = nil

---@type «deprecated»
---`.setMouseUnlocked()` is deprecated. To unlock the mouse, use `host:setUnlockCursor()`.
---@deprecated [[Replace with "host:setUnlockCursor()"]]
ClientAPI.setMouseUnlocked = nil

---@type «deprecated»
---`.setSubtitle()` is deprecated. To set the subtitle, use `host:setSubtitle()`.
---@deprecated [[Replace with "host:setSubtitle()"]]
ClientAPI.setSubtitle = nil

---@type «deprecated»
---`.setTitle()` is deprecated. To set the title, use `host:setTitle()`.
---@deprecated [[Replace with "host:setTitle()"]]
ClientAPI.setTitle = nil

---@type «deprecated»
---`.setTitleTimes()` is deprecated. To set the title times, use `host:setTitleTimes()`.
---@deprecated [[Replace with "host:setTitleTimes()"]]
ClientAPI.setTitleTimes = nil


---==============================================================================================---
---  DATA                                                                                        ---
---==============================================================================================---

---@type «deprecated»
---`data` is deprecated. Replace the following:
---* `data.getName()` with `config:getName()`
---* `data.setName()` with `config:setName()`
---* `data.load()` and `data.loadAll()` with `config:load()`
---* `data.save()` and `data.remove()` with `config:save()`
---
---The following do not have a replacement:
---* `data.allowTracking()`
---* `data.deleteFile()`
---* `data.hasTracking()`
---@deprecated [[Complex, hover for more info]]
data = nil


---==============================================================================================---
---  ENTITY                                                                                      ---
---==============================================================================================---

---@class Entity
local Entity

---@type «deprecated»
---`.getAirPercentage()` is deprecated. It has no simple replacement.
---
---To get the air percentage of the host, use `host:getAir() / player:getMaxAir()`.  
---To get the air percentage of the player viewing the avatar, use `<Viewer>:getAir() / <Viewer>:getMaxAir()`.
---@deprecated [[Complex, hover for more info]]
Entity.getAirPercentage = nil

---@type «deprecated»
---`.getAnimation()` is deprecated. To get this entity's current pose, use `:getPose()`.
---@deprecated [[Replace with ":getPose()"]]
Entity.getAnimation = nil

---@type «deprecated»
---`.getEquipmentItem()` is deprecated. To get an item this entity has equipped, use `:getItem()`.
---@deprecated [[Replace with ":getItem()"]]
Entity.getEquipmentItem = nil

---@type «deprecated»
---`.getFireTicks()` is deprecated. To get if an entity is on fire, use `:isOnFire()`.
---@deprecated [[Replace with ":isOnFire()"]]
Entity.getFireTicks = nil

---@type «deprecated»
---`.getNbtValue()` is deprecated. To get this entity's NBT table, use `:getNbt()`.
---@deprecated [[Replace with ":getNbt()"]]
Entity.getNbtValue = nil

---@type «deprecated»
---`.getTargetedBlockPos()` is deprecated. To get the block this entity is looking at, use `:getTargetedBlock()`.
---@deprecated [[Replace with ":getTargetedBlock()"]]
Entity.getTargetedBlockPos = nil

---@type «deprecated»
---`.getWorldName()` is deprecated. To get the dimension this entity is in, use `:getDimensionName()`.
---@deprecated [[Replace with ":getDimensionName()"]]
Entity.getWorldName = nil

---@type «deprecated»
---`.isHamburger()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Entity.isHamburger = nil

---@type «deprecated»
---`.isSneaky()` is deprecated. To get if this entity is sneaking, use `:isSneaking()`.
---@deprecated [[Replace with ":isSneaking()"]]
Entity.isSneaky = nil

---@type «deprecated»
---`.isTouchingWater()` is deprecated. To get if this entity is touching water, use `:isInWater()`.
---@deprecated [[Replace with ":isInWater()"]]
Entity.isTouchingWater = nil


---@class LivingEntity
local LivingEntity

---@type «deprecated»
---`.getHealthPercentage()` is deprecated. To get this entity's health as a percentage, use
---`:getHealth() / :getMaxHealth()`.
---@deprecated [[Replace with ":getHealth() / :getMaxHealth()"]]
LivingEntity.getHealthPercentage = nil

---@type «deprecated»
---`.getStatusEffect()` is deprecated. It has no simple replacement.
---
---To get the status effects of the host, use `host:getStatusEffects()`.  
---To get the status effects of the player viewing the avatar, use `<Viewer>:getStatusEffects()`.
---@deprecated [[Complex, hover for more info]]
LivingEntity.getStatusEffect = nil

---@type «deprecated»
---`.getStatusEffectTypes()` is deprecated. It has no simple replacement.
---
---To get the status effects of the host, use `host:getStatusEffects()`.  
---To get the status effects of the player viewing the avatar, use `<Viewer>:getStatusEffects()`.
---@deprecated [[Complex, hover for more info]]
LivingEntity.getStatusEffectTypes = nil

---@type «deprecated»
---`.getStuckArrowCount()` is deprecated. To get the amount of arrows stuck in this entity, use `:getArrowCount()`.
---@deprecated [[Replace with ":getArrowCount()"]]
LivingEntity.getStuckArrowCount = nil


---@class Player
local Player

---@type «deprecated»
---`.getStoredValue()` is deprecated. To get a stored avatar variable, use `:getVariable()`.
---@deprecated [[Replace with ":getVariable()"]]
Player.getStoredValue = nil

---@type «deprecated»
---`.isFlying()` is deprecated. It has no simple replacement.
---
---To get the flight status of the host, use `host:isFlying()`.  
---To get the flight status of the player viewing the avatar, use `<Viewer>:isFlying()`.
---@deprecated [[Complex, hover for more info]]
Player.isFlying = nil

---@type «deprecated»
---`.lastDamageSource()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Player.lastDamageSource = nil


---@type «deprecated»
---`storeValue()` is deprecated. To store a value on the avatar, use `avatar:store()`.
---@deprecated [[Replace with "avatar:store()"]]
storeValue = nil


---==============================================================================================---
---  ITEMSTACK                                                                                   ---
---==============================================================================================---

---@class ItemStack
local ItemStack

---@type «deprecated»
---`["figura$item_stack"]` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ItemStack["figura$item_stack"] = nil

---@type «deprecated»
---`.getCooldown()` is deprecated. To get the cooldown of an item on a specific player, use
---`<Player>:getCooldownPercent()`
---@deprecated [[Replace with "<Player>:getCooldownPercent()"]]
ItemStack.getCooldown = nil

---@type «deprecated»
---`.getItemTags()` is deprecated. To get this item's item tags, use `:getTags()`.
---@deprecated [[Replace with ":getTags()"]]
ItemStack.getItemTags = nil

---@type «deprecated»
---`.getMaxUseTime()` is deprecated. To get this item's use duration, use `:getUseDuration()`.
---@deprecated [[Replace with ":getUseDuration()"]]
ItemStack.getMaxUseTime = nil

---@type «deprecated»
---`.getType()` is deprecated. To get this item's id, use `:getID()`.
---@deprecated [[Replace with ":getID()"]]
ItemStack.getType = nil

---@type «deprecated»
---`.setCount()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ItemStack.setCount = nil

---@type «deprecated»
---`.setDamage()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ItemStack.setDamage = nil

---@type «deprecated»
---`.setTag` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ItemStack.setTag = nil


---@type «deprecated»
---`item_stack` is deprecated. Replace the following:
---* `item_stack.createItem()` with `world.newItem()`
---@deprecated [[Complex, hover for more info]]
item_stack = nil


---==============================================================================================---
---  KEYBIND                                                                                     ---
---==============================================================================================---

---@class Keybind
local Keybind

---@type «deprecated»
---`.wasPressed` is deprecated. It has no direct counterpart, however `.onPress` can be used to
---simulate the most common use for this function.
---@deprecated [[Complex, hover for more info]]
Keybind.wasPressed = nil

---@type «deprecated»
---`.reset` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Keybind.reset = nil

---@class KeybindAPI
local KeybindAPI

---@type «deprecated»
---`.getKeyList` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
KeybindAPI.getKeyList = nil

---@type «deprecated»
---`.getRegisteredKeyList` is deprecated. To get a list of all of the avatar's keybinds, use `:getKeybinds()`.
---@deprecated [[Replace with ":getKeybinds()"]]
KeybindAPI.getRegisteredKeyList = nil

---@type «deprecated»
---`.getRegisteredKeybind` is deprecated. To create a keybind that is bound to a vanilla keybind, use `:fromVanilla()`.
---@deprecated [[Replace with ":fromVanilla()"]]
KeybindAPI.getRegisteredKeybind = nil

---@type «deprecated»
---`.newKey` is deprecated. To create a new keybind, use `:newKeybind()`.
---@deprecated [[Replace with ":newKeybind()"]]
KeybindAPI.newKey = nil


---@type «deprecated»
---`keybind` is deprecated. To get the keybind API, use `keybinds`.
---@deprecated [[Replace with "keybinds"]]
keybind = nil


---==============================================================================================---
---  META                                                                                        ---
---==============================================================================================---

---@type «deprecated»
---`meta` is deprecated. Replace the following:
---* `meta.getAnimationLimit()` with `avatar:getMaxAnimationComplexity()`
---* `meta.getCanModifyNameplate()` with `avatar:canEditNameplate()`
---* `meta.getCanModifyVanilla()` with `avatar:canEditVanillaModel()`
---* `meta.getComplexityLimit()` with `avatar:getMaxComplexity()`
---* `meta.getCurrentAnimationCount()` with `avatar:getAnimationComplexity()`
---* `meta.getCurrentComplexity()` with `avatar:getComplexity()`
---* `meta.getCurrentParticleCount()` with `avatar:getRemainingParticles()`
---* `meta.getCurrentRenderCount()` with `avatar:getRenderCount()`/`avatar:getCurrentInstructions()`
---* `meta.getCurrentSoundCount()` with `avatar:getRemainingSounds()`
---* `meta.getCurrentTickCount()` with `avatar:getTickCount()`/`avatar:getCurrentInstructions()`
---* `meta.getDoesRenderOffscreen()` with `avatar:canRenderOffscreen()`
---* `meta.getFiguraVersion()` with `client.getFiguraVersion()`
---* `meta.getInitLimit()` with `avatar:getMaxInitCount()`
---* `meta.getParticleLimit()` with `avatar:getMaxParticles()`
---* `meta.getRenderLimit()` with `avatar:getMaxRenderCount()`
---* `meta.getScriptStatus()` with `avatar:hasScriptError()`
---* `meta.getSoundLimit()` with `avatar:getMaxSounds()`
---* `meta.getTextureStatus()` with `avatar:hasTexture()`
---* `meta.getTickLimit()` with `avatar:getMaxTickCount()`
---
---The following do not have a replacement:
---* `meta.getBackendStatus()`
---* `meta.getCanHaveCustomRenderLayer()`
---* `meta.getModelStatus()`
---@deprecated [[Complex, hover for more info]]
meta = nil


---==============================================================================================---
---  MODEL                                                                                       ---
---==============================================================================================---

---@class VanillaPart
local VanillaPart

---@type «deprecated»
---`.getEnabled()` is deprecated. To get the visibility of this vanilla part, use `:getVisible()`.
---@deprecated [[Replace with ":getVisible()"]]
VanillaPart.getEnabled = nil

---@type «deprecated»
---`.setEnabled()` is deprecated. To set the visibility of this vanilla part, use `:setVisible()`.  
---&nbsp;
---### IF `VANILLA_MODEL` IS PART OF A `FOR IN` LOOP...
---```lua
---for _, v in pairs(vanilla_model) do
---  v.setEnabled(<state>)
---end
---```
---The ***entire loop*** should be replaced with the following:
---```lua
---vanilla_model.PLAYER:setVisible(<state>)
---```
---@deprecated [[Complex, hover for more info]]
VanillaPart.setEnabled = nil

---@type «deprecated»
---`.getOriginEnabled()` is deprecated. To get if Minecraft is making this vanilla part visible, use
---`:setOriginVisible()`.
---@deprecated [[Replace with ":setOriginVisible()"]]
VanillaPart.getOriginEnabled = nil

---@type «deprecated»
---`.isOptionEnabled()` is deprecated. To get if a vanilla part is enabled in skin customizations, use
---`player:isSkinLayerVisible()`.
---@deprecated [[Replace with "player:isSkinLayerVisible()"]]
VanillaPart.isOptionEnabled = nil


---@class ModelPart
local ModelPart

---@type «deprecated»
---`.getEnabled()` is deprecated. To get the visibility of this part, use `:getVisible()`.
---@deprecated [[Replace with ":getVisible()"]]
ModelPart.getEnabled = nil

---@type «deprecated»
---`.setEnabled()` is deprecated. To set the visibility of this part, use `:setVisible()`.
---@deprecated [[Replace with ":setVisible()"]]
ModelPart.setEnabled = nil


---@type «deprecated»
---`.addRenderTask()` is deprecated.
---
---To create a render task, use one of the following:
---* `:newBlock()` to make a block
---* `:newItem()` to make an item
---* `:newSprite()` to make a plane
---* `:newText()` to make text
---@deprecated [[Complex, hover for more info]]
ModelPart.addRenderTask = nil

---@type «deprecated»
---`.clearAllRenderTasks()` is deprecated. To remove all render tasks, use `:removeTask()` with no `name` parameter.
---@deprecated [[Replace with ":removeTask()"]]
ModelPart.clearAllRenderTasks = nil

---@type «deprecated»
---`.getCullEnabled()` is deprecated. To get the rendering mode of this part, use `:getPrimaryRenderType()`.
---
---To get if culling is enabled on this part, use `:getPrimaryRenderType():match("_CULL$").
---@deprecated [[Replace with ":getPrimaryRenderType()"]]
ModelPart.getCullEnabled = nil

---@type «deprecated»
---`.getExtraTexEnabled()` is deprecated. To get the secondary rendering mode of this part, use
---`:getSecondaryRenderType()`.
---
---To get if the secondary texture is disabled, use `:getSecondaryRenderType() == "NONE"`.
---@deprecated [[Replace with ":getSecondaryRenderType()"]]
ModelPart.getExtraTexEnabled = nil

---@type «deprecated»
---`.getMimicMode()` is deprecated. It has no replacement as MIMIC parts are no longer needed.
---@deprecated [[No replacement]]
ModelPart.getMimicMode = nil

---@type «deprecated»
---`.getRenderTask()` is deprecated. To get a render task attached to this part, use `:getTask()`.
---@deprecated [[Replace with ":getTask()"]]
ModelPart.getRenderTask = nil

---@type «deprecated»
---`.getShader()` is deprecated.
---
---To get if the end portal effect is applied to this part, use `:getPrimaryRenderType() == "END_PORTAL"`.  
---To get if the glint effect is applied to this part, use `:getSecondaryRenderType() == "GLINT"`.
---@deprecated [[Complex, hover for more info]]
ModelPart.getShader = nil

---@type «deprecated»
---`.getTexture()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ModelPart.getTexture = nil

---@type «deprecated»
---`.getUVData()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ModelPart.getUVData = nil

---@type «deprecated»
---`.partToWorldDir()` is deprecated. To convert a part direction to a world direction, use
---`:partToWorldMatrix():applyDir(x, y, z)`.
---@deprecated [[Replace with ":partToWorldMatrix():applyDir(x, y, z)"]]
ModelPart.partToWorldDir = nil

---@type «deprecated»
---`.partToWorldPos()` is deprecated. To convert a part position to a world position, use
---`:partToWorldMatrix():apply(x, y, z)`.
---@deprecated [[Replace with ":partToWorldMatrix():apply(x, y, z)"]]
ModelPart.partToWorldPos = nil

---@type «deprecated»
---`.setCullEnabled()` is deprecated. To set the rendering mode of this part, use `:setPrimaryRenderType()`.
---
---To enable culling for this part, use a rendering mode that supports culling such as `"TRANSLUCENT_CULL"` or
---`"CUTOUT_CULL"`.
---@deprecated [[Replace with ":setPrimaryRenderType()"]]
ModelPart.setCullEnabled = nil

---@type «deprecated»
---`.setExtraTexEnabled()` is deprecated. To set the secondary rendering mode of this part, use
---`:setSecondaryRenderType()`.
---
---To disable the secondary texture, use `:setSecondaryRenderType("NONE")`.  
---To re-enable it, use `:setSecondaryRenderType("EMISSIVE")`.
---@deprecated [[Replace with ":setSecondaryRenderType()"]]
ModelPart.setExtraTexEnabled = nil

---@type «deprecated»
---`.setMimicMode()` is deprecated. It has no replacement as MIMIC parts are no longer needed.
---@deprecated [[No replacement]]
ModelPart.setMimicMode = nil

---@type «deprecated»
---`.setRenderLayer()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ModelPart.setRenderLayer = nil

---@type «deprecated»
---`.setShader()` is deprecated.
---
---To apply the end portal effect to this part, use `:setPrimaryRenderType("END_PORTAL")`.  
---To apply the glint effect, use `:setSecondaryRenderType("GLINT")`.
---@deprecated [[Complex, hover for more info]]
ModelPart.setShader = nil

---@type «deprecated»
---`.setTexture()` is deprecated.
---
---To set the primary texture of this part, use `:setPrimaryTexture()`.  
---To set the secondary texture, use `:setSecondaryTexture()`.
---@deprecated [[Complex, hover for more info]]
ModelPart.setTexture = nil

---@type «deprecated»
---`.setTextureSize()` is deprecated. It has no direct replacement.
---
---`:setUVMatrix()` can be used for a similar effect though it requires matrix math.
---@deprecated [[Complex, hover for more info]]
ModelPart.setTextureSize = nil

---@type «deprecated»
---`.setUVData()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ModelPart.setUVData = nil

---@type «deprecated»
---`.worldToPartDir()` is deprecated. To convert a world direction to a part direction, use
---`:partToWorldMatrix():invert():applyDir(x, y, z)`.
---@deprecated [[Replace with ":partToWorldMatrix():invert():applyDir(x, y, z)"]]
ModelPart.worldToPartDir = nil

---@type «deprecated»
---`.worldToPartPos()` is deprecated. To convert a world position to a part position, use
---`:partToWorldMatrix():invert():apply(x, y, z)`.
---@deprecated [[Replace with ":partToWorldMatrix():invert():apply(x, y, z)"]]
ModelPart.worldToPartPos = nil


---@class VanillaModelAPI
local VanillaModelAPI

---@type «deprecated»
---`.TORSO` is deprecated. To get the vanilla body, use `.BODY`.
---@deprecated [[Replace with ".BODY"]]
VanillaModelAPI.TORSO = nil

---@type «deprecated»
---`.LEFT_PANTS_LEG` is deprecated. To get the vanilla body, use `.LEFT_PANTS`.
---@deprecated [[Replace with ".LEFT_PANTS"]]
VanillaModelAPI.LEFT_PANTS_LEG = nil

---@type «deprecated»
---`.RIGHT_PANTS_LEG` is deprecated. To get the vanilla body, use `.RIGHT_PANTS`.
---@deprecated [[Replace with ".RIGHT_PANTS"]]
VanillaModelAPI.RIGHT_PANTS_LEG = nil

---@type «deprecated»
---`.LEFT_EAR` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
VanillaModelAPI.LEFT_EAR = nil

---@type «deprecated»
---`.RIGHT_EAR` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
VanillaModelAPI.RIGHT_EAR = nil


---@type «deprecated»
---`model` is deprecated. To get all model parts in this avatar, use `models`.
---
---Avatars can have multiple model files, which means models are accessed by indexing `models` with the name of the
---bbmodel file.  
---(To get the model parts from `mycoolmodel.bbmodel`, do `models.mycoolmodel`.)
---@deprecated [[Replace with "models.<bbmodel_name>"]]
model = nil


---@type «deprecated»
---`armor_model` is deprecated. Replace the following:
---* `armor_model.HELMET` with `vanilla_model.HELMET`
---* `armor_model.HEAD_ITEM` with `vanilla_model.HELMET_ITEM`
---* `armor_model.CHESTPLATE` with `vanilla_model.CHESTPLATE`
---* `armor_model.LEGGINGS` with `vanilla_model.LEGGINGS`
---* `armor_model.BOOTS` with `vanilla_model.BOOTS`
---
---&nbsp;
---### If `ARMOR_MODEL` IS PART OF A `FOR IN` LOOP...
---```lua
---for _, v in pairs(armor_model) do
---  v.setEnabled(<state>)
---end
---```
---The ***entire loop*** should be replaced with
---```lua
---vanilla_model.ARMOR:setVisible(<state>)
---```
---@deprecated [[Complex, hover for more info]]
armor_model = nil


---@type «deprecated»
---`elytra_model` is deprecated. Replace the following:
---* `elytra_model.LEFT_WING` with `vanilla_model.LEFT_ELYTRA`
---* `elytra_model.RIGHT_WING` with `vanilla_model.RIGHT_ELYTRA`
---
---&nbsp;
---### IF `ELYTRA_MODEL` IS PART OF A `FOR IN` LOOP...
---```lua
---for _, v in pairs(elytra_model) do
---  v.setEnabled(<state>)
---end
---```
---The ***entire loop*** should be replaced with
---```lua
---vanilla_model.ELYTRA:setVisible(<state>)
---```
---@deprecated [[Complex, hover for more info]]
elytra_model = nil


---@type «deprecated»
---`held_item_model` is deprecated. Replace the following:
---* `held_item_model.LEFT_HAND` with `vanilla_model.LEFT_ITEM`
---* `held_item_model.RIGHT_HAND` with `vanilla_model.RIGHT_ITEM`
---
---&nbsp;
---### IF `HELD_ITEM_MODEL` IS PART OF A `FOR IN` LOOP...
---```lua
---for _, v in pairs(held_item_model) do
---  v.setEnabled(<state>)
---end
---```
---The ***entire loop*** should be replaced with
---```lua
---vanilla_model.HELD_ITEMS:setVisible(<state>)
---```
---@deprecated [[Complex, hover for more info]]
held_item_model = nil


---@type «deprecated»
---`parrot_model` is deprecated. Replace the following:
---* `parrot_model.LEFT_PARROT` with `vanilla_model.LEFT_PARROT`
---* `parrot_model.RIGHT_PARROT` with `vanilla_model.RIGHT_PARROT`
---
---&nbsp;
---### IF `PARROT_MODEL` IS PART OF A `FOR IN` LOOP...
---```lua
---for _, v in pairs(parrot_model) do
---  v.setEnabled(<state>)
---end
---```
---The ***entire loop*** should be replaced with
---```lua
---vanilla_model.PARROTS:setVisible(<state>)
---```
---@deprecated [[Complex, hover for more info]]
parrot_model = nil


---@type «deprecated»
---`first_person_model` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
first_person_model = nil


---@type «deprecated»
---`spyglass_model` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
spyglass_model = nil


---==============================================================================================---
---  NAMEPLATE                                                                                   ---
---==============================================================================================---

---@class Nameplate
local Nameplate

---@type «deprecated»
---`.getEnabled()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Nameplate.getEnabled = nil

---@type «deprecated»
---`.getPos()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Nameplate.getPos = nil

---@type «deprecated»
---`.getScale()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Nameplate.getScale = nil

---@type «deprecated»
---`.setEnabled()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Nameplate.setEnabled = nil

---@type «deprecated»
---`.setPos()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Nameplate.setPos = nil

---@type «deprecated»
---`.setScale()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Nameplate.setScale = nil


---@class EntityNameplate
local EntityNameplate

---@type «deprecated»
---`.getEnabled()` is deprecated. To get if this nameplate is visible, use `:isVisible()`.
---@deprecated [[Replace with ":isVisible()"]]
EntityNameplate.getEnabled = nil

---@type «deprecated»
---`.setEnabled()` is deprecated. To set if this nameplate is visible, use `:setVisible()`.
---@deprecated [[Replace with ":setVisible()"]]
EntityNameplate.setEnabled = nil


---==============================================================================================---
---  NETWORK                                                                                     ---
---==============================================================================================---

---@type «deprecated»
---`network` is *very* deprecated.
---
---`network.registerPing()` and the connected global function are now replaced with
---```lua
---function pings.pingNameHere(param1, param2, ...)
---  --your code here.
---end
---```
---and `network.ping()` is replaced with
---```lua
---pings.pingNameHere(arg1, arg2, ...)
---```
---@deprecated [[Complex, hover for more info]]
network = nil


---@type «deprecated»
---`ping` is deprecated. To get or modify the pings this avatar has, use `pings`.
---@deprecated [[Replace with "pings"]]
ping = nil


---==============================================================================================---
---  PARTICLE                                                                                    ---
---==============================================================================================---

---@type «deprecated»
---`particle` is deprecated. Replace the following:
---* `particle.addParticle()` with `particles:newParticle()`
---@deprecated [[Complex, hover for more info]]
particle = nil


---==============================================================================================---
---  RENDERER                                                                                    ---
---==============================================================================================---

---@class RendererAPI
local RendererAPI

---@type «deprecated»
---`.getRenderFire()` is deprecated. To get if fire will render on the avatar host, use `:shouldRenderFire()`.
---@deprecated [[Replace with ":shouldRenderFire()"]]
RendererAPI.getRenderFire = nil

---@type «deprecated»
---`.getRenderPlayerHead()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
RendererAPI.getRenderPlayerHead = nil

---@type «deprecated»
---`.getShadowSize` is deprecated. To get the radius of the avatar host's shadow, use `:getShadowRadius()`.
---@deprecated [[Replace with ":getShadowRadius()"]]
RendererAPI.getShadowSize = nil

---@type «deprecated»
---`.getTextWidth()` is deprecated. To get the width of text, use `client.getTextWidth()`.
---@deprecated [[Replace with "client.getTextWidth()"]]
RendererAPI.getTextWidth = nil

---@type «deprecated»
---`.isMountEnabled` is deprecated. To get if the avatar host's vehicle is visible, use `:shouldRenderVehicle()`.
---@deprecated [[Replace with ":shouldRenderVehicle()"]]
RendererAPI.isMountEnabled = nil

---@type «deprecated»
---`.isMountShadowEnabled` is deprecated. To get if the avatar host's vehicle (and by extension, its shadow) is visible,
---use `:shouldRenderVehicle()`.
---@deprecated [[Replace with ":shouldRenderVehicle()"]]
RendererAPI.isMountShadowEnabled = nil

---@type «deprecated»
---`.raycastBlocks()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
RendererAPI.raycastBlocks = nil

---@type «deprecated»
---`.raycastEntities()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
RendererAPI.raycastEntities = nil

---@type «deprecated»
---`.setMountEnabled()` is deprecated. To set if the avatar host's vehicle is visible, use `:setRenderVehicle()`.
---@deprecated [[Replace with ":setRenderVehicle()"]]
RendererAPI.setMountEnabled = nil

---@type «deprecated»
---`.setMountShadowEnabled()` is deprecated. To set if the avatar host's vehicle (and by extension, its shadow) is
---visible, use `:setRenderVehicle()`.
---@deprecated [[Replace with ":setRenderVehicle()"]]
RendererAPI.setMountShadowEnabled = nil

---@type «deprecated»
---`.getRenderFire()` is deprecated. To set if fire will render on the avatar host, set `:setRenderFire()`.
---@deprecated [[Replace with ":setRenderFire()"]]
RendererAPI.setRenderFire = nil

---@type «deprecated»
---`.setRenderPlayerHead()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
RendererAPI.setRenderPlayerHead = nil

---@type «deprecated»
---`.setShadowSize()` is deprecated. To set the radius of the avatar host's shadow, use `:setShadowRadius()`.
---@deprecated [[Replace with ":setShadowRadius()"]]
RendererAPI.setShadowSize = nil

---@type «deprecated»
---`.swingArm()` is deprecated. To swing the avatar host's arm, use `host:swingArm()`.
---@deprecated [[Replace with "host:swingArm()"]]
RendererAPI.swingArm = nil


---==============================================================================================---
---  RENDERLAYERS                                                                                ---
---==============================================================================================---

---@type «deprecated»
---`renderlayers` is deprecated. It has no replacements.
---@deprecated [[No replacement]]
renderlayers = nil


---==============================================================================================---
---  RENDERTASKS                                                                                 ---
---==============================================================================================---

---@class RenderTask
local RenderTask

---@type «deprecated»
---`.getEmissive()` is deprecated. To get the light levels of a render task, use `:getLight()`.
---@deprecated [[Replace with ":getLight()"]]
RenderTask.getEmissive = nil

---@type «deprecated»
---`.getEnabled()` is deprecated. To get if this task is visible, use `:isVisible()`.
---@deprecated [[Replace with ":isVisible()"]]
RenderTask.getEnabled = nil

---@type «deprecated»
---`.setEmissive()` is deprecated. To set the light levels of a render task, use `:setLight()`.
---@deprecated [[Replace with ":setLight()"]]
RenderTask.setEmissive = nil


---@class BlockTask
local BlockTask

---@type «deprecated»
---`.setRenderLayer()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
BlockTask.setRenderLayer = nil


---@class ItemTask
local ItemTask

---@type «deprecated»
---`.setRenderLayer()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
ItemTask.setRenderLayer = nil

---@type «deprecated»
---`.setItemMode()` is deprecated. To set the rendering mode for the item this task renders, use `:setDisplayMode()`.
---@deprecated [[Replace with ":setDisplayMode()"]]
ItemTask.setItemMode = nil


---@class TextTask
local TextTask

---@type «deprecated»
---`.setLineSpacing()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
TextTask.setLineSpacing = nil


---==============================================================================================---
---  SOUND                                                                                       ---
---==============================================================================================---

---@type «deprecated»
---`sound` is deprecated. Replace the following:
---* `sound.getRegisteredCustomSounds()` with `sounds:getCustomSounds()`
---* `sound.isCustomSoundRegistered()` with `sounds:isPresent()`
---* `sound.playCustomSound()` with `sounds:playSound()`
---* `sound.playSound()` with `sounds:playSound()`
---* `sound.registerCustomSound()` with `sounds:newSound()`
---* `sound.stopCustomSound()` with `sounds:stopSound()`
---
---The following do not have a replacement:
---* `sound.getCustomSounds()`
---
---`sound.getSounds()` does not have a direct counterpart, however its functionality can be emulated with the
---`ON_PLAY_SOUND` event.
---@deprecated [[Complex, hover for more info]]
sound = nil


---==============================================================================================---
---  VECTORS                                                                                     ---
---==============================================================================================---

---@class Vector
local Vector

---@type «deprecated»
---`.angleTo` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
Vector.angleTo = nil

---@type «deprecated»
---`.asTable` is deprecated. It has no direct replacement.
---
---A table can be made out of a vector with the following: `{<Vector>:unpack()}`.
---@deprecated [[Has code replacement]]
Vector.asTable = nil

---@type «deprecated»
---`.cross` is deprecated. It only exists on Vector3s.
---@deprecated [[Only exists on Vector3]]
Vector.cross = nil

---@type «deprecated»
---`.distanceTo` is deprecated. It has no direct replacement.
---
---The distance between two vectors can be calculated with the following: `(<VectorA> - <VectorB>):length()`.
---@deprecated [[Has code replacement]]
Vector.distanceTo = nil

---@type «deprecated»
---`.getLength()` is deprecated. To get the length of this vector, use `:length()`.
---@deprecated [[Replace with ":length()"]]
Vector.getLength = nil


---@class VectorAPI
local VectorAPI

---@type «deprecated»
---`.axisAngleToEuler()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
VectorAPI.axisAngleToEuler = nil

---@type «deprecated»
---`.fromQuaternion()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
VectorAPI.fromQuaternion = nil

---@type «deprecated»
---`.getVector` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
VectorAPI.getVector = nil

---@type «deprecated»
---`.lerp()` is deprecated. To lerp vectors, use `math.lerp()`.
---@deprecated [[Replace with "math.lerp()"]]
VectorAPI.lerp = nil

---@type «deprecated»
---`.of()` is deprecated. To create vectors, use `.vec()`.
---@deprecated [[Replace with ".vec()"]]
VectorAPI.of = nil

---@type «deprecated»
---`.rgbToINT()` is deprecated. To convert color vectors to integers, use `.rgbToInt()`.
---@deprecated [[Replace with ".rgbToInt()"]]
VectorAPI.rgbToINT = nil

---@type «deprecated»
---`.rotateWithQuaternion()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
VectorAPI.rotateWithQuaternion = nil

---@type «deprecated»
---`.toQuaternion()` is deprecated. It has no replacement.
---@deprecated [[No replacement]]
VectorAPI.toQuaternion = nil

---@type «deprecated»
---`.worldToPart` is deprecated. It has no direct replacement.
---
---To convert a world coordinate to a World part coordinate, multiply the vector by `16`.
---@deprecated [[Has code replacement]]
VectorAPI.worldToPart = nil

---@type «deprecated»
---`.worldToCameraPos()` is deprecated. To convert a world position to a position relative to the viewing client's
---camera, use `.toCameraSpace()`.
---@deprecated [[Replace with ".toCameraSpace"]]
VectorAPI.worldToCameraPos = nil


---==============================================================================================---
---  WORLD                                                                                       ---
---==============================================================================================---

---@class WorldAPI
local WorldAPI

---@type «deprecated»
---`.getLunarTime()` is *very* deprecated. To get the time of day, use `.getTimeOfDay()`.
---@deprecated [[Replace with ".getTimeOfDay()"]]
WorldAPI.getLunarTime = nil

---@type «deprecated»
---`.hasWorld()` is deprecated. To get if the world exists, use `.exists()`.
---@deprecated [[Replace with ".exists()"]]
WorldAPI.hasWorld = nil

---@type «deprecated»
---`.isLightning()` is deprecated. To get if the current weather is thunder, use `.isThundering()`.
---@deprecated [[Replace with ".isThundering()"]]
WorldAPI.isLightning = nil
