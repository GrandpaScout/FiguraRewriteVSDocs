---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  AVATARAPI                                                                                                       ---
---==================================================================================================================---

---An API mainly used for getting avatar metadata.
---
---> ***
---
---This API contains many getters for avatar metadata and avatar resources.
---
---Avatar metadata includes the data in the `avatar.json` file, the total size of the avatar, and the existence of
---certain types of files.
---
---Avatar resources include current/max script instructions and current/max model & animation complexity.
---
---This API also controls avatar variables through `<AvatarAPI>:store()`.
---@class AvatarAPI
local AvatarAPI


---===== METHODS =====---

---Stores a value on the avatar.
---
---Other avatars can access this value by using the following function:
---```lua
---<Player>:getVariable(key)
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
---Will result in the host seeing `"dos"` in avatar variable `"es_num"` and all other clients seeing `"uno"` in avatar
---variable `"es_num"`.
---@generic self
---@param self self
---@param key string
---@param value? any
---@return self
function AvatarAPI:store(key, value) end


---===== GETTERS =====---

---Gets if the viewing client allows this avatar to change the nameplate.
---
---This is affected by the `Nameplate Change` permission.
---@return boolean
---@nodiscard
function AvatarAPI:canEditNameplate() end

---Gets if the viewing client allows this avatar to change the vanilla player model.
---
---This is affected by the `Vanilla Model Change` permission.
---@return boolean
---@nodiscard
function AvatarAPI:canEditVanillaModel() end

---Gets if the viewing client allows this avatar to have a custom head.
---
---This is affected by the `Custom Player Skull` permission.
---@return boolean
---@nodiscard
function AvatarAPI:canHaveCustomSkull() end

---Gets if the viewing client allows this avatar to render while it is offscreen.
---
---This is affected by the `Render Offscreen` permission.
---@return boolean
---@nodiscard
function AvatarAPI:canRenderOffscreen() end

---Gets if the viewing client allows this avatar to play custom sounds.
---
---This is affected by the `Custom Sounds` permission.
---@return boolean
---@nodiscard
function AvatarAPI:canUseCustomSounds() end

---Gets the number of currently playing animation channels in this avatar.
---@return integer
---@nodiscard
function AvatarAPI:getAnimationComplexity() end

---Gets the author(s) of this avatar.
---
---This is affected by the `author` and `authors` metadata.  
---If the `authors` array is used, all authors will be separated by a single line feed.
---
---Returns `"?"` if no authors are found.
---@return string
---@nodiscard
function AvatarAPI:getAuthors() end

---Gets the characters that make up the avatar's badges.
---@return string
---@nodiscard
function AvatarAPI:getBadges() end

---Gets the color of this avatar.
---
---This is affected by the `color` metadata.
---
---Returns `nil` if no color has been set.
---@return string?
---@nodiscard
function AvatarAPI:getColor() end

---Gets the amount of tris that are currently visible on this avatar.
---@return integer
---@nodiscard
function AvatarAPI:getComplexity() end

---Gets the current instruction count in the current context or event.
---
---Instructions make up the bytecode that Lua runs.
---@return integer
---@nodiscard
function AvatarAPI:getCurrentInstructions() end

---Gets the amount of instructions run in the `ENTITY_INIT` event.
---
---This value is only updated after the `ENTITY_INIT` event has run.
---@return integer
---@nodiscard
function AvatarAPI:getEntityInitCount() end

---Gets the name of the entity wearing this avatar.
---@return string
---@nodiscard
function AvatarAPI:getEntityName() end

---Gets the amount of instructions run in init.
---
---This value is only updated after init has run.
---@return integer
---@nodiscard
function AvatarAPI:getInitCount() end

---Gets the maximum animation complexity the viewing client allows this avatar to have.
---
---This is affected by the `Animation Complexity` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxAnimationComplexity() end

---Gets the maximum animation instruction count the viewing client allows this avatar to have.
---
---This is affected by the `Animation Instructions` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxAnimationCount() end

---Gets the maximum complexity the viewing client allows this avatar to have.
---
---This is affected by the `Max Complexity` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxComplexity() end

---Gets the maximum init instruction count the viewing client allows this avatar to have.
---
---This is affected by the `Init Instructions` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxInitCount() end

---Gets the maximum particles per tick the viewing client allows this avatar to have.
---
---This is affected by the `Max Particles` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxParticles() end

---Gets the maximum `RENDER` and `POST_RENDER` instructions the viewing client allows this avatar to have.
---
---This is affected by the `Render Instructions` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxRenderCount() end

---Gets the maximum sounds/tick the viewing client allows this avatar to have.
---
---This is affected by the `Max Sounds` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxSounds() end

---Gets the maximum width/height the viewing client allows textures created by this avatar's script to have.
---
---This is affected by the `Max Texture Size` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxTextureSize() end

---Gets the maximum `TICK` instructions the viewing client allows this avatar to have.
---
---This is affected by the `Tick Instructions` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxTickCount() end

---Gets the maximum `WORLD_RENDER` and `POST_WORLD_RENDER` instructions the viewing client allows this avatar to have.
---
---This is affected by the `World Render Instructions` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxWorldRenderCount() end

---Gets the maximum `WORLD_TICK` instructions the viewing client allows this avatar to have.
---
---This is affected by the `World Tick Instructions` permission.
---@return integer
---@nodiscard
function AvatarAPI:getMaxWorldTickCount() end

---Gets the NBT representation of this avatar.
---@return table
---@nodiscard
function AvatarAPI:getNBT() end

---Gets the name of this avatar.
---
---Returns the name of the containing folder if no name is found.
---@return string
---@nodiscard
function AvatarAPI:getName() end

---Gets this avatar's permission level on the viewing client.  
---This is not a perfect indicator for what features the avatar has access to as a client can change the limits of a
---permission level on their client.
---
---If you want more precise values, check the other methods in `AvatarAPI`.
---@return AvatarAPI.permissionLevel
---@nodiscard
function AvatarAPI:getPermissionLevel() end

---Gets the amount of particles remaining for this avatar on the viewing client.
---
---This resets every tick.
---@return integer
---@nodiscard
function AvatarAPI:getRemainingParticles() end

---Gets the amount of sounds remaining for this avatar on the viewing client.
---
---This resets every tick.
---@return integer
---@nodiscard
function AvatarAPI:getRemainingSounds() end

---Gets the amount of instructions run in the `RENDER` and `POST_RENDER` events.
---
---This value only updates after the `RENDER` and `POST_RENDER` events have run.
---@return integer
---@nodiscard
function AvatarAPI:getRenderCount() end

---Gets the size of this avatar in bytes.
---@return integer
---@nodiscard
function AvatarAPI:getSize() end

---Gets the amount of instructions run in the `TICK` event
---
---This value only updates after the `TICK` event has run.
---@return integer
---@nodiscard
function AvatarAPI:getTickCount() end

---Gets the UUID of this avatar's owner.
---@return string
---@nodiscard
function AvatarAPI:getUUID() end

---Gets the recommended Figura version of this avatar.
---
---This is affected by the `version` metadata.
---@return Figura.version | Figura.versionWithMC
---@nodiscard
function AvatarAPI:getVersion() end

---Gets the volume of this avatar on the viewing client as an integer from 0 to 100.
---@*error Missing doc string.
---@return integer
---@nodiscard
function AvatarAPI:getVolume() end

---Gets the amount of instructions run in the `WORLD_RENDER` and `POST_WORLD_RENDER` events.
---
---This value only updates after the `WORLD_RENDER` and `POST_WORLD_RENDER` events have run.
---@return integer
---@nodiscard
function AvatarAPI:getWorldRenderCount() end

---Gets the amount of instructions run in the `WORLD_TICK` events.
---
---This value only updates after the `WORLD_TICK` event has run.
---@return integer
---@nodiscard
function AvatarAPI:getWorldTickCount() end

---Gets if this avatar's script has errored.
---
---This can be used by other avatars (if this avatar reveals it with `:store()`) to check if another user's Avatar has
---failed.
---@return boolean
---@nodiscard
function AvatarAPI:hasScriptError() end

---Gets if this avatar contains a texture.
---@return boolean
---@nodiscard
function AvatarAPI:hasTexture() end


---===== SETTERS =====---

---Sets the color theme of your avatar or the given badge.
---
---The color theme of the avatar colors the metadata in the wardrobe screen and the Figura mark on the nameplate.
---
---If `color` is `nil`, it will default to white.
---@generic self
---@param self self
---@param color? Vector3
---@param badge? AvatarAPI.badge
---@return self
function AvatarAPI:setColor(color, badge) end

---Sets the color theme of your avatar or the given badge.
---
---The color theme of the avatar colors the metadata in the wardrobe screen and the Figura mark on the nameplate.
---
---If `r`, `g`, or `b` are `nil` they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param badge? AvatarAPI.badge
---@return self
function AvatarAPI:setColor(r, g, b, badge) end


---===== CHAINED =====---

---Sets the color theme of your avatar or the given badge.
---
---The color theme of the avatar colors the metadata in the wardrobe screen and the Figura mark on the nameplate.
---
---If `color` is `nil`, it will default to white.
---@generic self
---@param self self
---@param color? Vector3
---@param badge? AvatarAPI.badge
---@return self
function AvatarAPI:color(color, badge) end

---Sets the color theme of your avatar or the given badge.
---
---The color theme of the avatar colors the metadata in the wardrobe screen and the Figura mark on the nameplate.
---
---If `r`, `g`, or `b` are `nil` they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param badge? AvatarAPI.badge
---@return self
function AvatarAPI:color(r, g, b, badge) end
