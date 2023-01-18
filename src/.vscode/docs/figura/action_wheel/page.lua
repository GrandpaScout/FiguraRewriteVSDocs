---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  PAGE                                                                                        ---
---==============================================================================================---

---A page of actions for use in the action wheel.
---@class Page
---Determines if the last active group should be kept when this page is not active.
---
---If this is `false`, the page will reset to group 1 when inactive.
---@field keepLastGroup boolean
local Page


---===== METHODS =====---

---Creates a new `Action` inside of this page.
---
---If `index` is `nil`, the action will be placed in the first available spot.
---@param index? integer
---@return Action
function Page:newAction(index) end


---===== GETTERS =====---

---Gets the action at the given index in this page.
---@param index integer
---@return Action?
function Page:getAction(index) end

---Gets the actions in this group of this page.
---
---If `index` is `nil`, it will default to the index of the active group.
---@param index? integer
---@return Action[]
function Page:getGroupActions(index) end

---Gets the index of the active group in this page.
---@return integer
function Page:getGroupIndex() end

---Gets the title of this page.
---
---Returns `nil` if this page is unnamed.
---@return string?
function Page:getTitle() end

---Gets if the last active group should be kept when this page is not active.
---@return boolean
function Page:shouldKeepLastGroup() end


---===== SETTERS =====---

---Sets the given index of this page to the given action.
---
---If `index` is `-1`, the action will be placed in the first available spot.
---@generic self
---@param self self
---@param index integer
---| -1 # Put in the first open slot.
---@param action? Action
---@return self
function Page:setAction(index, action) end

---Sets the index of the active group in this page.
---
---The index is clamped between 1 and the maximum number of groups in this page.
---@generic self
---@param self self
---@param index integer
---@return self
function Page:setGroupIndex(index) end

---Sets if the last active group should be kept when this page is not active.  
---If this is `false`, the page will reset to group 1 when inactive.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function Page:setKeepLastGroup(state) end


---===== CHAINED =====---

---Sets the given index of this page to the given action.
---@generic self
---@param self self
---@param index integer
---| -1 # Put in the first open slot.
---@param action? Action
---@return self
function Page:action(index, action) end

---Sets the index of the active group in this page.
---
---The index is clamped between 1 and the maximum number of groups in this page.
---@generic self
---@param self self
---@param index integer
---@return self
function Page:groupIndex(index) end
