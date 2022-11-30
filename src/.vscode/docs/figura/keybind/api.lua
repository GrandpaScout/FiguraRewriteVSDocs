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
---local kb_var = <KeybindAPI>:create("Keybind Name", "key.keyboard.keyid")
---```
---Keybinds can be bound to run lua code with:
---```
---function kb_var.onPress()
---  print("hello world")
---end
---
---function kb_var.onRelease()
---  print("goodbye world")
---end
---```
---@class KeybindAPI
local KeybindAPI


---===== METHODS =====---

---Creates a new keybind.
---
---Setting `gui` will allow the newly-created keybind to work while GUIs are open while setting
---`override` will stop all vanilla keybinds that are bound to the same key.
---
---If `gui` or `override` are `nil`, they will default to `false`.
---@param name string
---@param key Minecraft.keyCode
---@param gui? boolean
---@param override? boolean
---@return Keybind
function KeybindAPI:newKeybind(name, key, gui, override) end


---===== GETTERS =====---

---Gets the key code of the key bound to a Minecraft keybind.
---@param keybind Minecraft.keybind
---@return Minecraft.keyCode
function KeybindAPI:getVanillaKey(keybind) end
