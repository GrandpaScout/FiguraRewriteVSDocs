---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  PAGE                                                                                        ---
---==============================================================================================---

---A page of actions for use in the action wheel.
---@class Page
local Page


---===== METHODS =====---

---Creates a new `Action` inside of this page.
---
---If `index` is `nil`, the action will be placed in the first available spot.
---@param index? Page.index
---@return Action
function Page:newAction(index) end


---===== GETTERS =====---

---Gets the action at the given index in this page.
---@param index Page.index
---@return Action?
function Page:getAction(index) end


---===== SETTERS =====---

---Sets the given index of this page to the given action.
---@param index Page.index
---| -1 # Put in the first open slot.
---@param action? Action
function Page:setAction(index, action) end
