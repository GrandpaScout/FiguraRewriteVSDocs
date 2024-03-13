---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  RESOURCESAPI                                                                                                    ---
---==================================================================================================================---

---A container for functions involving Avatar resources.
---@*error Missing doc string.
---@class ResourcesAPI
local ResourcesAPI


---===== GETTERS =====---

---Gets an input stream containing the data of the avatar resource at the given path.
---
---Returns `nil` if path is not valid or file is not accessible.
---@param path string
---@return InputStream?
---@nodiscard
function ResourcesAPI:get(path) end

---Gets a list of paths for every file the Resources API can access.
---@return string[]
---@nodiscard
function ResourcesAPI:getPaths() end
