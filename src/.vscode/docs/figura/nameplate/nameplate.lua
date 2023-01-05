---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  NAMEPLATE                                                                                   ---
---==============================================================================================---

---A simple nameplate.
---
---This type of nameplate typically appears on the HUD.
---@class Nameplate
local Nameplate


---===== GETTERS =====---

---Gets the current text of this nameplate.
---
---Returns `nil` if it has never been set.
---@return string?
function Nameplate:getText() end


---===== SETTERS =====---

---Sets the text of this nameplate.
---
---Some placeholders are given:
---* `${name}` is replaced with the avatar owner's name
---* `${badges}` is replaced with the avatar owner's badges.
---* `${segdab}` is replaced with the avatar owner's badges in reverse order.
---
---If `${badges}` or `${segdab}` are visible anywhere in the text, the badges are removed from their
---default position.
---@param text? string
function Nameplate:setText(text) end


---==============================================================================================---
---  NAMEPLATEGROUP                                                                              ---
---==============================================================================================---

---A wrapper for many nameplates at once.
---
---Running a function in this group will run it on all nameplates in the group.
---@class NameplateGroup
local NameplateGroup


---===== SETTERS =====---

---Sets the text of all nameplates in this group.
---
---Some placeholders are given:
---* `${name}` is replaced with the avatar owner's name
---* `${badges}` is replaced with the avatar owner's badges.
---* `${segdab}` is replaced with the avatar owner's badges in reverse order.
---
---If `${badges}` or `${segdab}` are visible anywhere in the text, the badges are removed from their
---default position.
---@param text? string
function NameplateGroup:setText(text) end


---==============================================================================================---
---  ENTITYNAMEPLATE extends NAMEPLATE                                                           ---
---==============================================================================================---

---An entity nameplate.
---
---This type of nameplate typically appears above the avatar host.
---@class EntityNameplate: Nameplate
local EntityNameplate


---===== GETTERS =====---

---Gets the position offset of this nameplate in blocks.
---
---Returns `nil` if it has never been set.
---@return Vector3?
function EntityNameplate:getPos() end

---Gets the light levels of this nameplate set by the script.
---
---Returns `nil` if it has never been set.
---@return Vector2?
function EntityNameplate:getLight() end

---Gets the scale multiplier of this nameplate.
---
---Returns `nil` if it has never been set.
---@return Vector3?
function EntityNameplate:getScale() end

---Gets if this nameplate's text has an outline.
---@return boolean
function EntityNameplate:hasOutline() end

---Gets if this nameplate's text has a shadow.
---@return boolean
function EntityNameplate:hasShadow() end

---Gets if this nameplate is visible.
---@return boolean
function EntityNameplate:isVisible() end


---===== SETTERS =====---

---Sets the color of this nameplate's background.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0, x⟩` where `x` is the value of the Text
---Background Opacity setting in Minecraft's accessibility menu.
---@param color? Vector4
function EntityNameplate:setBackgroundColor(color) end

---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.  
---If `a` is `nil`, it will default to the Text Background Opacity setting in Minecraft's
---accessibility menu.
---@param color? Vector3
---@param a? number
function EntityNameplate:setBackgroundColor(color, a) end

---If `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to the Text Background Opacity setting in Minecraft's
---accessibility menu.
---@param r? number
---@param g? number
---@param b? number
---@param a? number
function EntityNameplate:setBackgroundColor(r, g, b, a) end

---Sets if this nameplate's text has an outline.  
---Text shadow will do nothing while this is `true`.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function EntityNameplate:setOutline(state) end

---Sets the position offset of this nameplate in blocks.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
function EntityNameplate:setPos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function EntityNameplate:setPos(x, y, z) end

---Sets the scale multiplier of this nameplate.
---
---If `scale` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param scale? Vector3
function EntityNameplate:setScale(scale) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function EntityNameplate:setScale(x, y, z) end

---Sets if this nameplate's text has a shadow.  
---Has no immediate effect if text outline is enabled.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function EntityNameplate:setShadow(state) end

---Sets if this nameplate is visible.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function EntityNameplate:setVisible(state) end


---===== CHAINED =====---

---Sets the color of this nameplate's background.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0, x⟩` where `x` is the value of the Text
---Background Opacity setting in Minecraft's accessibility menu.
---@generic self
---@param self self
---@param color? Vector4
---@return self
function EntityNameplate:backgroundColor(color) end

---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.  
---If `a` is `nil`, it will default to the Text Background Opacity setting in Minecraft's
---accessibility menu.
---@generic self
---@param self self
---@param color? Vector3
---@param a? number
---@return self
function EntityNameplate:backgroundColor(color, a) end

---If `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to the Text Background Opacity setting in Minecraft's
---accessibility menu.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function EntityNameplate:backgroundColor(r, g, b, a) end

---Sets if this nameplate's text has an outline.  
---Text shadow will do nothing while this is `true`.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function EntityNameplate:outline(state) end

---Sets the position offset of this nameplate in blocks.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function EntityNameplate:pos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function EntityNameplate:pos(x, y, z) end

---Sets the scale multiplier of this nameplate.
---
---If `scale` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function EntityNameplate:scale(scale) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function EntityNameplate:scale(x, y, z) end

---Sets if this nameplate's text has a shadow.  
---Has no immediate effect if text outline is enabled.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function EntityNameplate:shadow(state) end

---Sets if this nameplate is visible.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function EntityNameplate:visible(state) end
