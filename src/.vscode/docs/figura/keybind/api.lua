---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  KEYBINDAPI                                                                                  ---
---==============================================================================================---

---A custom keybind that can trigger code.
---
---> ***
---
---Create a new keybind with:
---```lua
---local kb_var = <KeybindAPI>:create("Keybind Name", "key.keyboard.keycode")
---```
---Keybinds can be bound to run lua code with:
---```
---function kb_var:onPress(function()
---  print("hello world")
---end)
---
---function kb_var:onRelease(function()
---  print("goodbye world")
---end)
---```
---@class KeybindAPI
local KeybindAPI


---===== METHODS =====---

---Creates a new keybind that is automatically bound to the Minecraft keybind given.
---@param keybind Minecraft.keybind
---@return Keybind
function KeybindAPI:fromVanilla(keybind) end

---Creates a new keybind.  
---Setting `gui` will allow the newly-created keybind to work while GUIs are open.
---
---If `key` is `nil`, it will default to `"key.keyboard.unknown"`.  
---If `gui` is `nil`, it will default to `false`.
---@param name string
---@param key? Minecraft.keyCode
---@param gui? boolean
---@return Keybind
function KeybindAPI:newKeybind(name, key, gui, override) end

---Alias of `<KeybindAPI>:newKeybind`.
---> ***
---> Creates a new keybind.  
---> Setting `gui` will allow the newly-created keybind to work while GUIs are open.
---> ***
---
---If `key` is `nil`, it will default to `"key.keyboard.unknown"`.  
---If `gui` is `nil`, it will default to `false`.
---@param name string
---@param key? Minecraft.keyCode
---@param gui? boolean
---@return Keybind
function KeybindAPI:of(name, key, gui) end

---===== GETTERS =====---

---Gets the key code of the key bound to a Minecraft keybind.
---@param keybind Minecraft.keybind
---@return Minecraft.keyCode
function KeybindAPI:getVanillaKey(keybind) end
