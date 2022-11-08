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

---Plays this sound at the given position.
---
---If `volume` is below `1`, it will change the actual volume of the sound. If it is above `1`, it
---will only multiply the distance the sound can be heard from.
---
---If `pos` is `nil`, it will default to `{0, 0, 0}`.  
---If `volume` or `pitch` are `nil`, they will default to `1`.  
---If `loop` is `nil`, it will default to `false`
---@param pos? Vector3
---@param volume? number
---@param pitch? number
---@param loop? boolean
function Sound:play(pos, volume, pitch, loop) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.  
---If `volume` or `pitch` are `nil`, they will default to `1`.  
---If `loop` is `nil`, it will default to `false`
---@param x? number
---@param y? number
---@param z? number
---@param volume? number
---@param pitch? number
---@param loop? boolean
function Sound:play(x, y, z, volume, pitch, loop) end
