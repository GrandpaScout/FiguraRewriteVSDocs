---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ACTIONWHEELAPI                                                                                                  ---
---==================================================================================================================---

---@alias ActionWheelAPI.index 1|2|3|4|5|6|7|8

---@alias ActionWheelAPI.clickFunc fun(): boolean?

---@alias ActionWheelAPI.scrollFunc fun(dir?: number): boolean?


---==================================================================================================================---
---  ACTION                                                                                                          ---
---==================================================================================================================---

---@alias Action.clickFunc fun(self?: Action)

---@alias Action.toggleFunc fun(state?: boolean, self?: Action)

---@alias Action.untoggleFunc fun(state?: false, self?: Action)

---@alias Action.scrollFunc fun(dir?: number, self?: Action)
