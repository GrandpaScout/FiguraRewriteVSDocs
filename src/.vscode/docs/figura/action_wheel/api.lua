---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ACTIONWHEELAPI                                                                              ---
---==============================================================================================---

---An API for customizing the action wheel.
---
---> ***
---
---The action wheel works off a page system. The action wheel can be assigned a page of up to 8
---actions to show.
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
---<!--
---@field leftClick? Action.clickFunc
---The function that is executed when the screen is right-clicked while the action wheel is open.
---<!--
---@field rightClick? Action.clickFunc
---The function that is executed when the screen is scrolled while the action wheel is open.
---<!--
---@field scroll? Action.scrollFunc
local ActionWheelAPI


---===== METHODS =====---

---Attempts to execute an action on the current page of the action wheel.  
---This can only execute a `ClickAction`, any other action type will do nothing.
---
---If `index` is `nil`, the last selected action is executed.
---
---If `rightClick` is `true`, it will execute the right-click function instead.
---@param index? Page.index
---@param rightClick? boolean
function ActionWheelAPI:execute(index, rightClick) end

---Creates a new action that is not tied to a page.
---@return Action
function ActionWheelAPI:newAction() end

---Creates a new page for use in the action wheel.
---
---If given a title, it will be stored with that title and can later be retrieved with `:getPage`
---@param title? string
---@return Page
function ActionWheelAPI:newPage(title) end


---===== GETTERS =====---

---Gets a page by its name.
---@param name string
---@return Page?
function ActionWheelAPI:getPage(name) end

---Gets the active page.
---
---Returns `nil` if there is no active page.
---@return Page?
function ActionWheelAPI:getCurrentPage() end

---Gets the index of the currently hovered action.
---@return
---| 0 # None selected
---| Page.index
function ActionWheelAPI:getSelected() end

---Gets if the wheel is visible or not.
---@return boolean
function ActionWheelAPI:isEnabled() end


---===== SETTERS =====---

---Sets the active page of the action wheel to the given page.
---@param page? string | Page
function ActionWheelAPI:setPage(page) end
