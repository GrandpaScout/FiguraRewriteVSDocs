---@meta

---Loads the given module, returns any value returned by the given module (`true` when `nil`).
---
---`backup` is run if module `modname` does not exist.
---
---~~[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-require"])~~  
---This function has been modified by Figura and does not work how it does in normal Lua 5.2.
---@param modname string
---@return unknown ...
function require(modname) end

---@generic module: string
---@param modname module
---@param backup fun(modname: module): unknown
---@return unknown ...
function require(modname, backup) end
