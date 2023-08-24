---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  HOSTAPI                                                                                                         ---
---==================================================================================================================---

---@class HostAPI.chatMessage
---The plain text of the message.
---@field message string
---The JSON object representing the message.
---@field json string
---The background color of the message as an integer.
---@field background integer
---The tick that this message was added to the chat.
---@field addedTime integer

---@class HostAPI.statusEffect
---The name of this status effect.
---@field name Minecraft.effectID
---The time left for this status effect in ticks.
---@field duration integer
---The level of this status effect.
---@field amplifier integer
---Determines if the particles of this status effect are visible.
---@field visible boolean
