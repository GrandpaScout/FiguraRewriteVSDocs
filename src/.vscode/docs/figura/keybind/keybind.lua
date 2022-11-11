---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  KEYBIND                                                                                     ---
---==============================================================================================---

---@class Keybind
---Determines if this keybind should be processed.
---@field enabled boolean
---Determines if this keybind should be processed while a GUI is open.
---@field gui boolean
---The function this keybind should execute when the key is pressed.
---
---If `true` is returned. Block any Minecraft keybind bound to the same key as this keybind.
---<!--
---@field onPress Keybind.func
---The function this keybind should execute when the key is released.
---
---If `true` is returned. Block any Minecraft keybind bound to the same key as this keybind.
---<!--
---@field onRelease Keybind.func
local Keybind


---===== GETTERS =====---

---Gets the key code this keybind tracks.
---@return Minecraft.keyCode
function Keybind:getKey() end

---Gets the name of the key this keybind tracks.
---
---Do not rely too much on the return value as it will change depending on language.
---@return Minecraft.keyName
function Keybind:getKeyName() end

---Gets the name of this keybind.
---@return string
function Keybind:getName() end

---Gets if the key that this keybind tracks has not been changed with `:setKey()` or the keybinds
---menu.
---@return boolean
function Keybind:isDefault() end

---Gets whether this key is currently pressed down.
---@return boolean
function Keybind:isPressed() end


---===== SETTERS =====---

---Sets the key that this keybind tracks.
---@param key Minecraft.keyCode
function Keybind:setKey(key) end
