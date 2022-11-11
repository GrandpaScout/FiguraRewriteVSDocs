---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  CONFIGAPI                                                                                   ---
---==============================================================================================---

---An API for storing and loading information between avatar sessions.
---@class ConfigAPI
local ConfigAPI


---===== METHODS =====---

---Loads the given key from the active config file.  
---If no key is given, the entire config file is loaded.
---@return {[string]?: ConfigAPI.validType}
function ConfigAPI:load() end

---@param key string
---@return ConfigAPI.validType?
function ConfigAPI:load(key) end

---Sets the active config file.
---
---`<ConfigAPI>:load()` and `<ConfigAPI>:save()` will read and write to the active config file.
---@param name string
function ConfigAPI:name(name) end

---Saves the given key and value to the active config file.
---
---If `value` is `nil`, the key is removed from the config.
---@param key string
---@param value? ConfigAPI.validType
function ConfigAPI:save(key, value) end
