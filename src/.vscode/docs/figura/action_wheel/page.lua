---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  PAGE                                                                                                            ---
---==================================================================================================================---

---A page of actions for use in the action wheel.
---@class Page
---Determines if the last active group should be kept when this page becomes inactive.
---
---If this is `false`, the page will reset to group 1 when inactive.
---@field keepSlots boolean
local Page


---===== METHODS =====---

---Creates a new `Action` inside of this page.
---
---If `index` is `nil`, the action will be placed in the first available slot.
---@param index? integer
---@return Action
function Page:newAction(index) end


---===== GETTERS =====---

---Gets the action at the given index in this page.
---@param index integer
---@return Action?
---@nodiscard
function Page:getAction(index) end

---Gets a list of all actions in this page.
---
---If `group` is given, only the actions from that group of 8 are returned.
---@param group? integer
---@return Action[]
---@nodiscard
function Page:getActions(group) end

---Gets the index of the active group in this page.
---@return integer
---@nodiscard
function Page:getSlotsShift() end

---Gets the title of this page.
---
---Returns `nil` if this page is unnamed.
---@return string?
---@nodiscard
function Page:getTitle() end

---Gets if the last active group should be kept when this page is not active.
---@return boolean
---@nodiscard
function Page:shouldKeepSlots() end


---===== SETTERS =====---

---Sets the given index of this page to the given action.
---
---If `index` is `-1`, the action will be placed in the first available slot.
---@generic self
---@param self self
---@param index integer
---| -1 # Put in the first open slot.
---@param action? Action
---@return self
function Page:setAction(index, action) end

---Sets if the last active group should be kept when this page becomes inactive.  
---If this is `false`, the page will reset to group 1 when inactive.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Page:setKeepSlots(state) end

---Sets the index of the active group in this page.
---
---The index is clamped between 1 and the maximum number of groups in this page.
---@generic self
---@param self self
---@param group integer
---@return self
function Page:setSlotsShift(group) end


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
---@param group integer
---@return self
function Page:slotsShift(group) end
