---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  CONFIGAPI                                                                                                       ---
---==================================================================================================================---

---An API for storing and loading information between avatar sessions.
---@class ConfigAPI
local ConfigAPI


---===== METHODS =====---

---Loads the entire active config file.
---@return {[string]?: ConfigAPI.validType}
---@nodiscard
function ConfigAPI:load() end

---Loads the given key from the active config file.
---@param key string
---@return ConfigAPI.validType?
---@nodiscard
function ConfigAPI:load(key) end

---Saves the given key and value to the active config file.
---
---If `value` is `nil`, the key is removed from the config.
---@generic self
---@param self self
---@param key string
---@param value? ConfigAPI.validType
---@return self
function ConfigAPI:save(key, value) end


---===== GETTERS =====---

---Gets the name of the active config file.
---@return string
---@nodiscard
function ConfigAPI:getName() end


---===== SETTERS =====---

---Sets the active config file.
---
---`<ConfigAPI>:load()` and `<ConfigAPI>:save()` will read and write to the active config file.
---@generic self
---@param self self
---@param name string
---@return self
function ConfigAPI:setName(name) end


---===== CHAINED =====---

---Sets the active config file.
---
---`<ConfigAPI>:load()` and `<ConfigAPI>:save()` will read and write to the active config file.
---@generic self
---@param self self
---@param name string
---@return self
function ConfigAPI:name(name) end
