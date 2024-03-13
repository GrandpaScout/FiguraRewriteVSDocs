---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ANIMATION                                                                                                       ---
---==================================================================================================================---

---A Blockbench animation.
---@class Animation
---This animation's name.
---@field name string
local Animation

---===== METHODS =====---

---Places a string of code that will run at the given time in this animation.
---
---If code already exists at the given time, it is overwritten.
---@generic self
---@param self self
---@param time number
---@param code string
---@return self
function Animation:newCode(time, code) end

---Pauses this animation. Resume with `:play()`.
---@generic self
---@param self self
---@return self
function Animation:pause() end

---Starts or resumes this animation. Does nothing if the animation is already playing.
---@generic self
---@param self self
---@return self
function Animation:play() end

---Starts this animation from the beginning, even if it is currently paused or playing.
---@generic self
---@param self self
---@return self
function Animation:restart() end

---Stops this animation.
---@generic self
---@param self self
---@return self
function Animation:stop() end


---===== GETTERS =====---

---Gets how much this animation affects the model.
---
---A blend weight of `0.5` will cause the animation to move and rotate the model 50% as much.
---@return number
---@nodiscard
function Animation:getBlend() end

---Gets this animation's end point in seconds.
---@return number
---@nodiscard
function Animation:getLength() end

---Gets what this animation does when it reaches its end.
---@return Animation.loopMode
---@nodiscard
function Animation:getLoop() end

---Gets the amount of time this animation waits before starting another loop in seconds.
---@return number
---@nodiscard
function Animation:getLoopDelay() end

---Gets this animation's name.
---@return string
---@nodiscard
function Animation:getName() end

---Gets this animation's starting point in seconds.
---@return number
---@nodiscard
function Animation:getOffset() end

---Gets if this animation overrides vanilla position changes.
---@return boolean
---@nodiscard
function Animation:getOverridePos() end

---Gets if this animation overrides vanilla rotation changes.
---@return boolean
---@nodiscard
function Animation:getOverrideRot() end

---Gets if this animation overrides vanilla scale changes.
---@return boolean
---@nodiscard
function Animation:getOverrideScale() end

---Gets this animation's current play state.
---@return Animation.playState
---@nodiscard
function Animation:getPlayState() end

---Gets this animation's priority.
---
---Priority determines what animations will play over each other.
---* Lower priority animations will be overridden by higher priority animations.
---* Same priority animations will merge together.
---
---Default priority is `0`.
---@return integer
---@nodiscard
function Animation:getPriority() end

---Gets this animation's speed multiplier.
---@return number
---@nodiscard
function Animation:getSpeed() end

---Gets how long the animation will wait in seconds before starting to play.
---@return number
---@nodiscard
function Animation:getStartDelay() end

---Gets this animation's current play time in seconds.
---@return number
---@nodiscard
function Animation:getTime() end

---Gets if this animation is currently paused.
---@*error Missing doc string.
---@return boolean
---@nodiscard
function Animation:isPaused() end

---Gets if this animation is currently playing.
---@*error Missing doc string.
---@return boolean
---@nodiscard
function Animation:isPlaying() end

---Gets if this animation is currently stopped.
---@*error Missing doc string.
---@return boolean
---@nodiscard
function Animation:isStopped() end


---===== SETTERS =====---

---Sets how much this animation affects the model.
---
---A blend weight of `0.5` will cause the animation to move and rotate the model 50% as much.
---
---If `weight` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param weight? number
---@return self
function Animation:setBlend(weight) end

---Sets this animation's end point in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:setLength(time) end

---Sets what this animation does when it reaches its end.
---@generic self
---@param self self
---@param mode Animation.loopMode
---@return self
function Animation:setLoop(mode) end

---Sets the amount of time this animation waits before starting another loop in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:setLoopDelay(time) end

---Sets this animation's starting point in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:setOffset(time) end

---Sets if this animation overrides vanilla position, rotation, and scale changes.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:setOverride(state) end

---Sets if this animation overrides vanilla position changes.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:setOverridePos(state) end

---Sets if this animation overrides vanilla rotation changes.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:setOverrideRot(state) end

---Sets if this animation overrides vanilla scale changes.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:setOverrideScale(state) end

---Sets if this animation is currently playing.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:setPlaying(state) end

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
function Animation:setPriority(priority) end

---Sets this animation's speed multiplier.
---
---Negative numbers cause the animation to play in reverse.
---
---If `speed` is `nil`, it will default to `1`.
---@generic self
---@param self self
---@param speed? number
---@return self
function Animation:setSpeed(speed) end

---Sets how long the animation will wait in seconds before starting to play.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:setStartDelay(time) end

---Sets this animation's current play time in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:setTime(time) end


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

---Places a string of code that will run at the given time in this animation.
---
---If code already exists at the given time, it is overwritten.
---@generic self
---@param self self
---@param time number
---@param code string
---@return self
function Animation:code(time, code) end

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

---Sets if this animation is currently playing.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function Animation:playing(state) end

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

---Sets this animation's current play time in seconds.
---
---If `time` is `nil`, it will default to `0`.
---@generic self
---@param self self
---@param time? number
---@return self
function Animation:time(time) end
