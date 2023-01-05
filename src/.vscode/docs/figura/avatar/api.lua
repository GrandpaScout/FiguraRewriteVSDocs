---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  AVATARAPI                                                                                   ---
---==============================================================================================---

---An API mainly used for getting avatar metadata.
---
---> ***
---
---This API contains many getters for avatar metadata and avatar resources.
---
---Avatar metadata includes the data in the `avatar.json` file, the total size of the avatar, and
---the existence of certain types of files.
---
---Avatar resources include current/max script instructions and current/max model & animation
---complexity.
---
---This API also controls avatar variables through `<AvatarAPI>:store()`.
---@class AvatarAPI
local AvatarAPI


---===== METHODS =====---

---Stores a value on the avatar.
---
---Other avatars can access this value by using the following function:
---```lua
---<PlayerAPI>:getVariable(key)
---```
---
---> ***
---
---This function is not magic.  
---Doing the following:
---```lua
---local var = "uno"
---
---if host:isHost() then var = "dos" end
---
---avatar:store("es_num", var)
---```
---Will result in the host seeing `"dos"` in avatar variable `"es_num"` and all other clients seeing
---`"uno"` in avatar variable `"es_num"`.
---@generic self
---@param self self
---@param key string
---@param value? any
---@return self
function AvatarAPI:store(key, value) end


---===== GETTERS =====---

---Gets if the viewing client allows this avatar to change the nameplate.
---
---This is affected by the `Nameplate Change` trust setting.
---@return AvatarAPI.booleanSwitch
function AvatarAPI:canEditNameplate() end

---Gets if the viewing client allows this avatar to change the vanilla player model.
---
---This is affected by the `Vanilla Model Change` trust setting.
---@return AvatarAPI.booleanSwitch
function AvatarAPI:canEditVanillaModel() end

---Gets if the viewing client allows this avatar to have a custom head.
---
---This is affected by the `Custom Player Heads` trust setting.
---@return AvatarAPI.booleanSwitch
function AvatarAPI:canHaveCustomHeads() end

---Gets if the viewing client allows this avatar to render while it is offscreen.
---
---This is affected by the `Render Offscreen` trust setting.
---@return AvatarAPI.booleanSwitch
function AvatarAPI:canRenderOffscreen() end

---Gets if the viewing client allows this avatar to play custom sounds.
---
---This is affected by the `Custom Sounds` trust setting.
---@return AvatarAPI.booleanSwitch
function AvatarAPI:canUseCustomSounds() end

---Gets the number of currently playing animation channels in this avatar.
---@return integer
function AvatarAPI:getAnimationComplexity() end

---Gets the author(s) of this avatar.
---
---This is affected by the `author` and `authors` metadata.  
---If the `authors` array is used, all authors will be separated by a single line feed.
---
---Returns `"?"` if no authors are found.
---@return string
function AvatarAPI:getAuthors() end

---Gets the color of this avatar.
---
---This is affected by the `color` metadata.
---
---Returns `nil` if no color has been set.
---@return string?
function AvatarAPI:getColor() end

---Gets the amount of tris that are currently visible on this avatar.
---@return integer
function AvatarAPI:getComplexity() end

---Gets the current instruction count in the current context or event.
---
---Instructions are the bytecodes that Lua runs.
---@return integer
function AvatarAPI:getCurrentInstructions() end

---Gets the amount of instructions run in the `ENTITY_INIT` event.
---
---This value is only updated after the `ENTITY_INIT` event has run.
---@return integer
function AvatarAPI:getEntityInitCount() end

---Gets the amount of instructions run in init.
---
---This value is only updated after init has run.
---@return integer
function AvatarAPI:getInitCount() end

---Gets the maximum animation complexity the viewing client allows this avatar to have.
---
---This is affected by the `Animation Complexity` trust setting.
---@return AvatarAPI.animationComplexityLimit
function AvatarAPI:getMaxAnimationComplexity() end

---Gets the maximum complexity the viewing client allows this avatar to have.
---
---This is affected by the `Max Complexity` trust setting.
---@return AvatarAPI.complexityLimit
function AvatarAPI:getMaxComplexity() end

---Gets the maximum init instruction count the viewing client allows this avatar to have.
---
---This is affected by the `Init Instructions` trust setting.
---@return AvatarAPI.initLimit
function AvatarAPI:getMaxInitCount() end

---Gets the maximum particles/tick the viewing client allows this avatar to have.
---
---This is affected by the `Max Particles` trust setting.
---@return AvatarAPI.particleLimit
function AvatarAPI:getMaxParticles() end

---Gets the maximum `RENDER` and `POST_RENDER` instructions the viewing client allows this avatar to
---have.
---
---This is affected by the `Render Instructions` trust setting.
---@return AvatarAPI.renderLimit
function AvatarAPI:getMaxRenderCount() end

---Gets the maximum sounds/tick the viewing client allows this avatar to have.
---
---This is affected by the `Max Sounds` trust setting.
---@return AvatarAPI.soundLimit
function AvatarAPI:getMaxSounds() end

---Gets the maximum width/height the viewing client allows textures on this avatar to have.
---
---This is affected by the `Max Texture Size` trust setting.
---@return AvatarAPI.textureSizeLimit
function AvatarAPI:getMaxTextureSize() end

---Gets the maximum `TICK` instructions the viewing client allows this avatar to have.
---
---This is affected by the `Tick Instructions` trust setting.
---@return AvatarAPI.tickLimit
function AvatarAPI:getMaxTickCount() end

---Gets the maximum `WORLD_RENDER` and `POST_WORLD_RENDER` instructions the viewing client allows
---this avatar to have.
---
---This is affected by the `World Render Instructions` trust setting.
---@return AvatarAPI.worldRenderLimit
function AvatarAPI:getMaxWorldRenderCount() end

---Gets the maximum `WORLD_TICK` instructions the viewing client allows this avatar to have.
---
---This is affected by the `World Tick Instructions` trust setting.
---@return AvatarAPI.worldTickLimit
function AvatarAPI:getMaxWorldTickCount() end

---Gets the name of this avatar.
---
---Returns the name of the containing folder if no name is found.
---@return string
function AvatarAPI:getName() end

---Gets the amount of particles remaining for this avatar on the viewing client.
---
---This resets every tick.
---@return integer
function AvatarAPI:getRemainingParticles() end

---Gets the amount of sounds remaining for this avatar on the viewing client.
---
---This resets every tick.
---@return integer
function AvatarAPI:getRemainingSounds() end

---Gets the amount of instructions run in the `RENDER` and `POST_RENDER` events.
---
---This value only updates after the `RENDER` and `POST_RENDER` events have run.
---@return integer
function AvatarAPI:getRenderCount() end

---Gets the size of this avatar in bytes.
---@return integer
function AvatarAPI:getSize() end

---Gets the amount of instructions run in the `TICK` event
---
---This value only updates after the `TICK` event has run.
---@return integer
function AvatarAPI:getTickCount() end

---Gets the trust level of the avatar on the viewing client.
---@return AvatarAPI.trustLevel
function AvatarAPI:getTrustLevel() end

---Gets the UUID of this avatar's owner.
---@return string
function AvatarAPI:getUUID() end

---Gets the recommended Figura version of this avatar.
---
---This is affected by the `version` metadata.
---@return Figura.version | Figura.versionWithMC
function AvatarAPI:getVersion() end

---Gets the amount of instructions run in the `WORLD_RENDER` and `POST_WORLD_RENDER` events.
---
---This value only updates after the `WORLD_RENDER` and `POST_WORLD_RENDER` events have run.
---@return integer
function AvatarAPI:getWorldRenderCount() end

---Gets the amount of instructions run in the `WORLD_TICK` events.
---
---This value only updates after the `WORLD_TICK` event has run.
---@return integer
function AvatarAPI:getWorldTickCount() end

---Gets if this avatar's script has errored...
---
---I'll let you figure out why this is useless.
---@*hidden Useless. The script is unable to run this function if it has errored.
---@return false
function AvatarAPI:hasScriptError() end

---Gets if this avatar contains a texture.
---@return boolean
function AvatarAPI:hasTexture() end


---===== SETTERS =====---

---Sets the color theme of your avatar.
---
---This will set the color of the avatar's metadata in the wardrobe screen and the Mark on the
---nameplate.
---
---If `color` is `nil`, it will default to white.
---@param color Vector3
function AvatarAPI:setColor(color) end

---If `r`, `g`, or `b` are `nil` they will default to `1`.
---@param r number
---@param g number
---@param b number
function AvatarAPI:setColor(r, g, b) end


---===== CHAINED =====---

---Sets the color theme of your avatar.
---
---This will set the color of the avatar's metadata in the wardrobe screen and the Mark on the
---nameplate.
---
---If `color` is `nil`, it will default to white.
---@generic self
---@param self self
---@param color Vector3
---@return self
function AvatarAPI:color(color) end

---If `r`, `g`, or `b` are `nil` they will default to `1`.
---@generic self
---@param self self
---@param r number
---@param g number
---@param b number
---@return self
function AvatarAPI:color(r, g, b) end
