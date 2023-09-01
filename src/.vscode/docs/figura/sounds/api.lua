---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  SOUNDAPI-INTERNAL                                                                                               ---
---==================================================================================================================---

---**INTERNAL CLASS**&emsp;*Do not use this!*
---
---Contains generic string field for indexing.
---@class SoundAPI.*INTERNAL*
---@field [string] Sound


---==================================================================================================================---
---  SOUNDAPI                                                                                                        ---
---==================================================================================================================---

---An API for playing and adding sounds.
---
---Indexing this API with a string that does not result in a method will return a `Sound` object.
---This object can then be run with `<Sound>:play()`.
---@class SoundAPI: SoundAPI.*INTERNAL*
local SoundAPI


---===== METHODS =====---

---Checks if the given sound id exists.
---@param id string
---@return boolean
---@nodiscard
function SoundAPI:isPresent(id) end

---Registers a new sound with the given name and data.  
---`data` may either be a byte array or a base64 string.
---@param name string
---@param data string | integer[]
function SoundAPI:newSound(name, data) end

---Plays a sound at the given position.
---
---If `volume` is below `1`, it will change the actual volume of the sound. If it is above `1`, it
---will only multiply the distance the sound can be heard from.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.  
---If `volume` or `pitch` are `nil`, they will default to `1`.  
---If `loop` is `nil`, it will default to `false`
---@param sound Minecraft.soundID
---@param pos? Vector3
---@param volume? number
---@param pitch? number
---@param loop? boolean
function SoundAPI:playSound(sound, pos, volume, pitch, loop) end

---Plays a sound at the given position.
---
---If `volume` is below `1`, it will change the actual volume of the sound. If it is above `1`, it
---will only multiply the distance the sound can be heard from.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.  
---If `volume` or `pitch` are `nil`, they will default to `1`.  
---If `loop` is `nil`, it will default to `false`
---@param sound Minecraft.soundID
---@param x? number
---@param y? number
---@param z? number
---@param volume? number
---@param pitch? number
---@param loop? boolean
function SoundAPI:playSound(sound, x, y, z, volume, pitch, loop) end

---Stops sounds that the avatar played.  
---`sound` is the name of the sound to stop.
---
---If `sound` is `nil`, all sounds are stopped.
---@generic self
---@param self self
---@param sound? Minecraft.soundID
---@return self
function SoundAPI:stopSound(sound) end


---===== GETTERS =====---

---Gets a list of the names of all custom sounds found in the avatar.
---@return string[]
---@nodiscard
function SoundAPI:getCustomSounds() end
