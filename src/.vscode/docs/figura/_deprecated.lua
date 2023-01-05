---@meta
---@diagnostic disable: duplicate-set-field, codestyle-check


-- THIS FILE IS FOR DEPRECATIONS COMING FROM PREWRITE. THIS IS NOT FOR DEPRECATIONS IN ANY OF THE
-- REWRITE VERSIONS OF FIGURA.


---==============================================================================================---
---  ACTION_WHEEL                                                                                ---
---==============================================================================================---

---@class ActionWheelAPI
local ActionWheelAPI

---@type nil
---The action wheel no longer uses slots. It now uses pages. See `:newPage()` for more info.
---@deprecated 'slots are deprecated, use pages instead ("action_wheel:newPage()")'
ActionWheelAPI.SLOT_1 = nil

---@type nil
---The action wheel no longer uses slots. It now uses pages. See `:newPage()` for more info.
---@deprecated 'slots are deprecated, use pages instead ("action_wheel:newPage()")'
ActionWheelAPI.SLOT_2 = nil

---@type nil
---The action wheel no longer uses slots. It now uses pages. See `:newPage()` for more info.
---@deprecated 'slots are deprecated, use pages instead ("action_wheel:newPage()")'
ActionWheelAPI.SLOT_3 = nil

---@type nil
---The action wheel no longer uses slots. It now uses pages. See `:newPage()` for more info.
---@deprecated 'slots are deprecated, use pages instead ("action_wheel:newPage()")'
ActionWheelAPI.SLOT_4 = nil

---@type nil
---The action wheel no longer uses slots. It now uses pages. See `:newPage()` for more info.
---@deprecated 'slots are deprecated, use pages instead ("action_wheel:newPage()")'
ActionWheelAPI.SLOT_5 = nil

---@type nil
---The action wheel no longer uses slots. It now uses pages. See `:newPage()` for more info.
---@deprecated 'slots are deprecated, use pages instead ("action_wheel:newPage()")'
ActionWheelAPI.SLOT_6 = nil

---@type nil
---The action wheel no longer uses slots. It now uses pages. See `:newPage()` for more info.
---@deprecated 'slots are deprecated, use pages instead ("action_wheel:newPage()")'
ActionWheelAPI.SLOT_7 = nil

---@type nil
---The action wheel no longer uses slots. It now uses pages. See `:newPage()` for more info.
---@deprecated 'slots are deprecated, use pages instead ("action_wheel:newPage()")'
ActionWheelAPI.SLOT_8 = nil

---@type nil
---`.getLeftSize` is deprecated. It has no replacement.
---@deprecated '".getLeftSize" is deprecated'
ActionWheelAPI.getLeftSize = nil

---@type nil
---`.getRightSize` is deprecated. It has no replacement.
---@deprecated '".getRightSize" is deprecated'
ActionWheelAPI.getRightSize = nil

---@type nil
---`.getSelectedSlot` is deprecated. To get highlighted slot, use `:getSelected()`.
---@deprecated '".getSelectedSlot" is deprecated, replace with ":getSelected()"'
ActionWheelAPI.getSelectedSlot = nil

---@type nil
---`.runAction` is deprecated. To run an action, use `:execute()`.
---@deprecated '".runAction" is deprecated, replace with ":execute()"'
ActionWheelAPI.runAction = nil

---@type nil
---`.setLeftSize` is deprecated. It has no replacement.
---@deprecated '".setLeftSize" is deprecated'
ActionWheelAPI.setLeftSize = nil

---@type nil
---`.setRightSize` is deprecated. It has no replacement.
---@deprecated '".setRightSize" is deprecated'
ActionWheelAPI.setRightSize = nil

---@type nil
---`.isOpen` is deprecated. To get if the action wheel is visible, use `:isEnabled()`.
---@deprecated '".isOpen" is deprecated, replace with ":isEnabled()"'
ActionWheelAPI.isOpen = nil


---==============================================================================================---
---  ANIMATION                                                                                   ---
---==============================================================================================---

local AnimationTable = animations

---@type nil
---`.ceaseAll` is deprecated. It has no replacement.
---@deprecated '".ceaseAll" is deprecated'
AnimationTable.ceaseAll = nil

---@type nil
---`.listAnimations` is deprecated. It has no replacement.
---@deprecated '".listAnimations" is deprecated'
AnimationTable.listAnimations = nil

---@type nil
---`.stopAll` is deprecated. It has no replacement.
---@deprecated '".stopAll" is deprecated'
AnimationTable.stopAll = nil


---@class Animation
local Animation

---@type nil
---`.cease` is deprecated. To stop animations, use `:stop()`.
---@deprecated '".cease" is deprecated, replace with ":stop()"'
Animation.cease = nil

---@type nil
---`.getBlendTime` is deprecated. It has no replacement.
---@deprecated '".getBlendTime" is deprecated'
Animation.getBlendTime = nil

---@type nil
---`.getBlendWeight` is deprecated. To get weight, use `:getBlend()`.
---@deprecated '".getBlendWeight" is deprecated, replace with ":getBlend()"'
Animation.getBlendWeight = nil

---@type nil
---`.getLoopMode` is deprecated. To get loop mode, use `:getLoop()`.
---@deprecated '".getLoopMode" is deprecated, replace with ":getLoop()"'
Animation.getLoopMode = nil

---@type nil
---`.getName` is deprecated. To get the name, read `.name`.
---@deprecated '".getName" is deprecated, replace with ".name"'
Animation.getName = nil

---@type nil
---`.getOverride` is deprecated. It now has three forms.
---* `:getOverridePos()` for getting the override of the position channel,
---* `:getOverrideRot()` for getting the override of the rotation channel,
---* `:getOverrideScale()` for getting the override of the scale channel.
---@deprecated '".getOverride" is deprecated, hover for more information'
Animation.getOverride = nil

---@type nil
---`.getReplace` is deprecated. To get vanilla override, use `:getOverride()`.
---@deprecated '".getReplace" is deprecated, replace with ":getOverride()"'
Animation.getReplace = nil

---@type nil
---`.getStartOffset` is deprecated. To get start offset, use `:getOffset()`.
---@deprecated '".getStartOffset" is deprecated, replace with ":getOffset()"'
Animation.getStartOffset = nil

---@type nil
---`.isPlaying` is deprecated. To get if the animation is playing, use `:getPlayState()`.
---@deprecated '".isPlaying" is deprecated, replace with ":getPlayState()"'
Animation.isPlaying = nil

---@type nil
---`.setBlendTime` is deprecated. It has no replacement.
---@deprecated '".setBlendTime" is deprecated'
Animation.setBlendTime = nil

---@type nil
---`.setBlendWeight` is deprecated. To set weight, use `:blend()`.
---@deprecated '".setBlendWeight" is deprecated, replace with ":blend()"'
Animation.setBlendWeight = nil

---@type nil
---`.setLoopMode` is deprecated. To set loop mode, use `:loop()`.
---@deprecated '".setLoopMode" is deprecated, replace with ":loop()"'
Animation.setLoopMode = nil

---@type nil
---`.setReplace` is deprecated. To set vanilla override, use `:override()`.
---@deprecated '".setReplace" is deprecated, replace with ":override()"'
Animation.setReplace = nil

---@type nil
---`.setPlayState` is deprecated. To set if an animation is playing, use `:setPlaying()`.
---@deprecated '".setPlayState" is deprecated, replace with ":setPlaying()"'
Animation.setPlayState = nil

---@type nil
---`.setStartOffset` is deprecated. To set start offset, use `:offset()`.
---@deprecated '".setStartOffset" is deprecated, replace with ":offset()"'
Animation.setStartOffset = nil

---@type nil
---`.start` is deprecated. To play an animation, use `:play()`.
---@deprecated '".start" is deprecated, replace with ":play()"'
Animation.start = nil

---@type nil
---`animation` is deprecated. To get all animations in the avatar, use `animations`.
---@deprecated '"animation" is deprecated, replace with "animations.<bbmodel_name>"'
animation = nil


---==============================================================================================---
---  BIOME                                                                                       ---
---==============================================================================================---

---@class Biome
local Biome

---@type nil
---`.getCategory` is deprecated. It has no replacement.
---@deprecated '".getCategory" is deprecated'
Biome.getCategory = nil

---@type nil
---`.getID` is deprecated. To get this biome's id, use `:getName()`.
---@deprecated '".getID" is deprecated, replace with ":getName()"'
Biome.getID = nil

---@type nil
---`biome` is deprecated. Replace the following:
---* `.getBiome` with `world.getBiome()`
---@deprecated '"biome" is deprecated, hover for more information'
biome = nil


---==============================================================================================---
---  BLOCK                                                                                       ---
---==============================================================================================---

---@class BlockState
local BlockState

---@type nil
---`["figura$block_state"]` is deprecated.
---@deprecated `"["figura$block_state"]" is deprecated
BlockState["figura$block_state"] = nil

---@type nil
---`.name` is deprecated. To get this block's id, read `.id`.
---@deprecated '".name" is deprecated, replace with ".id"'
BlockState.name = nil

---@type nil
---`.getBlockTags` is deprecated. To get this block's block tags, use `:getTags()`.
---@deprecated '".getBlockTags" is deprecated, replace with ":getTags()"'
BlockState.getBlockTags = nil

---@type nil
---`.getSlipperiness` is deprecated. To get this block's friction, use `:getFriction()`.
---@deprecated '".getSlipperiness" is deprecated, replace with ":getFriction()"'
BlockState.getSlipperiness = nil

---@type nil
---`.getSoundGroup` is deprecated. To get the basic sounds this block makes, use `:getSounds()`.
---@deprecated '".getSoundGroup" is deprecated, replace with ":getSounds()"'
BlockState.getSoundGroup = nil

---@type nil
---`.isCollidable` is deprecated. To get if this block can be collided with, use `:hasCollision()`.
---@deprecated '".isCollidable" is deprecated, replace with ":hasCollision()"'
BlockState.isCollidable = nil

---@type nil
---`block_state` is deprecated. Replace the following:
---* `.createBlock` with `world.newBlock()`.
---@deprecated '"block_state" is deprecated, hover for more information'
block_state = nil


---==============================================================================================---
---  CAMERA                                                                                      ---
---==============================================================================================---

---@type nil
---`camera` is deprecated. Replace the following:
---* `.<FIRST_PERSON|THIRD_PERSON>.getPivot` with `renderer:getCameraOffsetPivot()`
---* `.<FIRST_PERSON|THIRD_PERSON>.getRot` with `renderer:getCameraOffsetRot()`
---* `.<FIRST_PERSON|THIRD_PERSON>.getPos` with `renderer:getCameraPos()`
---* `.<FIRST_PERSON|THIRD_PERSON>.setPivot` with `renderer:offsetCameraPivot()`
---* `.<FIRST_PERSON|THIRD_PERSON>.setRot` with `renderer:offsetCameraRot()`
---* `.<FIRST_PERSON|THIRD_PERSON>.setPos` with `renderer:setCameraPos()`
---@deprecated '"camera" is deprecated, hover for more information'
camera = nil


---==============================================================================================---
---  CHAT                                                                                        ---
---==============================================================================================---

---@type nil
---`chat` is deprecated. Replace the following:
---* `.isOpen` with `host:isChatOpen()`
---* `.sendMessage` with `host:sendChatMessage()`/`host:sendCommandMessage()`
---* `.getInputText` with `host:getChatText()`
---
---`.setFiguraCommandPrefix` and `.getMessage` do not have direct counterparts, however you can
---emulate their functionality with the `CHAT_SEND_MESSAGE` and `CHAT_RECEIVE_MESSAGE` events
---respectively.
---@deprecated '"chat" is deprecated, hover for more information'
chat = nil


---==============================================================================================---
---  CLIENT                                                                                      ---
---==============================================================================================---

---@class ClientAPI
local ClientAPI

---@type nil
---`.checkVersion` is deprecated. To compare versions, use `.compareVersions()`.
---@deprecated '".checkVersion" is deprecated, replace with ".compareVersions()"'
ClientAPI.checkVersion = nil

---@type nil
---`.clearTitle` is deprecated. To clear the title, see `host:clearTitle()`.
---@deprecated '".clearTitle" is deprecated, replace with "host:clearTitle()"'
ClientAPI.clearTitle = nil

---@type nil
---`.getActionBar` is deprecated. It has no replacement.
---@deprecated '".getActionBar" is deprecated'
ClientAPI.getActionBar = nil

---@type nil
---`.getActiveShader` is deprecated. To get the current shader, use `.getCurrentEffect()`.
---@deprecated '".getActiveShader" is deprecated, replace with ".getCurrentEffect()"'
ClientAPI.getActiveShader = nil

---@type nil
---`.getChunksCount` is deprecated. To get the chunk info line, use `.getChunkStatistics()`.
---@deprecated '".getChunksCount" is deprecated, replace with ".getChunkStatistics()"'
ClientAPI.getChunksCount = nil

---@type nil
---`.getCrosshairEnabled` is deprecated. To get the crosshair state, read `renderer.renderCrosshair`.
---@deprecated '".getCrosshairEnabled" is deprecated, replace with "renderer.renderCrosshair"'
ClientAPI.getCrosshairEnabled = nil

---@type nil
---`.getCrosshairPos` is deprecated. To get the crosshair offset, use
---`renderer:getCrosshairOffset()`.
---@deprecated '".getCrosshairPos" is deprecated, replace with "renderer:getCrosshairOffset()"'
ClientAPI.getCrosshairPos = nil

---@type nil
---`.getIrisShadersEnabled` is deprecated. To get Iris shader state, use `.hasIrisShader()`.
---@deprecated '".getIrisShadersEnabled" is deprecated, replace with ".hasIrisShader()"'
ClientAPI.getIrisShadersEnabled = nil

---@type nil
---`.getMemoryInUse` is deprecated. To get used memory, use `.getUsedMemory()`.
---@deprecated '".getMemoryInUse" is deprecated, replace with ".getUsedMemory()"'
ClientAPI.getMemoryInUse = nil

---@type nil
---`.getMouseScroll` is deprecated. To get mouse scroll, use the `MOUSE_SCROLL` event.
---@deprecated '".getMouseScroll" is deprecated, replace with "MOUSE_SCROLL" event'
ClientAPI.getMouseScroll = nil

---@type nil
---`.getOpenScreen` is deprecated. To get mouse scroll, use `host:getScreen()`.
---@deprecated '".getOpenScreen" is deprecated, replace with "host:getScreen()"'
ClientAPI.getOpenScreen = nil

---@type nil
---`.getScaleFactor` is deprecated. To get GUI Scale factor, use `.getGuiScale()`.
---@deprecated '".getScaleFactor" is deprecated, replace with ".getGuiScale()"'
ClientAPI.getScaleFactor = nil

---@type nil
---`.getSoundCount` is deprecated. To get sound count, use `.getSoundStatistics()`.
---@deprecated '".getSoundCount" is deprecated, replace with ".getSoundStatistics()"'
ClientAPI.getSoundCount = nil

---@type nil
---`.getSubtitle` is deprecated. It has no replacement.
---@deprecated '".getSubtitle" is deprecated'
ClientAPI.getSubtitle = nil

---@type nil
---`.getTitle` is deprecated. It has no replacement.
---@deprecated '".getTitle" is deprecated'
ClientAPI.getTitle = nil

---@type nil
---`.isHost` is deprecated. To get the host state, use `host:isHost()`.
---@deprecated '".isHost" is deprecated, replace with "host:isHost()"'
ClientAPI.isHost = nil

---@type nil
---`.setActionbar` is deprecated. To set the action bar, use `host:setActionbar()`.
---@deprecated '".setActionbar" is deprecated, replace with "host:setActionbar()"'
ClientAPI.setActionbar = nil

---@type nil
---`.setCrosshairEnabled` is deprecated. To set crosshair state, write to `renderer.renderCrosshair`.
---@deprecated '".setCrosshairEnabled" is deprecated, replace with "renderer.renderCrosshair"'
ClientAPI.setCrosshairEnabled = nil

---@type nil
---`.setCrosshairPos` is deprecated. To move the crosshair, use `renderer:setCrosshairOffset()`.
---@deprecated '".setCrosshairPos" is deprecated, replace with "renderer:setCrosshairOffset()"'
ClientAPI.setCrosshairPos = nil

---@type nil
---`.setMouseUnlocked` is deprecated. To unlock the mouse, write to `host.unlockCursor`.
---@deprecated '".setMouseUnlocked" is deprecated, replace with "host.unlockCursor"'
ClientAPI.setMouseUnlocked = nil

---@type nil
---`.setSubtitle` is deprecated. To set the subtitle, use `host:setSubtitle()`.
---@deprecated '".setSubtitle" is deprecated, replace with "host:setSubtitle()"'
ClientAPI.setSubtitle = nil

---@type nil
---`.setTitle` is deprecated. To set the title, use `host:setTitle()`.
---@deprecated '".setTitle" is deprecated, replace with "host:setTitle()"'
ClientAPI.setTitle = nil

---@type nil
---`.setTitleTimes` is deprecated. To set the title times, use `host:setTitleTimes()`.
---@deprecated '".setTitleTimes" is deprecated, replace with "host:setTitleTimes()"'
ClientAPI.setTitleTimes = nil


---==============================================================================================---
---  DATA                                                                                        ---
---==============================================================================================---

---@type nil
---`data` is deprecated. Replace the following:
---* `.setName` with `config:name()`
---* `.load` and `.loadAll` with `config:load()`
---* `.save` and `.remove` with `config:save()`
---
---The following do not have a replacement:
---* `.allowTracking`
---* `.deleteFile`
---* `.getName`
---* `.hasTracking`
---@deprecated '"data" is deprecated, hover for more information'
data = nil


---==============================================================================================---
---  ENTITY                                                                                      ---
---==============================================================================================---

---@class EntityAPI
local EntityAPI

---@type nil
---`.getAirPercentage` is deprecated. To get this entity's air as a percentage, use
---`:getAir() / :getMaxAir()`
---@deprecated '".getAirPercentage" is deprecated, replace with ":getAir() / :getMaxAir()"'
EntityAPI.getAirPercentage = nil

---@type nil
---`.getAnimation` is deprecated. To get this entity's current pose, use `:getPose()`.
---@deprecated '".getAnimation" is deprecated, replace with ":getPose()"'
EntityAPI.getAnimation = nil

---@type nil
---`.getEquipmentItem` is deprecated. To get an item this entity has equipped, use `:getItem()`.
---@deprecated '".getEquipmentItem" is deprecated, replace with ":getItem()"'
EntityAPI.getEquipmentItem = nil

---@type nil
---`.getNbtValue` is deprecated. To get this entity's NBT table, use `:getNbt()`.
---@deprecated '".getNbtValue" is deprecated, replace with ":getNbt()"'
EntityAPI.getNbtValue = nil

---@type nil
---`.getTargetedBlockPos` is deprecated. To get the block this entity is looking at, use
---`:getTargetedBlock()`.
---@deprecated '".getTargetedBlockPos" is deprecated, replace with ":getTargetedBlock()"'
EntityAPI.getTargetedBlockPos = nil

---@type nil
---`.getWorldName` is deprecated. To get the dimension this entity is in, use `:getDimensionName()`.
---@deprecated '".getWorldName" is deprecated, replace with ":getDimensionName()"'
EntityAPI.getWorldName = nil

---@type nil
---`.isSneaky` is deprecated. To get if this entity is sneaking, use `:isSneaking()`.
---@deprecated '".isSneaky" is deprecated, replace with ":isSneaking()"'
EntityAPI.isSneaky = nil

---@type nil
---`.isTouchingWater` is deprecated. To get if this entity is touching water, use `:isInWater()`.
---@deprecated '".isTouchingWater" is deprecated, replace with ":isInWater()"'
EntityAPI.isTouchingWater = nil


---@class LivingEntityAPI
local LivingEntityAPI

---@type nil
---`.getHealthPercentage` is deprecated. To get this entity's health as a percentage, use
---`:getHealth() / :getMaxHealth()`.
---@deprecated '".getHealthPercentage" is deprecated, replace with ":getHealth() / :getMaxHealth()"'
LivingEntityAPI.getHealthPercentage = nil

---@type nil
---`.getStatusEffect` is deprecated. To get the host's status effects, use
---`host:getStatusEffects()`.
---@deprecated '".getStatusEffect" is deprecated, replace with "host:getStatusEffects()"'
LivingEntityAPI.getStatusEffect = nil

---@type nil
---`.getStatusEffectTypes` is deprecated. To get the host's status effects, use
---`host:getStatusEffects()`.
---@deprecated '".getStatusEffectTypes" is deprecated, replace with "host:getStatusEffects()"'
LivingEntityAPI.getStatusEffectTypes = nil

---@type nil
---`.getStuckArrowCount` is deprecated. To get the amount of arrows stuck in this entity, use
---`:getArrowCount()`.
---@deprecated '".getStuckArrowCount" is deprecated, replace with ":getArrowCount()"'
LivingEntityAPI.getStuckArrowCount = nil


---@class PlayerAPI
local PlayerAPI

---@type nil
---`.getStoredValue` is deprecated. To get a stored avatar variable, use `:getVariable()`.
---@deprecated '".getStoredValue" is deprecated, replace with ":getVariable()"'
PlayerAPI.getStoredValue = nil

---@type nil
---`.lastDamageSource` is deprecated. It has no replacement.
---@deprecated '".lastDamageSource" is deprecated'
PlayerAPI.lastDamageSource = nil


---==============================================================================================---
---  ITEMSTACK                                                                                   ---
---==============================================================================================---

---@class ItemStack
local ItemStack

---@type nil
---`["figura$item_stack"]` is deprecated.
---@deprecated '"["figura$item_stack"]" is deprecated'
ItemStack["figura$item_stack"] = nil

---@type nil
---`.getItemTags` is deprecated. To get this item's item tags, use `:getTags()`.
---@deprecated '".getItemTags" is deprecated, replace with ":getTags()"'
ItemStack.getItemTags = nil

---@type nil
---`.getMaxUseTime` is deprecated. To get this item's use duration, use `:getUseDuration()`.
---@deprecated '".getMaxUseTime" is deprecated, replace with ":getUseDuration()"'
ItemStack.getMaxUseTime = nil

---@type nil
---`.getTag` is deprecated. To get this item's NBT tag, read `.tag`.
---@deprecated '".getTag" is deprecated, replace with ".tag"'
ItemStack.getTag = nil

---@type nil
---`.getType` is deprecated. To get this item's id, read `.id`.
---@deprecated '".getType" is deprecated, replace with ".id"'
ItemStack.getType = nil

---@type nil
---`.setCount` is deprecated. It has no replacement.
---@deprecated '".setCount" is deprecated'
ItemStack.setCount = nil

---@type nil
---`.setDamage` is deprecated. It has no replacement.
---@deprecated '".setDamage" is deprecated'
ItemStack.setDamage = nil

---@type nil
---`.setTag` is deprecated. If this item has a `.tag`, you can modify its contents instead.
---@deprecated '".setTag" is deprecated, hover for more information'
ItemStack.setTag = nil

---@type nil
---`item_stack` is deprecated. Replace the following:
---* `.createItem` with `world.newItem()`
---@deprecated '"item_stack" is deprecated, hover for more information'
item_stack = nil


---==============================================================================================---
---  KEYBIND                                                                                     ---
---==============================================================================================---

---@class Keybind
local Keybind

---@type nil
---`.wasPressed` is deprecated. It has no direct counterpart, however `.onPress` can be used to
---simulate the most common use for this function.
---@deprecated '".wasPressed" is deprecated, hover for more information'
Keybind.wasPressed = nil

---@type nil
---`.reset` is deprecated. It has no replacement.
---@deprecated '".reset" is deprecated'
Keybind.reset = nil

---@class KeybindAPI
local KeybindAPI

---@type nil
---`.getKeyList` is deprecated. It has no replacement.
---@deprecated '".getKeyList" is deprecated'
KeybindAPI.getKeyList = nil

---@type nil
---`.getRegisteredKeyList` is deprecated. It has no replacement.
---@deprecated '".getRegisteredKeyList" is deprecated'
KeybindAPI.getRegisteredKeyList = nil

---@type nil
---`.getRegisteredKeybind` is deprecated. To get the key bound to a vanilla keybind, use
---`:getVanillaKey()`.
---@deprecated '".getRegisteredKeybind" is deprecated, replace with ":getVanillaKey()"'
KeybindAPI.getRegisteredKeybind = nil

---@type nil
---`.newKey` is deprecated. To create a new keybind, use `:newKeybind()`.
---@deprecated '".newKey" is deprecated, replace with ":newKeybind()"'
KeybindAPI.newKey = nil

---@type nil
---`keybind` is deprecated. To get the keybind API, use `keybinds`.
---@deprecated '"keybind" is deprecated, replace with "keybinds"'
keybind = nil


---==============================================================================================---
---  META                                                                                        ---
---==============================================================================================---

---@type nil
---`meta` is deprecated. Replace the following:
---* `.getAnimationLimit` with `avatar:getMaxAnimationComplexity()`
---* `.getCanModifyNameplate` with `avatar:canEditNameplate()`
---* `.getCanModifyVanilla` with `avatar:canEditVanillaModel()`
---* `.getComplexityLimit` with `avatar:getMaxComplexity()`
---* `.getCurrentAnimationCount` with `avatar:getAnimationComplexity()`
---* `.getCurrentComplexity` with `avatar:getComplexity()`
---* `.getCurrentParticleCount` with `avatar:getRemainingParticles()`
---* `.getCurrentRenderCount` with `avatar:getRenderCount()`/`avatar:getCurrentInstructions()`
---* `.getCurrentSoundCount` with `avatar:getRemainingSounds()`
---* `.getCurrentTickCount` with `avatar:getTickCount()`/`avatar:getCurrentInstructions()`
---* `.getDoesRenderOffscreen` with `avatar:canRenderOffscreen()`
---* `.getFiguraVersion` with `client.getFiguraVersion()`
---* `.getInitLimit` with `avatar:getMaxInitCount()`
---* `.getParticleLimit` with `avatar:getMaxParticles()`
---* `.getRenderLimit` with `avatar:getMaxRenderCount()`
---* `.getScriptStatus` with `avatar:hasScriptError()`
---* `.getSoundLimit` with `avatar:getMaxSounds()`
---* `.getTextureStatus` with `avatar:hasTexture()`
---* `.getTickLimit` with `avatar:getMaxTickCount()`
---
---The following do not have a replacement:
---* `.getBackendStatus`
---* `.getCanHaveCustomRenderLayer`
---* `.getModelStatus`
---@deprecated '"meta" is deprecated, hover for more information'
meta = nil


---==============================================================================================---
---  MODEL                                                                                       ---
---==============================================================================================---

---@class ModelPart
local ModelPart

---@type nil
---`.getEnabled` is deprecated. To get the visibility of this part, use `:getVisible()`.
---@deprecated '".getEnabled" is deprecated, replace with ":getVisible()"'
ModelPart.getEnabled = nil

---@type nil
---`.setEnabled` is deprecated. To set the visibility of this part, use `:setVisible()`.
---@deprecated '".setEnabled" is deprecated, replace with ":setVisible()"'
ModelPart.setEnabled = nil

---@type nil
---`.addRenderTask` is deprecated. To create a render task, use `:newBlock()`, `:newItem()`, or
---`:newText()`.
---@deprecated '".addRenderTask" is deprecated, replace with ":newBlock()"/":newItem()"/":newText()"'
ModelPart.addRenderTask = nil

---@type nil
---`.clearAllRenderTasks` is deprecated. To remove all render tasks, use `:removeTask()` with no
---`name` parameter.
---@deprecated '".clearAllRenderTasks" is deprecated, replace with ":removeTask()"'
ModelPart.clearAllRenderTasks = nil

---@type nil
---`.getCullEnabled` is deprecated. To get the rendering mode of this part, use
---`:getPrimaryRenderType()`.
---@deprecated '".getCullEnabled" is deprecated, replace with ":getPrimaryRenderType()"'
ModelPart.getCullEnabled = nil

---@type nil
---`.getExtraTexEnabled` is deprecated. To get if the secondary texture is disabled, use
---`:getSecondaryRenderType() == "NONE"`.
---@deprecated '".getExtraTexEnabled" is deprecated, replace with ":getSecondaryRenderType() == "NONE""'
ModelPart.getExtraTexEnabled = nil

---@type nil
---`.getMimicMode` is deprecated. It has no replacement.
---@deprecated '".getMimicMode" is deprecated'
ModelPart.getMimicMode = nil

---@type nil
---`.getRenderTask` is deprecated. To get a render task attached to this part, use `:getTask()`.
---@deprecated '".getRenderTask" is deprecated, replace with ":getTask()"'
ModelPart.getRenderTask = nil

---@type nil
---`.getShader` is deprecated. It has no replacement.
---@deprecated '".getShader" is deprecated'
ModelPart.getShader = nil

---@type nil
---`.getTexture` is deprecated. It has no replacement.
---@deprecated '".getTexture" is deprecated'
ModelPart.getTexture = nil

---@type nil
---`.getUVData` is deprecated. It has no replacement.
---@deprecated '".getUVData" is deprecated'
ModelPart.getUVData = nil

---@type nil
---`.partToWorldDir` is deprecated. To convert a part direction to a world direction, use
---`:partToWorldMatrix():applyDir(x, y, z)`.
---@deprecated '".partToWorldDir" is deprecated, replace with ":partToWorldMatrix():applyDir(x, y, z)"'
ModelPart.partToWorldDir = nil

---@type nil
---`.partToWorldPos` is deprecated. To convert a part position to a world position, use
---`:partToWorldMatrix() * vec(x, y, z, 1)`.
---@deprecated '".partToWorldPos" is deprecated, replace with ":partToWorldMatrix():apply(x, y, z)"'
ModelPart.partToWorldPos = nil

---@type nil
---`.setCullEnabled` is deprecated. To set the rendering mode of this part, use
---`:setPrimaryRenderType()`.
---@deprecated '".setCullEnabled" is deprecated, replace with ":setPrimaryRenderType()"'
ModelPart.setCullEnabled = nil

---@type nil
---`.setExtraTexEnabled` is deprecated. To disable the secondary texture, use
---`:setSecondaryRenderType("NONE")`.
---@deprecated '".setExtraTexEnabled" is deprecated, replace with ":setSecondaryRenderType()"'
ModelPart.setExtraTexEnabled = nil

---@type nil
---`.setMimicMode` is deprecated. It has no replacement.
---@deprecated '".setMimicMode" is deprecated'
ModelPart.setMimicMode = nil

---@type nil
---`.setRenderLayer` is deprecated. It has no replacement.
---@deprecated '".setRenderLayer" is deprecated'
ModelPart.setRenderLayer = nil

---@type nil
---`.setRenderLayer` is deprecated. To apply the end portal effect to this part, use
---`:setPrimaryRenderType()`, to apply the glint effect, use `:setSecondaryRenderType()`.
---@deprecated '".setRenderLayer" is deprecated, replace with ":setPrimaryRenderType()"/":setSecondaryRenderType()"'
ModelPart.setShader = nil

---@type nil
---`.setTexture` is deprecated. To set the primary texture of this part, use `:setPrimaryTexture()`,
---to set the secondary texture, use `:setSecondaryTexture()`.
---@deprecated '".setTexture" is deprecated, replace with ":setPrimaryTexture()"/":setSecondaryTexture()"'
ModelPart.setTexture = nil

---@type nil
---`.setTextureSize` is deprecated. It has no direct replacement. `:setUVMatrix()` can be used for a
---similar effect.
---@deprecated '".setTextureSize" is deprecated, hover for more information'
ModelPart.setTextureSize = nil

---@type nil
---`.setUVData` is deprecated. It has no replacement.
---@deprecated '".setUVData" is deprecated'
ModelPart.setUVData = nil

---@type nil
---`.worldToPartDir` is deprecated. To convert a world direction to a part direction, use
---`:partToWorldMatrix():inverted():applyDir(x, y, z)`.
---@deprecated '".partToWorldDir" is deprecated, replace with ":partToWorldMatrix():inverted():applyDir(x, y, z)"'
ModelPart.worldToPartDir = nil

---@type nil
---`.worldToPartPos` is deprecated. To convert a world position to a part position, use
---`:partToWorldMatrix():inverted():apply(x, y, z)`.
---@deprecated '".worldToPartPos" is deprecated, replace with ":partToWorldMatrix():inverted():apply(x, y, z)"'
ModelPart.worldToPartPos = nil


---@class VanillaModelPart
local VanillaModelPart

---@type nil
---`.getEnabled` is deprecated. To get the visibility of this vanilla part, use `:getVisible()`.
---@deprecated '".getEnabled" is deprecated, replace with ":getVisible()"'
VanillaModelPart.getEnabled = nil

---@type nil
---`.getPos` is deprecated. It has no replacement.
---@deprecated '".getPos" is deprecated'
VanillaModelPart.getPos = nil

---@type nil
---`.getRot` is deprecated. It has no replacement.
---@deprecated '".getRot" is deprecated'
VanillaModelPart.getRot = nil

---@type nil
---`.getScale` is deprecated. It has no replacement.
---@deprecated '".getScale" is deprecated'
VanillaModelPart.getScale = nil

---@type nil
---`.setEnabled` is deprecated. To set the visibility of this vanilla part, use `:setVisible()`.
---### IF THIS IS PART OF A `FOR` LOOP...
---```lua
---for _, v in pairs(vanilla_model) do
---  v.setEnabled(<state>)
---end
---```
---The entire loop *must* be replaced with
---```lua
---vanilla_model.PLAYER:setVisible(<state>)
---```
---@deprecated '".setEnabled" is deprecated, hover for more information'
VanillaModelPart.setEnabled = nil

---@type nil
---`.setPos` is deprecated. It has no replacement.
---@deprecated '".setPos" is deprecated'
VanillaModelPart.setPos = nil

---@type nil
---`.setRot` is deprecated. It has no replacement.
---@deprecated '".setRot" is deprecated'
VanillaModelPart.setRot = nil

---@type nil
---`.setScale` is deprecated. It has no replacement.
---@deprecated '".setScale" is deprecated'
VanillaModelPart.setScale = nil

---@type nil
---`.getOriginEnabled` is deprecated. To get if Minecraft is making this vanilla part visible, use
---`:setOriginVisible()`.
---@deprecated '".getOriginEnabled" is deprecated, replace with ":setOriginVisible()"'
VanillaModelPart.getOriginEnabled = nil

---@type nil
---`.isOptionEnabled` is deprecated. To get if this vanilla part is enabled in skin customizations,
---use `player:isSkinLayerVisible()`.
---@deprecated '".isOptionEnabled" is deprecated, replace with "player:isSkinLayerVisible()"'
VanillaModelPart.isOptionEnabled = nil


---@class VanillaModelAPI
local VanillaModelAPI

---@type nil
---`.TORSO` is deprecated. To get the vanilla body, use `.BODY`.
---@deprecated '".TORSO" is deprecated, replace with ".BODY"'
VanillaModelAPI.TORSO = nil

---@type nil
---`.LEFT_PANTS_LEG` is deprecated. To get the vanilla body, use `.LEFT_PANTS`.
---@deprecated '".LEFT_PANTS_LEG" is deprecated, replace with ".LEFT_PANTS"'
VanillaModelAPI.LEFT_PANTS_LEG = nil

---@type nil
---`.RIGHT_PANTS_LEG` is deprecated. To get the vanilla body, use `.RIGHT_PANTS`.
---@deprecated '".RIGHT_PANTS_LEG" is deprecated, replace with ".RIGHT_PANTS"'
VanillaModelAPI.RIGHT_PANTS_LEG = nil

---@type nil
---`.LEFT_EAR` is deprecated. It has no replacement.
---@deprecated '".LEFT_EAR" is deprecated'
VanillaModelAPI.LEFT_EAR = nil

---@type nil
---`.RIGHT_EAR` is deprecated. It has no replacement.
---@deprecated '".RIGHT_EAR" is deprecated'
VanillaModelAPI.RIGHT_EAR = nil


---@type nil
---`model` is deprecated. To get all model parts in this avatar, use `models`.
---@deprecated '"model" is deprecated, replace with "models.<bbmodel_name>"'
model = nil


---@type nil
---`armor_model` is deprecated. Replace the following:
---* `.HELMET` with `vanilla_model.HELMET`
---* `.HEAD_ITEM` with `vanilla_model.HELMET_ITEM`
---* `.CHESTPLATE` with `vanilla_model.CHESTPLATE`
---* `.LEGGINGS` with `vanilla_model.LEGGINGS`
---* `.BOOTS` with `vanilla_model.BOOTS`
---
---If `armor_model` is being used in a `for` loop,
---```lua
---for _, v in pairs(armor_model) do
---  v.setEnabled(<state>)
---end
---```
---The entire loop can be replaced with
---```lua
---vanilla_model.ARMOR:setVisible(<state>)
---```
---@deprecated '"armor_model" is deprecated, hover for more information'
armor_model = nil


---@type nil
---`elytra_model` is deprecated. Replace the following:
---* `.LEFT_WING` with `vanilla_model.LEFT_ELYTRA`
---* `.RIGHT_WING` with `vanilla_model.RIGHT_ELYTRA`
---
---If `elytra_model` is being used in a `for` loop,
---```lua
---for _, v in pairs(elytra_model) do
---  v.setEnabled(<state>)
---end
---```
---The entire loop can be replaced with
---```lua
---vanilla_model.ELYTRA:setVisible(<state>)
---```
---@deprecated '"elytra_model" is deprecated, hover for more information'
elytra_model = nil


---@type nil
---`held_item_model` is deprecated. Replace the following:
---* `.LEFT_HAND` with `vanilla_model.LEFT_ITEM`
---* `.RIGHT_HAND` with `vanilla_model.RIGHT_ITEM`
---
---If `held_item_model` is being used in a `for` loop,
---```lua
---for _, v in pairs(held_item_model) do
---  v.setEnabled(<state>)
---end
---```
---The entire loop can be replaced with
---```lua
---vanilla_model.HELD_ITEMS:setVisible(<state>)
---```
---@deprecated '"held_item_model" is deprecated, hover for more information'
held_item_model = nil


---@type nil
---`parrot_model` is deprecated. Replace the following:
---* `.LEFT_PARROT` with `vanilla_model.LEFT_PARROT`
---* `.RIGHT_PARROT` with `vanilla_model.RIGHT_PARROT`
---
---If `parrot_model` is being used in a `for` loop,
---```lua
---for _, v in pairs(parrot_model) do
---  v.setEnabled(<state>)
---end
---```
---The entire loop can be replaced with
---```lua
---vanilla_model.PARROTS:setVisible(<state>)
---```
---@deprecated '"parrot_model" is deprecated, hover for more information'
parrot_model = nil


---@type nil
---`first_person_model` is deprecated. It has no replacement.
---@deprecated '"first_person_model" is deprecated'
first_person_model = nil


---@type nil
---`spyglass_model` is deprecated. It has no replacement.
---@deprecated '"spyglass_model" is deprecated'
spyglass_model = nil


---==============================================================================================---
---  NAMEPLATE                                                                                   ---
---==============================================================================================---

---@class Nameplate
local Nameplate

---@type nil
---`.getEnabled()` is deprecated. It has no replacement.
---@deprecated '".getEnabled" is deprecated'
Nameplate.getEnabled = nil

---@type nil
---`.getPos()` is deprecated. It has no replacement.
---@deprecated '".getPos" is deprecated'
Nameplate.getPos = nil

---@type nil
---`.getScale()` is deprecated. It has no replacement.
---@deprecated '".getScale" is deprecated'
Nameplate.getScale = nil

---@type nil
---`.setEnabled()` is deprecated. It has no replacement.
---@deprecated '".setEnabled" is deprecated'
Nameplate.setEnabled = nil

---@type nil
---`.setPos()` is deprecated. It has no replacement.
---@deprecated '".setPos" is deprecated'
Nameplate.setPos = nil

---@type nil
---`.setScale()` is deprecated. It has no replacement.
---@deprecated '".setScale" is deprecated'
Nameplate.setScale = nil


---@class EntityNameplate
local EntityNameplate

---@type nil
---`.getEnabled()` is deprecated. To get if this nameplate is visible, use `:isVisible()`.
---@deprecated '".getEnabled" is deprecated, replace with ":isVisible()"'
EntityNameplate.getEnabled = nil

---@type nil
---`.setEnabled()` is deprecated. To set if this nameplate is visible, use `:visible()`.
---@deprecated '".setEnabled" is deprecated, replace with ":visible()"'
EntityNameplate.setEnabled = nil


---==============================================================================================---
---  NETWORK                                                                                     ---
---==============================================================================================---

---@type nil
---`network` is *very* deprecated.
---
---`.registerPing` and the connected global function are now replaced with
---```lua
---function pings.pingNameHere(param1, param2, ...)
---  --your code here.
---end
---```
---and `.ping` is replaced with
---```lua
---pings.pingNameHere(arg1, arg2, ...)
---```
---@deprecated '"network" is deprecated, hover for more information'
network = nil


---@type nil
---`ping` is deprecated. To get or modify the pings this avatar has, use `pings`.
---@deprecated '"ping" is deprecated, replace with "pings"'
ping = nil


---==============================================================================================---
---  PARTICLE                                                                                    ---
---==============================================================================================---

---@type nil
---`particle` is deprecated. Replace the following:
---* `.addParticle` with `particles:newParticle()`
---@deprecated '"particle" is deprecated, hover for more information'
particle = nil


---==============================================================================================---
---  RENDERER                                                                                    ---
---==============================================================================================---

---@class RendererAPI
local RendererAPI

---@type nil
---`.getRenderFire` is deprecated. To get if fire will render on the avatar host, read
---`.renderFire`.
---@deprecated '".getRenderFire" is deprecated, replace with ".renderFire"'
RendererAPI.getRenderFire = nil

---@type nil
---`.getRenderPlayerHead` is deprecated. It has no replacement.
---@deprecated '".getRenderPlayerHead" is deprecated'
RendererAPI.getRenderPlayerHead = nil

---@type nil
---`.getShadowSize` is deprecated. To get the shadow radius of the avatar host, use
---`:getShadowRadius()`.
---@deprecated '".getShadowSize" is deprecated, replace with ":getShadowRadius()"'
RendererAPI.getShadowSize = nil

---@type nil
---`.getTextWidth` is deprecated. To get the width of text, use `client.getTextWidth()`.
---@deprecated '".getTextWidth" is deprecated, replace with "client.getTextWidth()"'
RendererAPI.getTextWidth = nil

---@type nil
---`.isMountEnabled` is deprecated. To get if the avatar host's vehicle is visible, read
---`.renderVehicle`.
---@deprecated '".isMountEnabled" is deprecated, replace with ".renderVehicle"'
RendererAPI.isMountEnabled = nil

---@type nil
---`.isMountShadowEnabled` is deprecated. To get if the avatar host's vehicle is visible (and by
---extension, its shadow,) read `.renderVehicle`.
---@deprecated '".isMountShadowEnabled" is deprecated, replace with ".renderVehicle"'
RendererAPI.isMountShadowEnabled = nil

---@type nil
---`.raycastBlocks` is deprecated. It has no replacement.
---@deprecated '".raycastBlocks" is deprecated'
RendererAPI.raycastBlocks = nil

---@type nil
---`.raycastEntities` is deprecated. It has no replacement.
---@deprecated '".raycastEntities" is deprecated'
RendererAPI.raycastEntities = nil

---@type nil
---`.setMountEnabled` is deprecated. To set if the avatar host's vehicle is visible, set
---`.renderVehicle`.
---@deprecated '".setMountEnabled" is deprecated, replace with ".renderVehicle"'
RendererAPI.setMountEnabled = nil

---@type nil
---`.setMountShadowEnabled` is deprecated. To set if the avatar host's vehicle is visible (and by
---extension, its shadow,) set `.renderVehicle`.
---@deprecated '".setMountShadowEnabled" is deprecated, replace with ".renderVehicle"'
RendererAPI.setMountShadowEnabled = nil

---@type nil
---`.getRenderFire` is deprecated. To set if fire will render on the avatar host, set `.renderFire`.
---@deprecated '".setRenderFire" is deprecated, replace with ".renderFire"'
RendererAPI.setRenderFire = nil

---@type nil
---`.setRenderPlayerHead` is deprecated. It has no replacement.
---@deprecated '".setRenderPlayerHead" is deprecated'
RendererAPI.setRenderPlayerHead = nil

---@type nil
---`.setShadowSize` is deprecated. To set the shadow radius of the avatar host, use
---`:setShadowRadius()`.
---@deprecated '".setShadowSize" is deprecated, replace with ":setShadowRadius()"'
RendererAPI.setShadowSize = nil

---@type nil
---`.swingArm` is deprecated. To swing the avatar host's arm, use `host:swingArm()`.
---@deprecated '".swingArm" is deprecated, replace with "host:swingArm()"'
RendererAPI.swingArm = nil


---==============================================================================================---
---  RENDERLAYERS                                                                                ---
---==============================================================================================---

---@type nil
---`renderlayers` is deprecated. It has no replacements.
---@deprecated '"renderlayers" is deprecated'
renderlayers = nil


---==============================================================================================---
---  RENDERTASKS                                                                                 ---
---==============================================================================================---

---@class RenderTask
local RenderTask

---@type nil
---`.getEmissive` is deprecated. It has no replacement.
---@deprecated '".getEmissive" is deprecated'
RenderTask.getEmissive = nil

---@type nil
---`.getEnabled` is deprecated. To get if this task is visible, use `:isEnabled()`.
---@deprecated '".getEnabled" is deprecated, replace with ":isEnabled()"'
RenderTask.getEnabled = nil

---@type nil
---`.setEmissive` is deprecated. It has no replacement.
---@deprecated '".setEmissive" is deprecated'
RenderTask.setEmissive = nil


---@class BlockTask
local BlockTask

---@type nil
---`.setRenderLayer` is deprecated. It has no replacement.
---@deprecated '".setRenderLayer" is deprecated'
BlockTask.setRenderLayer = nil


---@class ItemTask
local ItemTask

---@type nil
---`.setRenderLayer` is deprecated. It has no replacement.
---@deprecated '".setRenderLayer" is deprecated'
ItemTask.setRenderLayer = nil

---@type nil
---`.setItemMode` is deprecated. To set the rendering mode for the item this task renders, use
---`:renderType()`.
---@deprecated '".setItemMode" is deprecated, replace with ":renderType()"'
ItemTask.setItemMode = nil


---@class TextTask
local TextTask

---@type nil
---`.setLineSpacing` is deprecated. It has no replacement.
---@deprecated '".setLineSpacing" is deprecated'
TextTask.setLineSpacing = nil


---==============================================================================================---
---  SOUND                                                                                       ---
---==============================================================================================---

---@type nil
---`sound` is deprecated. Replace the following:
---* `.playCustomSound` with `sounds:playSound()`
---* `.playSound` with `sounds:playSound()`
---* `.registerCustomSound` with `sounds:newSound()`
---* `.stopCustomSound` with `sounds:stopSound()`
---
---The following do not have a replacement:
---* `.getCustomSounds`
---* `.getRegisteredCustomSounds`
---* `.getSounds`
---* `.isCustomSoundRegistered`
---@deprecated '"sound" is deprecated, hover for more information'
sound = nil


---==============================================================================================---
---  VECTORS                                                                                     ---
---==============================================================================================---

---@class Vector
local Vector

---@type nil
---`.angleTo` is deprecated. It has no replacement.
---@deprecated '".angleTo" is deprecated'
Vector.angleTo = nil

---@type nil
---`.asTable` is deprecated. It has no replacement.
---@deprecated '".asTable" is deprecated'
Vector.asTable = nil

---@type nil
---`.cross` is deprecated. It only exists on 3-element vectors.
---@deprecated '".cross" is deprecated, hover for more information'
Vector.cross = nil

---@type nil
---`.distanceTo` is deprecated. It has no replacement.
---@deprecated '".distanceTo" is deprecated'
Vector.distanceTo = nil

---@type nil
---`.distanceTo` is deprecated. To get the length of this vector, use `:length()`.
---@deprecated '".distanceTo" is deprecated, replace with ":length()"'
Vector.getLength = nil


---@class VectorAPI
local VectorAPI

---@type nil
---`.axisAngleToEuler` is deprecated. It has no replacement.
---@deprecated '".axisAngleToEuler" is deprecated'
VectorAPI.axisAngleToEuler = nil

---@type nil
---`.fromQuaternion` is deprecated. It has no replacement.
---@deprecated '".fromQuaternion" is deprecated'
VectorAPI.fromQuaternion = nil

---@type nil
---`.getVector` is deprecated. It has no replacement.
---@deprecated '".getVector" is deprecated'
VectorAPI.getVector = nil

---@type nil
---`.lerp` is deprecated. To lerp vectors, use `math.lerp()`.
---@deprecated '".lerp" is deprecated, replace with "math.lerp()"'
VectorAPI.lerp = nil

---@type nil
---`.of` is deprecated. To create vectors, use `.vec()`.
---@deprecated '".of" is deprecated, replace with ".vec()"'
VectorAPI.of = nil

---@type nil
---`.rgbToINT` is deprecated. To convert color vectors to integers, use `.rgbToInt()`.
---@deprecated '".rgbToINT" is deprecated, replace with ".rgbToInt()"'
VectorAPI.rgbToINT = nil

---@type nil
---`.rotateWithQuaternion` is deprecated. It has no replacement.
---@deprecated '".rotateWithQuaternion" is deprecated'
VectorAPI.rotateWithQuaternion = nil

---@type nil
---`.toQuaternion` is deprecated. It has no replacement.
---@deprecated '".toQuaternion" is deprecated'
VectorAPI.toQuaternion = nil

---@type nil
---`.worldToPart` is deprecated. It has no replacement.
---@deprecated '".worldToPart" is deprecated'
VectorAPI.worldToPart = nil

---@type nil
---`.worldToCameraPos` is deprecated. To convert a world position to a position relative to the
---viewing client's camera, use `.toCameraSpace`.
---@deprecated '".worldToCameraPos" is deprecated, replace with ".toCameraSpace"'
VectorAPI.worldToCameraPos = nil


---==============================================================================================---
---  WORLD                                                                                       ---
---==============================================================================================---

---@class WorldAPI
local WorldAPI

---@type nil
---`.getLunarTime` is *very* deprecated. To get the time of day, use `.getTimeOfDay()`.
---@deprecated '".getLunarTime" is deprecated, replace with ".getTimeOfDay()"'
WorldAPI.getLunarTime = nil

---@type nil
---`.hasWorld` is deprecated. To get if the world exists, use `.exists()`.
---@deprecated '".hasWorld" is deprecated, replace with ".exists()"'
WorldAPI.hasWorld = nil
