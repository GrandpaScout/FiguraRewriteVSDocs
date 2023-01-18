---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ACTIONWHEELAPI                                                                              ---
---==============================================================================================---

---@alias ActionWheelAPI.index 1|2|3|4|5|6|7|8

---A function used by a Action Wheel when it is clicked.
---@alias ActionWheelAPI.clickFunc fun(): boolean?

---A function used by the Action Wheel when it is scrolled.
---@alias ActionWheelAPI.scrollFunc fun(dir?: number): boolean?


---==============================================================================================---
---  ACTION                                                                                      ---
---==============================================================================================---

---A function used by an Action when it is clicked.
---@alias Action.clickFunc fun(self?: Action)

---A function used by an Action when it is toggled on.
---@alias Action.toggleFunc fun(state?: boolean, self?: Action)

---A function used by an Action when it is toggled off.
---@alias Action.untoggleFunc fun(state?: false, self?: Action)

---A function used by an Action when it is scrolled.
---@alias Action.scrollFunc fun(dir?: number, self?: Action)
