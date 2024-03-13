---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  NETWORKINGAPI                                                                                                   ---
---==================================================================================================================---

---A container for file IO functions.
---@class FileAPI
local FileAPI


---===== METHODS =====---

---Deletes the file or directory at the given path.  
---Returns `true` if successful.
---@param path string
---@return boolean
function FileAPI:delete(path) end

---Checks if the given path exists.
---@param path string
---@return boolean
---@nodiscard
function FileAPI:exists(path) end

---Gets a list of all file and directory names at the given path.  
---Returns `nil` if the given path is not a directory.
---@param path string
---@return string[]
---@nodiscard
function FileAPI:list(path) end

---Creates a new directory at the given path.  
---Returns `true` if successful.
---@param path string
---@return boolean
function FileAPI:mkdir(path) end

---Recursively create new directories until the given path.  
---Returns `true` if successful.
---@param path string
---@return boolean
function FileAPI:mkdirs(path) end

---Opens a new input stream for the file at the given path.
---@*vmerror If path is not file.
---@param path string
---@return InputStream
---@nodiscard
function FileAPI:openReadStream(path) end

---Opens a new output stream for the file at the given path.
---@*vmerror If path is a directory.
---@param path string
---@return OutputStream
---@nodiscard
function FileAPI:openWriteStream(path) end

---Reads the file at the given path as a string.
---
---If `encoding` is `nil`, it will default to `"utf8"`.
---@*vmerror If path is not file.
---@param path string
---@param encoding? Buffer.encoding
---@return string
---@nodiscard
function FileAPI:readString(path, encoding) end

---Writes the given string to the file at the given path.
---
---If `encoding` is `nil`, it will default to `"utf8"`.
---@*vmerror If path is a directory.
---@param path string
---@param value string
---@param encoding? Buffer.encoding
function FileAPI:writeString(path, value, encoding) end


---===== GETTERS =====---

---Gets if file IO is available on this avatar.
---@return boolean
---@nodiscard
function FileAPI:allowed() end

---Gets if the given path is a directory.
---@param path string
---@return boolean
---@nodiscard
function FileAPI:isDirectory(path) end

---Gets if the given path is a directory.
---@param path string
---@return boolean
---@nodiscard
function FileAPI:isFile(path) end

---Gets if the given path can be accessed.
---@param path string
---@return boolean
---@nodiscard
function FileAPI:isPathAllowed(path) end


