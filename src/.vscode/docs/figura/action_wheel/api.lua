---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ACTIONWHEELAPI                                                                                                  ---
---==================================================================================================================---

---An API for customizing the action wheel.
---
---> ***
---
---The action wheel works off a page system. The action wheel can be assigned a page of up to 8 actions to show.
---
---Create a new page with:
---```lua
---local page_var = <ActionWheelAPI>:newPage()
---```
---&emsp;  
---There are two ways to create a new action.  
---Either create the action and set its values later:
---```lua
---local action = page_var:newAction()
---
---action:title("Cool title")
---action:item("minecraft:stick")
---action:onLeftClick(function()
---  print("hello world")
---end)
---```
---Or create the action and its values at the same time:
---```lua
---page_var:newAction()
---  :title("Cool title")
---  :item("minecraft:stick")
---  :onLeftClick(function()
---    print("hello world")
---  end)
---```
---&emsp;  
---Once the page is done being created, apply it to the action wheel with:
---```lua
---<ActionWheelAPI>:setPage(page_var)
---```
---@class ActionWheelAPI
---The function that is executed when the screen is left-clicked while the action wheel is open.
---
---If this function returns `true`, the selected action will not be activated.
---@field leftClick? ActionWheelAPI.clickFunc
---The function that is executed when the screen is right-clicked while the action wheel is open.
---
---If this function returns `true`, the selected action will not be activated.
---@field rightClick? ActionWheelAPI.clickFunc
---The function that is executed when the screen is scrolled while the action wheel is open.
---
---If this function returns `true`, the selected action will not be activated and the current page
---will not scroll through groups.
---@field scroll? ActionWheelAPI.scrollFunc
local ActionWheelAPI


---===== METHODS =====---

---Attempts to execute an action on the current page of the action wheel.  
---This can only execute a `ClickAction`, any other action type will do nothing.
---
---If `index` is `nil`, the last selected action is executed.  
---If `rightClick` is `true`, it will execute the right-click function instead.
---@generic self
---@param self self
---@param index? ActionWheelAPI.index
---@param rightclick? boolean
---@return self
function ActionWheelAPI:execute(index, rightclick) end

---Creates a new action that is not assigned to a page.
---
---Use the following to add an action to a page:
---```lua
---<Page>:setAction(-1, <Action>)
---```
---@return Action
---@nodiscard
function ActionWheelAPI:newAction() end

---Creates a new page for use in the action wheel.
---
---If given a title, it will be stored with that title and can later be retrieved with `:getPage`.
---
---Use the following to make the action wheel use a page:
---```lua
---action_wheel:setPage(<Page>)
---```
---@param title? string
---@return Page
function ActionWheelAPI:newPage(title) end


---===== GETTERS =====---

---Gets the active page.
---
---Returns `nil` if there is no active page.
---@return Page?
---@nodiscard
function ActionWheelAPI:getCurrentPage() end

---Gets a table of all registered pages.
---@return {[string]?: Page}
---@nodiscard
function ActionWheelAPI:getPage() end

---Gets a page by its title.
---@param title string
---@return Page?
---@nodiscard
function ActionWheelAPI:getPage(title) end

---Gets the index of the currently hovered action.
---@return
---| 0 # None selected
---| ActionWheelAPI.index
---@nodiscard
function ActionWheelAPI:getSelected() end

---Gets the currently hovered action.
---
---Returns `nil` if there is no action being hovered.
---@return Action?
---@nodiscard
function ActionWheelAPI:getSelectedAction() end

---Gets if the wheel is visible or not.
---@return boolean
---@nodiscard
function ActionWheelAPI:isEnabled() end


---===== SETTERS =====---

---Sets the active page of the action wheel to the given page.
---
---If `page` is `nil`, the action wheel is emptied.
---@generic self
---@param self self
---@param page? string | Page
---@return self
function ActionWheelAPI:setPage(page) end
