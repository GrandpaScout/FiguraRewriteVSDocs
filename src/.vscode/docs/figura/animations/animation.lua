---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ANIMATION                                                                                   ---
---==============================================================================================---

---A Blockbench animation.
---@class Animation
---This animation's name.
---@field name string
local Animation

---===== METHODS =====---

---Runs a string of code at the given time in this animation.  
---If code already exists at the given time, it is overwritten.
---@generic self
---@param self self
---@param time number
---@param code string
---@return self
function Animation:newCode(time, code) end

---Pauses this animation. Resume with `:play()`.
function Animation:pause() end

---Starts or resumes this animation. Does nothing if the animation is already playing.
function Animation:play() end

---Starts this animation from the beginning, even if it is currently paused or playing.
function Animation:restart() end

---Stops this animation.
function Animation:stop() end


---===== GETTERS =====---

---Gets how much this animation affects the model.
---
---A blend weight of `0.5` will cause the animation to move and rotate the model 50% as much.
---@return number
function Animation:getBlend() end

---Gets this animation's end point in seconds.
---@return number
function Animation:getLength() end

---Gets what this animation does when it reaches its end.
---@return Animation.loopMode
function Animation:getLoop() end

---Gets the amount of time this animation waits before starting another loop in seconds.
---@return number
function Animation:getLoopDelay() end

---Gets this animation's starting point in seconds.
---@return number
function Animation:getOffset() end

---Gets if this animation overrides vanilla position changes.
---@return boolean
function Animation:getOverridePos() end

---Gets if this animation overrides vanilla rotation changes.
---@return boolean
function Animation:getOverrideRot() end

---Gets if this animation overrides vanilla scale changes.
---@return boolean
function Animation:getOverrideScale() end

---Gets this animation's current play state.
---@return Animation.playStates
function Animation:getPlayState() end

---Gets this animation's priority.
---
---Priority determines what animations will play over each other.
---* Lower priority animations will be overridden by higher priority animations.
---* Same priority animations will merge together.
---
---Default priority is `0`.
---@return integer
function Animation:getPriority() end

---Gets this animation's speed multiplier.
---@return number
function Animation:getSpeed() end

---Gets how long the animation will wait in seconds before starting to play.
---@return number
function Animation:getStartDelay() end

---Gets this animation's current play time in seconds.
---@return number
function Animation:getTime() end


---===== SETTERS =====---

---Sets how much this animation affects the model.
---
---A blend weight of `0.5` will cause the animation to move and rotate the model 50% as much.
---
---If `weight` is `nil`, it will default to `0`.
---@param weight? number
function Animation:setBlend(weight) end

---Sets this animation's end point in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@param time? number
function Animation:setLength(time) end

---Sets what this animation does when it reaches its end.
---@param mode Animation.loopMode
function Animation:setLoop(mode) end

---Sets the amount of time this animation waits before starting another loop in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@param time? number
function Animation:setLoopDelay(time) end

---Sets this animation's starting point in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@param time? number
function Animation:setOffset(time) end

---Sets if this animation overrides vanilla position, rotation, and scale changes.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function Animation:setOverride(state) end

---Sets if this animation overrides vanilla position changes.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function Animation:setOverridePos(state) end

---Sets if this animation overrides vanilla rotation changes.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function Animation:setOverrideRot(state) end

---Sets if this animation overrides vanilla scale changes.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function Animation:setOverrideScale(state) end

---Sets this animation's priority.
---
---Priority determines what animations will play over each other.
---* Lower priority animations will be overridden by higher priority animations.
---* Same priority animations will merge together.
---
---If `priority` is `nil`, it will default to `0`.
---@param priority? integer
function Animation:setPriority(priority) end

---Sets if this animation is currently playing.
---
---If `state` is `nil`, it will default to `false`.
---@param state? boolean
function Animation:setPlaying(state) end

---Sets this animation's current play time in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@param time? number
function Animation:setTime(time) end

---Sets this animation's speed multiplier.
---
---Negative numbers cause the animation to play in reverse.
---
---If `speed` is `nil`, it will default to `1`.
---@param speed? number
function Animation:setSpeed(speed) end

---Sets how long the animation will wait in seconds before starting to play.
---
---If `time` is `nil`, it will default to `0`.
---@param time? number
function Animation:setStartDelay(time) end


---===== CHAINED =====---

---Sets how much this animation affects the model.
---
---A blend weight of `0.5` will cause the animation to move and rotate the model 50% as much.
---
---If `weight` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param weight? number
---@return self
function Animation:blend(weight) end

---Sets this animation's end point in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:length(time) end

---Sets what this animation does when it reaches its end.
---@generic self
---@param self self
---@param mode Animation.loopMode
---@return self
function Animation:loop(mode) end

---Sets the amount of time this animation waits before starting another loop in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:loopDelay(time) end

---Sets this animation's starting point in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:offset(time) end

---Sets if this animation overrides vanilla position, rotation, and scale changes.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:override(state) end

---Sets if this animation overrides vanilla position changes.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:overridePos(state) end

---Sets if this animation overrides vanilla rotation changes.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:overrideRot(state) end

---Sets if this animation overrides vanilla scale changes.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:overrideScale(state) end

---Sets this animation's priority.
---
---Priority determines what animations will play over each other.
---* Lower priority animations will be overridden by higher priority animations.
---* Same priority animations will merge together.
---
---If `priority` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param priority? integer
---@return self
function Animation:priority(priority) end

---Sets if this animation is currently playing.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:playing(state) end

---Sets this animation's current play time in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:time(time) end

---Sets this animation's speed multiplier.
---
---Negative numbers cause the animation to play in reverse.
---
---If `speed` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param speed? number
---@return self
function Animation:speed(speed) end

---Sets how long the animation will wait in seconds before starting to play.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:startDelay(time) end
