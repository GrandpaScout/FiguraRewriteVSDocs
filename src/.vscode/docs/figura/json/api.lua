---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  JSONAPI                                                                                                         ---
---==================================================================================================================---

---Contains functions for working with JSON.
---
---For more Lua-like handling of JSON, see `toJson()` and `parseJson()`.
---@class JsonAPI
local JsonAPI


---===== METHODS =====---

---Creates a new JSON array.
---@return JsonArray
---@nodiscard
function JsonAPI.newArray() end

---Creates a new JSON Builder.
---@return JsonBuilder
---@nodiscard
function JsonAPI.newBuilder() end

---Creates a new JSON object.
---@return JsonObject
---@nodiscard
function JsonAPI.newObject() end


---===== GETTERS =====---

---Checks if a value can be serialized in JSON.
---@param value any
---@return boolean
---@nodiscard
function JsonAPI.isSerializable(value) end
