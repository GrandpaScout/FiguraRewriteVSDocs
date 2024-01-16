---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  KEYBIND                                                                                                         ---
---==================================================================================================================---

---A custom keybind that can trigger code.
---@class Keybind
---The function this keybind should execute when the key is pressed.
---
---If `true` is returned, block any Minecraft keybind bound to the same key as this keybind.
---@field press Keybind.func
---The function this keybind should execute when the key is released.
---
---If `true` is returned, block any Minecraft keybind bound to the same key as this keybind.
---@field release Keybind.func
local Keybind


---===== GETTERS =====---

---Gets the numeric ID of the key this keybind is bound to.
---@return Minecraft.keyID
---@nodiscard
function Keybind:getID() end

---Gets the key code this keybind tracks.
---@return Minecraft.keyCode
---@nodiscard
function Keybind:getKey() end

---Gets the name of the key this keybind tracks.
---
---The return value should be meant for display purposes as it will change depending on language.
---@return string
---@nodiscard
function Keybind:getKeyName() end

---Gets the name of this keybind.
---@return string
---@nodiscard
function Keybind:getName() end

---Gets if the key that this keybind tracks has not been changed with `:setKey()` or the keybinds menu.
---@return boolean
---@nodiscard
function Keybind:isDefault() end

---Gets if this keybind should be processed at all.
---@return boolean
---@nodiscard
function Keybind:isEnabled() end

---Gets if this keybind should be processed while a gui is open.
---@return boolean
---@nodiscard
function Keybind:isGuiEnabled() end

---Gets whether this key is currently pressed down.
---@return boolean
---@nodiscard
function Keybind:isPressed() end


---===== SETTERS =====---

---Sets if this keybind should be processed at all.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Keybind:setEnabled(state) end

---Sets if this keybind should be processed while a GUI is open.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Keybind:setGUI(state) end

---Sets the key that this keybind tracks.
---@generic self
---@param self self
---@param key Minecraft.keyCode
---@return self
function Keybind:setKey(key) end

---Sets the function this keybind should run when pressed.
---
---If `true` is returned from the given function, any Minecraft keybinds bound to the same key as this keybind are
---blocked.
---@generic self
---@param self self
---@param func? Keybind.func
---@return self
function Keybind:setOnPress(func) end

---Sets the function this keybind should run when released.
---
---If `true` is returned from the given function, any Minecraft keybinds bound to the same key as this keybind are
---blocked.
---@generic self
---@param self self
---@param func? Keybind.func
---@return self
function Keybind:setOnRelease(func) end


---===== CHAINED =====---

---Sets if this keybind should be processed at all.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Keybind:enabled(state) end

---Sets if this keybind should be processed while a GUI is open.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Keybind:gui(state) end

---Sets the key that this keybind tracks.
---@generic self
---@param self self
---@param key Minecraft.keyCode
---@return self
function Keybind:key(key) end

---Sets the function this keybind should run when pressed.
---
---If `true` is returned from the given function, any Minecraft keybinds bound to the same key as this keybind are
---blocked.
---@generic self
---@param self self
---@param func? Keybind.func
---@return self
function Keybind:onPress(func) end

---Sets the function this keybind should run when released.
---
---If `true` is returned from the given function, any Minecraft keybinds bound to the same key as this keybind are
---blocked.
---@generic self
---@param self self
---@param func? Keybind.func
---@return self
function Keybind:onRelease(func) end
