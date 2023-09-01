---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ANIMATIONAPI-INTERNAL                                                                                           ---
---==================================================================================================================---

---**INTERNAL CLASS**&emsp;*Do not use this!*
---
---Contains generic string field for indexing.
---@class AnimationAPI.*INTERNAL*
---@field [string]? {[string]: Animation}


---==================================================================================================================---
---  ANIMATIONAPI                                                                                                    ---
---==================================================================================================================---

---An API for handling the animations of this avatar.
---
---Indexing this API with a string that does not result in a method may return a table of
---`Animation` objects.
---
---> ***
---
---To access the animations of an avatar, use:
---```lua
---animations.<bbmodel_name>.<animation_name>
---```
---&emsp;  
---Be careful when naming animations, an animation name that contains special characters (such as `.`) or matches a Lua
---keyword is not a valid identifier and requires an alternate way of accessing the animation.
---
---If an animation is named `and`, it will conflict with the Lua keyword `and`.
---```lua
---animations.MyModel.and    -- Causes an error, Lua did not expect a keyword here.
---animations.MyModel["and"] -- Does not error, the keyword is contained in a string.
---```
---If an animation name contains special symbols, it will fail due to Lua trying to read the symbol.
---```lua
---animations.MyModel.some-animation    -- Causes an error, Lua did not expect a minus here.
---animations.MyModel["some-animation"] -- Does not error, the minus is contained in a string.
---```
---If an animation name starts with a number, it will fail due to Lua trying to read the number.
---```lua
---animations.MyModel.42bottles    -- Causes an error, Lua did not expect a number here.
---animations.MyModel["42bottles"] -- Does not error, the number is contained in a string.
---```
---If an animation contains periods in its name, it will fail due to how Lua treats them.
---```lua
---animations.MyModel.anim.with.dots    -- Causes an error, attempts to read `.with` in `.anim`.
---animations.MyModel["anim.with.dots"] -- Does not error, the periods are contained in a string.
---
---animations.MyModel.anim_with_no_dots -- Remove the periods instead. This is preferred!
---```
---@class AnimationAPI: AnimationAPI.*INTERNAL*
local AnimationAPI


---===== METHODS =====---

---Stops all playing and paused animations.
---@generic self
---@param self self
---@return self
function AnimationAPI:stopAll() end

---===== GETTERS =====---

---Gets an array of every animation on the avatar.
---@return Animation[]
---@nodiscard
function AnimationAPI:getAnimations() end

---Gets an array of every playing animation.
---@return Animation[]
---@nodiscard
function AnimationAPI:getPlaying() end
