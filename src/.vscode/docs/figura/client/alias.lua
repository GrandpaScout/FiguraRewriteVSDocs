---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  CLIENTAPI                                                                                   ---
---==============================================================================================---

---A version comparison result.
---@alias ClientAPI.comparison
---| -1 # compare < to
---| 0  # compare == to
---| 1  # compare > to

---A table of server information.
---@class ClientAPI.serverData
---The IP of the server. This might not exist, such as when in singleplayer.
---@field ip? string
---The name of the server.
---@field name string
---The server's Message of the Day.
---@field motd string
