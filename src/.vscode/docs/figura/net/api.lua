---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  NETWORKINGAPI                                                                                                   ---
---==================================================================================================================---

---A container for networking functions.
---@class NetworkingAPI
---@field http HttpAPI
---|@field socket SocketAPI
local NetworkingAPI


---===== GETTERS =====---

---Checks if the given link is allowed by the client.
---@param link string
---@return boolean
---@nodiscard
function NetworkingAPI:isLinkAllowed(link) end

---Checks if the client allows networking features.
---@return boolean
---@nodiscard
function NetworkingAPI:isNetworkingAllowed() end


---==================================================================================================================---
---  HTTPAPI                                                                                                         ---
---==================================================================================================================---

---A container for HTTP functions.
---@class HttpAPI
local HttpAPI


---===== METHODS =====---

---Creates a new request builder.
---@param uri string
---@return HttpRequestBuilder
---@nodiscard
function HttpAPI:request(uri) end

--[[
---==================================================================================================================---
---  SOCKETAPI                                                                                                       ---
---==================================================================================================================---

---A container for socket functions.
---@class SocketAPI
local SocketAPI


---===== METHODS =====---

---Opens a new socket.
---@param host string
---@param port integer
---@return Future.Socket
function HttpAPI:open(host, port) end
--]]


