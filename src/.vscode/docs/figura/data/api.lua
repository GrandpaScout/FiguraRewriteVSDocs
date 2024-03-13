---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  DATAAPI                                                                                                         ---
---==================================================================================================================---

---A container for data functions.
---@class DataAPI
local DataAPI


---===== METHODS =====---

---Creates a new buffer with the given capacity.
---
---If `capacity` is `nil`, it will defualt to `512`.
---@param capacity? integer
---@return Buffer
---@nodiscard
function DataAPI:createBuffer(capacity) end
