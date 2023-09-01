---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ACTION                                                                                                          ---
---==================================================================================================================---

---An action wheel action.
---
---This can act like a clickable button, a toggleable button, a scrollable area, or a combination of them.
---@class Action
---The function that is executed when this action is left-clicked.
---@field leftClick? Action.clickFunc
---The function that is executed when this action is right-clicked.
---@field rightClick? Action.clickFunc
---The function that is executed when this action is scrolled.
---@field scroll? Action.scrollFunc
---The function that is executed when this action is toggled on.  
---If `.untoggle` is `nil`, this is also executed when this action is toggled off.
---@field toggle? Action.toggleFunc
---The function that is executed when this action is toggled off.
---@field untoggle? Action.untoggleFunc
local Action


---===== GETTERS =====---

---Gets the background color of this action.
---
---Returns `nil` if the color has not been set or has been reset.
---@return Vector3?
---@nodiscard
function Action:getColor() end

---Gets the background color of this action when it is hovered over.
---
---Returns `nil` if the color has not been set or has been reset.
---@return Vector3?
---@nodiscard
function Action:getHoverColor() end

---Gets the title that appears when this action is hovered over.
---
---Returns `nil` if the title has not been set or has been reset.
---@return string?
---@nodiscard
function Action:getTitle() end

---Gets the background color of this action while it is toggled on.
---
---Returns `nil` if the color has not been set or has been reset.
---@return Vector3?
---@nodiscard
function Action:getToggleColor() end

---Gets the title that appears when this action is hovered over while toggled on.
---
---Returns `nil` if the title has not been set or has been reset.
---@return string?
---@nodiscard
function Action:getToggleTitle() end

---Gets if this action is toggled on.
---@return boolean
---@nodiscard
function Action:isToggled() end


---===== SETTERS =====---

---Sets the background color of this action.
---
---If `color` is `nil`, it will default to black.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function Action:setColor(color) end

---Sets the background color of this action.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function Action:setColor(r, g, b) end

---Sets the background color of this action when it is hovered over.
---
---If `color` is `nil`, it will default to white.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function Action:setHoverColor(color) end

---Sets the background color of this action when it is hovered over.
---
---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function Action:setHoverColor(r, g, b) end

---Sets the item to be used in the icon of this action when it is hovered over.
---
---If `item` is `nil`, it will be removed.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function Action:setHoverItem(item) end

---Sets the texture to be used in the icon of this action when it is hovered over.
---
---UV and size are measured in pixels.
---
---If `u` or `v` are `nil`, they will default to `0`.  
---If `width` or `height` are `nil`, they will default to the texture's width and height.  
---If `scale` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param texture Texture
---@param u? number
---@param v? number
---@param width? integer
---@param height? integer
---@param scale? number
---@return self
function Action:setHoverTexture(texture, u, v, width, height, scale) end

---Sets the item to be used in the icon of this action.
---
---If `item` is `nil`, it will be removed.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function Action:setItem(item) end

---Sets the function that executed when this action is left-clicked.
---@generic self
---@param self self
---@param func? Action.clickFunc
---@return self
function Action:setOnLeftClick(func) end

---Sets the function that executed when this action is right-clicked.
---@generic self
---@param self self
---@param func? Action.clickFunc
---@return self
function Action:setOnRightClick(func) end

---Sets the function that is executed when this action is scrolled.
---@generic self
---@param self self
---@param func? Action.scrollFunc
---@return self
function Action:setOnScroll(func) end

---Sets the function that is executed when this action is toggled on.  
---If `.untoggle` is `nil`, the function is also executed when this action is toggled off.
---@generic self
---@param self self
---@param func? Action.toggleFunc
---@return self
function Action:setOnToggle(func) end

---Sets the function that is executed when this action is toggled off.
---
---> ***
---
---**Note:** I would highly recommend against using `setOnUntoggle` unless your action does something *drastically*
---different when toggled off.  
---You already get the state of the toggle in the `setOnToggle` callback, use that with an `if` statement instead.
---@generic self
---@param self self
---@param func? Action.untoggleFunc
---@return self
function Action:setOnUntoggle(func) end

---Sets the texture to be used in the icon of this action.
---
---UV and size are measured in pixels.
---
---If `u` or `v` are `nil`, they will default to `0`.  
---If `width` or `height` are `nil`, they will default to the texture's width and height.  
---If `scale` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param texture Texture
---@param u? number
---@param v? number
---@param width? integer
---@param height? integer
---@param scale? number
---@return self
function Action:setTexture(texture, u, v, width, height, scale) end

---Sets the title that appears when this action is hovered over.
---
---If `title` is `nil`, it will default to `""`.
---@generic self
---@param self self
---@param title? string
---@return self
function Action:setTitle(title) end

---Sets the background color of this action while it is toggled on.
---
---If `color` is `nil`, it will default to green.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function Action:setToggleColor(color) end

---Sets the background color of this action while it is toggled on.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`, `1`, and `0` respectively.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function Action:setToggleColor(r, g, b) end

---Sets the item to be used in the icon of this action while it is toggled on.
---
---If `item` is `nil`, it will default to using the normal item.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function Action:setToggleItem(item) end

---Sets the texture to be used in the icon of this action while it is toggled on.
---
---UV and size are measured in pixels.
---
---If `u` or `v` are `nil`, they will default to `0`.  
---If `width` or `height` are `nil`, they will default to the texture's width and height.  
---If `scale` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param texture Texture
---@param u? number
---@param v? number
---@param width? integer
---@param height? integer
---@param scale? number
---@return self
function Action:setToggleTexture(texture, u, v, width, height, scale) end

---Sets the title that appears when this action is hovered over while toggled on.
---
---If `title` is `nil`, it will default to using the normal title.
---@generic self
---@param self self
---@param title? string
---@return self
function Action:setToggleTitle(title) end

---Sets the toggle state of this action.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Action:setToggled(state) end


---===== CHAINED =====---

---Sets the background color of this action.
---
---If `color` is `nil`, it will default to black.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function Action:color(color) end

---Sets the background color of this action.
---
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

---Sets the background color of this action when it is hovered over.
---
---If `r`, `g`, or `b` are `nil`, they will default to `1`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function Action:hoverColor(r, g, b) end

---Sets the item to be used in the icon of this action when it is hovered over.
---
---If `item` is `nil`, it will be removed.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function Action:hoverItem(item) end

---Sets the texture to be used in the icon of this action when it is hovered over.
---
---UV and size are measured in pixels.
---
---If `u` or `v` are `nil`, they will default to `0`.  
---If `width` or `height` are `nil`, they will default to the texture's width and height.  
---If `scale` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param texture Texture
---@param u? number
---@param v? number
---@param width? integer
---@param height? integer
---@param scale? number
---@return self
function Action:hoverTexture(texture, u, v, width, height, scale) end

---Sets the item to be used in the icon of this action.
---
---If `item` is `nil`, it will be removed.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function Action:item(item) end

---Sets the function that executed when this action is left-clicked.
---@generic self
---@param self self
---@param func? Action.clickFunc
---@return self
function Action:onLeftClick(func) end

---Sets the function that executed when this action is right-clicked.
---@generic self
---@param self self
---@param func? Action.clickFunc
---@return self
function Action:onRightClick(func) end

---Sets the function that is executed when this action is scrolled.
---@generic self
---@param self self
---@param func? Action.scrollFunc
---@return self
function Action:onScroll(func) end

---Sets the function that is executed when this action is toggled on.  
---If `.untoggle` is `nil`, the function is also executed when this action is toggled off.
---@generic self
---@param self self
---@param func? Action.toggleFunc
---@return self
function Action:onToggle(func) end

---Sets the function that is executed when this action is toggled off.
---
---> ***
---
---**Note:** I would highly recommend against using `onUntoggle` unless your action does something *drastically*
---different when toggled off.  
---You already get the state of the toggle in the `onToggle` callback, use that with an `if` statement instead.
---@generic self
---@param self self
---@param func? Action.untoggleFunc
---@return self
function Action:onUntoggle(func) end

---Sets the texture to be used in the icon of this action.
---
---UV and size are measured in pixels.
---
---If `u` or `v` are `nil`, they will default to `0`.  
---If `width` or `height` are `nil`, they will default to the texture's width and height.  
---If `scale` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param texture Texture
---@param u? number
---@param v? number
---@param width? integer
---@param height? integer
---@param scale? number
---@return self
function Action:texture(texture, u, v, width, height, scale) end

---Sets the title that appears when this action is hovered over.
---
---If `title` is `nil`, it will default to `""`.
---@generic self
---@param self self
---@param title? string
---@return self
function Action:title(title) end

---Sets the background color of this action while it is toggled on.
---
---If `color` is `nil`, it will default to green.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function Action:toggleColor(color) end

---Sets the background color of this action while it is toggled on.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`, `1`, and `0` respectively.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function Action:toggleColor(r, g, b) end

---Sets the item to be used in the icon of this action while it is toggled on.
---
---If `item` is `nil`, it will default to using the normal item.
---@generic self
---@param self self
---@param item? ItemStack | Minecraft.itemID
---@return self
function Action:toggleItem(item) end

---Sets the texture to be used in the icon of this action while it is toggled on.
---
---UV and size are measured in pixels.
---
---If `u` or `v` are `nil`, they will default to `0`.  
---If `width` or `height` are `nil`, they will default to the texture's width and height.  
---If `scale` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param texture Texture
---@param u? number
---@param v? number
---@param width? integer
---@param height? integer
---@param scale? number
---@return self
function Action:toggleTexture(texture, u, v, width, height, scale) end

---Sets the title that appears when this action is hovered over while toggled on.
---
---If `title` is `nil`, it will default to using the normal title.
---@generic self
---@param self self
---@param title? string
---@return self
function Action:toggleTitle(title) end

---Sets the toggle state of this action.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Action:toggled(state) end
