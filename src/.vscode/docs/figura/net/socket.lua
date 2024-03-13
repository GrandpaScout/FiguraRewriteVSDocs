---@meta _
---@diagnostic disable: duplicate-set-field

--[[ Hi, if you are here because you decided to snoop around and are wondering what this is, don't worry about it.
---==================================================================================================================---
---  SOCKET                                                                                                          ---
---==================================================================================================================---

---A socket.
---@class Socket
local Socket


---===== METHODS =====---

---Closes this socket.
function Socket:close() end


---===== GETTERS =====---

---Gets the host this socket is connected to.
---@return string
---@nodiscard
function Socket:getHost() end

---Gets the input stream bound to this socket.
---@return InputStream
---@nodiscard
function Socket:getInputStream() end

---Gets the output stream bound to this socket.
---@return OutputStream
---@nodiscard
function Socket:getOutputStream() end

---Gets the port this socket is connected to.
---@return integer
---@nodiscard
function Socket:getPort() end

---Gets if this socket is closed.
---@return boolean
---@nodiscard
function Socket:isClosed() end

---Gets if this socket is connected.
---@return boolean
---@nodiscard
function Socket:isConnected() end
--]]
