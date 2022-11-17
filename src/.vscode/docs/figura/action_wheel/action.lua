---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ACTION                                                                                      ---
---==============================================================================================---

---The base class of all action wheel actions.
---
---This should never be used directly unless the type of action does not need to be known.  
---If the type of subaction will be inferred later in your function, use `Action.any` instead.
---@class Action
local Action


---===== GETTERS =====----

---Gets the background color of this action.
---
---Returns `nil` if the color has not been set or has been reset.
---@return Vector3?
function Action:getColor() end

---Gets the background color of this action when it is hovered over.
---
---Returns `nil` if the color has not been set or has been reset.
---@return Vector3?
function Action:getHoverColor() end

---Gets the title that appears when this action is hovered over.
---
---Returns `nil` if the title has not been set or has been reset.
---@return string?
function Action:getTitle() end


---===== SETTERS =====----

---Sets the background color of this action.
---
---If `color` is `nil`, it will default to black.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function Action:color(color) end

---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function Action:color(r, g, b) end

---Sets the background color of this action when it is hovered over.
---
---If `color` is `nil`, it will default to white.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function Action:hoverColor(color) end

---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function Action:hoverColor(r, g, b) end

---Sets the item to be used as the icon of this action when it is hovered over.
---
---If `item` is `nil`, it will be removed.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function Action:hoverItem(item) end

---Sets the item to be used as the icon of this action.
---
---If `item` is `nil`, it will be removed.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function Action:item(item) end

---Sets the title that appears when this action is hovered over.
---
---If `title` is `nil`, it will default to `""`.
---@generic self
---@param self self
---@param title? string
---@return self
function Action:title(title) end


---==============================================================================================---
---  CLICK ACTION extends ACTION                                                                 ---
---==============================================================================================---

---An action on the action wheel that responds to being clicked.
---
---This action can be configured to respond to being left and right clicked separately.
---@class ClickAction : Action
---The function that is executed when this action is left-clicked.
---<!--
---@field leftClick? ClickAction.clickFunc
---The function that is executed when this action is right-clicked.
---<!--
---@field rightClick? ClickAction.clickFunc
local ClickAction


---===== SETTERS =====---

---Sets the function that executed when this action is left-clicked.
---@generic self
---@param self self
---@param func? ClickAction.clickFunc
---@return self
function ClickAction:onLeftClick(func) end

---Sets the function that executed when this action is right-clicked.
---@generic self
---@param self self
---@param func? ClickAction.clickFunc
---@return self
function ClickAction:onRightClick(func) end


---==============================================================================================---
---  TOGGLE ACTION extends ACTION                                                                ---
---==============================================================================================---

---An action that can be toggled on and off.
---
---This action can be configured to have a single function for both toggling on and off, or a
---separate function for toggling on and another for toggling off.
---
---This action can also be configured to have separate displays for on and off states.
---@class ToggleAction : Action
---The function that is executed when this action is toggled on.  
---If `.untoggle` is `nil`, this is also executed when this action is toggled off.
---<!--
---@field toggle? ToggleAction.toggleFunc
---The function that is executed when this action is toggled off.
---<!--
---@field untoggle? ToggleAction.untoggleFunc
local ToggleAction


---===== GETTERS =====---

---Gets the background color of this action while it is toggled on.
---
---Returns `nil` if the color has not been set or has been reset.
---@return Vector3?
function ToggleAction:getToggleColor() end

---Gets the title that appears when this action is hovered over while toggled on.
---
---Returns `nil` if the title has not been set or has been reset.
---@return string?
function ToggleAction:getToggleTitle() end

---Gets if this action is toggled on.
---@return boolean
function ToggleAction:isToggled() end


---===== SETTERS =====---

---Sets the function that is executed when this action is toggled on.  
---If `.untoggle` is `nil`, the function is also executed when this action is toggled off.
---@generic self
---@param self self
---@param func? ToggleAction.toggleFunc
---@return self
function ToggleAction:onToggle(func) end

---Sets the function that is executed when this action is toggled off.
---
---> ***
---
---**Note:** I would highly recommend against using `onUntoggle` unless your action does
---something *drastically* different when toggled off.  
---You already get the state of the toggle in the `onToggle` callback, use that with an `if`
---statement instead.
---@generic self
---@param self self
---@param func? ToggleAction.untoggleFunc
---@return self
function ToggleAction:onUntoggle(func) end

---Sets the background color of this action while it is toggled on.
---
---If `color` is `nil`, it will default to green.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function ToggleAction:toggleColor(color) end

---If `r`, `g`, or `b` are `nil`, they will default to `0`, `1`, and `0` respectively.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function ToggleAction:toggleColor(r, g, b) end

---Sets the toggle state of this action.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function ToggleAction:toggled(state) end

---Sets the item to be used as the icon of this action while it is toggled on.
---
---If `item` is `nil`, it will default to using the normal item.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function ToggleAction:toggleItem(item) end

---Sets the title that appears when this action is hovered over while toggled on.
---
---If `title` is `nil`, it will default to using the normal title.
---@generic self
---@param self self
---@param title? string
---@return self
function ToggleAction:toggleTitle(title) end


---==============================================================================================---
---  SCROLL ACTION extends ACTION                                                                ---
---==============================================================================================---

---An action that responds to scrolling the scroll wheel up or down.
---@class ScrollAction : Action
---The function that is executed when this action is scrolled.
---<!--
---@field scroll ScrollAction.scrollFunc?
local ScrollAction


---===== SETTERS =====---

---Sets the function that is executed when this action is scrolled.
---@generic self
---@param self self
---@param func? ScrollAction.scrollFunc
---@return self
function ScrollAction:onScroll(func) end
