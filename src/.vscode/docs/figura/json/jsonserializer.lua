---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  JSONSERIALIZER                                                                                                  ---
---==================================================================================================================---

---An object that serializes Lua to JSON and deserializes JSON to Lua using the settings defined by the JSON builder
---that built this object.
---@class JsonSerializer
local JsonSerializer


---===== METHODS =====---

---Deserializes the given JSON string to a Lua value.
---@param json string
---@return any
---@nodiscard
function JsonSerializer:deserialize(json) end

---Serializes the given Lua value to a JSON string.
---@param value any
---@return string
---@nodiscard
function JsonSerializer:serialize(value) end
