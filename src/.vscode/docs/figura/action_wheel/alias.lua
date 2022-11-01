---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ACTION                                                                                      ---
---==============================================================================================---

---A union of all Action sub-types.
---@alias Action.any ClickAction | ToggleAction | ScrollAction


---==============================================================================================---
---  CLICK ACTION extends ACTION                                                                 ---
---==============================================================================================---

---A function used by a ClickAction when it is clicked.
---@alias ClickAction.clickFunc fun()


---==============================================================================================---
---  TOGGLE ACTION extends ACTION                                                                ---
---==============================================================================================---

---A function used by a ToggleAction when it is toggled on.
---@alias ToggleAction.toggleFunc fun(state: boolean)
---A function used by a ToggleAction when it is toggled off.
---@alias ToggleAction.untoggleFunc fun(state: false)


---==============================================================================================---
---  SCROLL ACTION extends ACTION                                                                ---
---==============================================================================================---

---A function used by a ScrollAction when it is scrolled.
---@alias ScrollAction.scrollFunc fun(dir: integer)


---==============================================================================================---
---  PAGE                                                                                        ---
---==============================================================================================---

---@alias Page.index 1|2|3|4|5|6|7|8
