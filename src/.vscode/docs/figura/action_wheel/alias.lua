---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ACTION                                                                                      ---
---==============================================================================================---

---A function used by a ClickAction when it is clicked.
---@alias Action.clickFunc fun(self?: Action)

---A function used by a ToggleAction when it is toggled on.
---@alias Action.toggleFunc fun(state?: boolean, self?: Action)

---A function used by a ToggleAction when it is toggled off.
---@alias Action.untoggleFunc fun(state?: false, self?: Action)

---A function used by a ScrollAction when it is scrolled.
---@alias Action.scrollFunc fun(dir?: number, self?: Action)


---==============================================================================================---
---  PAGE                                                                                        ---
---==============================================================================================---

---@alias Page.index 1|2|3|4|5|6|7|8
