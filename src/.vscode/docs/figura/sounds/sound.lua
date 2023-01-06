---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  SOUND                                                                                       ---
---==============================================================================================---

---A Minecraft or Figura sound.
---
---Allows for an OOP way to handle sounds.
---@class Sound
local Sound


---===== METHODS =====---

---Pauses the playback of this sound.
---@*error Doesn't actually do anything.
---@generic self
---@param self self
---@return self
function Sound:pause() end

---Plays or resumes this sound.
---@generic self
---@param self self
---@return self
function Sound:play() end

---Stops all playback of this sound.
---@generic self
---@param self self
---@return self
function Sound:stop() end


---===== GETTERS =====---

---Gets the multiplier for the distance this sound can be heard from.
---@return number
function Sound:getAttenuation() end

---Gets the pitch of this sound.
---@return number
function Sound:getPitch() end

---Gets the position of this sound.
---@return Vector3
function Sound:getPos() end

---Gets the volume of this sound.
---@return number
function Sound:getVolume() end

---Gets if this sound is looping.
---@return boolean
function Sound:isLooping() end

---Gets if this sound is currently playing.
---@return boolean
function Sound:isPlaying() end


---===== SETTERS =====---

---Sets the multiplier for the distance this sound can be heard from.  
---Minimum value is `1`.
---
---If `mul` is `nil`, it will default to `1`.
---@param mul? number
function Sound:setAttenuation(mul) end

---Sets if this sound should loop.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function Sound:setLoop(state) end

---Sets the pitch of this sound.
---
---If `pitch` is `nil`, it will default to `0`.
---@*error Sounds with `0` pitch will run forever.
---@param pitch? number
function Sound:setPitch(pitch) end

---Sets the position of this sound.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`
---@param pos? Vector3
function Sound:setPos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`
---@param x? number
---@param y? number
---@param z? number
function Sound:setPos(x, y, z) end

---Sets the volume of this sound.  
---Maximum value is `1`.
---
---If `vol` is `nil`, it will default to `0`.
---@param vol? number
function Sound:setVolume(vol) end


---===== CHAINED =====---

---Sets the multiplier for the distance this sound can be heard from.  
---Minimum value is `1`.
---
---If `mul` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param mul? number
---@return self
function Sound:attenuation(mul) end

---Sets if this sound should loop.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Sound:loop(state) end

---Sets the pitch of this sound.
---
---If `pitch` is `nil`, it will default to `0`.
---@*error Sounds with `0` pitch will run forever.
---@generic self
---@param self self
---@param pitch? number
---@return self
function Sound:pitch(pitch) end

---Sets the position of this sound.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function Sound:pos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function Sound:pos(x, y, z) end

---Sets the volume of this sound.  
---Maximum value is `1`.
---
---If `vol` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param vol? number
---@return self
function Sound:volume(vol) end
