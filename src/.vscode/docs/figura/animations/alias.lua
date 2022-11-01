---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ANIMATION                                                                                   ---
---==============================================================================================---

---A valid loop mode for an Animation.
---@alias Animation.loopMode
---| "ONCE" # Play once then end.
---| "HOLD" # Play once and pause on the last frame.
---| "LOOP" # Play forever by looping back to the beginning.

---A valid play state for an Animation.
---@alias Animation.playStates
---| "PLAYING" # The animation is currently playing.
---| "PAUSED"  # The animation was paused in the middle of animating.
---| "STOPPED" # The animation is not animating at all.
