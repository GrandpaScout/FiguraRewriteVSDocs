---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  PAGE                                                                                        ---
---==============================================================================================---

---A page of actions for use in the action wheel.
---@class Page
local Page


---===== METHODS =====---

---Creates a new `ClickAction` inside of this page.
---
---If `index` is `nil`, the action will be placed in the first available spot.
---@param index? Page.index
---@return ClickAction
function Page:newAction(index) end

---Creates a new `ToggleAction` inside of this page.
---
---If `index` is `nil`, the action will be placed in the first available spot.
---@param index? Page.index
---@return ClickAction
function Page:newToggle(index) end

---Creates a new `ScrollAction` inside of this page.
---
---If `index` is `nil`, the action will be placed in the first available spot.
---@param index? Page.index
---@return ClickAction
function Page:newScroll(index) end


---===== GETTERS =====---

---Gets the action at the given index in this page.
---@param index Page.index
---@return Action.any?
function Page:getAction(index) end


---===== SETTERS =====---

---Sets the given index of this page to the given action.
---@param index Page.index
---@param action? Action
function Page:setAction(index, action) end
