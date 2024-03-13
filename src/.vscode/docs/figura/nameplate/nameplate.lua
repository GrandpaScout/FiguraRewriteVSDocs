---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  NAMEPLATE                                                                                                       ---
---==================================================================================================================---

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
---@nodiscard
function Nameplate:getText() end


---===== SETTERS =====---

---Sets the text of this nameplate.
---
---Some placeholders are given:
---* `${name}` is replaced with the avatar owner's name
---* `${badges}` is replaced with the avatar owner's badges.
---* `${segdab}` is replaced with the avatar owner's badges in reverse order.
---
---If `${badges}` or `${segdab}` are visible anywhere in the text, the badges are removed from their default position.
---@generic self
---@param self self
---@param text? string
---@return self
function Nameplate:setText(text) end


---==================================================================================================================---
---  NAMEPLATEGROUP                                                                                                  ---
---==================================================================================================================---

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
---If `${badges}` or `${segdab}` are visible anywhere in the text, the badges are removed from their default position.
---@generic self
---@param self self
---@param text? string
---@return self
function NameplateGroup:setText(text) end


---==================================================================================================================---
---  ENTITYNAMEPLATE extends NAMEPLATE                                                                               ---
---==================================================================================================================---

---An entity nameplate.
---
---This type of nameplate typically appears above the avatar host.
---@class EntityNameplate: Nameplate
local EntityNameplate


---===== GETTERS =====---

---Gets the color of this nameplate's background.
---
---Returns `nil` if the background color has never been set.
---@return Vector4?
---@nodiscard
function EntityNameplate:getBackgroundColor() end

---Gets the light overrides of this nameplate.
---
---Returns `nil` if it has never been set.
---@return Vector2?
---@nodiscard
function EntityNameplate:getLight() end

---Gets the pivot position of this nameplate in blocks.
---
---Returns `nil` if it has never been set.
---@return Vector3?
---@nodiscard
function EntityNameplate:getPivot() end

---Gets the position offset of this nameplate in blocks.
---
---Returns `nil` if it has never been set.
---@return Vector3?
---@nodiscard
function EntityNameplate:getPos() end

---Gets the scale multiplier of this nameplate.
---
---Returns `nil` if it has never been set.
---@return Vector3?
---@nodiscard
function EntityNameplate:getScale() end

---Gets if this nameplate's text has an outline.
---@*error Missing doc string.
---@return boolean
---@nodiscard
function EntityNameplate:hasOutline() end

---Gets if this nameplate's text has a shadow.
---@return boolean
---@nodiscard
function EntityNameplate:hasShadow() end

---Gets if this nameplate is visible.
---@return boolean
---@nodiscard
function EntityNameplate:isVisible() end


---===== SETTERS =====---

---Sets the color of this nameplate's background.  
---If a `Vector3` is given, it is augmented with the `a` value defined below.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0, a⟩` where `a` is either `0.24705` or the Text Background Opacity
---setting if Text Background is set to "Everywhere".
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function EntityNameplate:setBackgroundColor(color) end

---Sets the color of this nameplate's background.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to either `0.24705` or the Text Background Opacity setting if Text Background is set
---to "Everywhere".
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function EntityNameplate:setBackgroundColor(r, g, b, a) end

---Sets the block light and sky light overrides of this nameplate.  
---Light values above 15 or below 0 will cause the nameplate to become faded.
---
---If `light` is `nil`, light overrides are removed.
---@generic self
---@param self self
---@param light? Vector2
---@return self
function EntityNameplate:setLight(light) end

---Sets the block light and sky light overrides of this nameplate.  
---Light values above 15 or below 0 will cause the nameplate to become faded.
---
---If `block` is `nil`, light overrides are removed.  
---If `sky` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param block? integer
---@param sky? integer
---@return self
function EntityNameplate:setLight(block, sky) end

---Sets if this nameplate's text has an outline.  
---Text shadow will do nothing while this is `true`.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function EntityNameplate:setOutline(state) end

---Sets the color of this task's outline (if enabled.)
---
---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function EntityNameplate:setOutlineColor(color) end

---Sets the color of this task's outline (if enabled.)
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function EntityNameplate:setOutlineColor(r, g, b) end

---Sets the pivot position of this nameplate in blocks.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function EntityNameplate:setPivot(pos) end

---Sets the pivot position of this nameplate in blocks.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function EntityNameplate:setPivot(x, y, z) end

---Sets the position offset of this nameplate in blocks.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function EntityNameplate:setPos(pos) end

---Sets the position offset of this nameplate in blocks.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function EntityNameplate:setPos(x, y, z) end

---Sets the scale multiplier of this nameplate.
---
---If `scale` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param scale? Vector3
---@return self
function EntityNameplate:setScale(scale) end

---Sets the scale multiplier of this nameplate.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function EntityNameplate:setScale(x, y, z) end

---Sets if this nameplate's text has a shadow.  
---Has no immediate effect if text outline is enabled.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function EntityNameplate:setShadow(state) end

---Sets if this nameplate is visible.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function EntityNameplate:setVisible(state) end


---===== CHAINED =====---

---Sets the color of this nameplate's background.  
---If a `Vector3` is given, it is augmented with the `a` value defined below.
---
---If `color` is `nil`, it will default to `⟨0, 0, 0, a⟩` where `a` is either `0.24705` or the Text Background Opacity
---setting if Text Background is set to "Everywhere".
---@generic self
---@param self self
---@param color? Vector3 | Vector4
---@return self
function EntityNameplate:backgroundColor(color) end

---Sets the color of this nameplate's background.
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.  
---If `a` is `nil`, it will default to either `0.24705` or the Text Background Opacity setting if Text Background is set
---to "Everywhere".
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@param a? number
---@return self
function EntityNameplate:backgroundColor(r, g, b, a) end

---Sets the block light and sky light overrides of this nameplate.  
---Light values above 15 or below 0 will cause the nameplate to become faded.
---
---If `light` is `nil`, light overrides are removed.
---@generic self
---@param self self
---@param light? Vector2
---@return self
function EntityNameplate:light(light) end

---Sets the block light and sky light overrides of this nameplate.  
---Light values above 15 or below 0 will cause the nameplate to become faded.
---
---If `block` is `nil`, light overrides are removed.  
---If `sky` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param block? integer
---@param sky? integer
---@return self
function EntityNameplate:light(block, sky) end

---Sets if this nameplate's text has an outline.  
---Text shadow will do nothing while this is `true`.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function EntityNameplate:outline(state) end

---Sets the color of this task's outline (if enabled.)
---
---If `color` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function EntityNameplate:outlineColor(color) end

---Sets the color of this task's outline (if enabled.)
---
---If `r`, `g`, or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function EntityNameplate:outlineColor(r, g, b) end

---Sets the pivot position of this nameplate in blocks.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function EntityNameplate:pivot(pos) end

---Sets the pivot position of this nameplate in blocks.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param x? number
---@param y? number
---@param z? number
---@return self
function EntityNameplate:pivot(x, y, z) end

---Sets the position offset of this nameplate in blocks.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param pos? Vector3
---@return self
function EntityNameplate:pos(pos) end

---Sets the position offset of this nameplate in blocks.
---
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

---Sets the scale multiplier of this nameplate.
---
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
