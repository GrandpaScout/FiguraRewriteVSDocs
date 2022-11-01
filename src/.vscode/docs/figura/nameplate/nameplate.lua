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
---@param text string
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
---@param text string
function NameplateGroup:setText(text) end


---==============================================================================================---
---  ENTITYNAMEPLATE extends NAMEPLATE                                                           ---
---==============================================================================================---

---An entity nameplate.
---
---This type of nameplate typically appears above the avatar host.
---@class EntityNameplate: Nameplate
---Determines if this nameplate's text has an outline.
---
---`.shadow` will do nothing while this is `true`.
---@field outline boolean
---Determines if this nameplate's text has a shadow.
---
---Has no immediate effect if `.outline` is `true`.
---@field shadow boolean
---Determines if this nameplate is visible.
---@field visible boolean
local EntityNameplate


---===== GETTERS =====---

---Gets the position offset of this nameplate in blocks.
---
---Returns `nil` if it has never been set.
---@return Vector3?
function EntityNameplate:getPos() end

---Gets the scale multiplier of this nameplate.
---
---Returns `nil` if it has never been set.
---@return Vector3?
function EntityNameplate:getScale() end


---===== SETTERS =====---

---Sets the color of this nameplate's background.
---
---If `color` is `nil`, it will default to `{0, 0, 0, x}` where `x` is the value of the Text
---Background Opacity setting in Minecraft's accessibility menu.
---@param color? Vector4
function EntityNameplate:setBackgroundColor(color) end

---If `color` is `nil`, it will default to `{0, 0, 0}`.  
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

---Sets the position offset of this nameplate in blocks.
---
---If `pos` is `nil`, it will default to `{0, 0, 0}`.
---@param pos? Vector3
function EntityNameplate:setPos(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function EntityNameplate:setPos(x, y, z) end

---Sets the scale multiplier of this nameplate.
---
---If `scale` is `nil`, it will default to `{0, 0, 0}`.
---@param scale? Vector3
function EntityNameplate:setScale(scale) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
function EntityNameplate:setScale(x, y, z) end
