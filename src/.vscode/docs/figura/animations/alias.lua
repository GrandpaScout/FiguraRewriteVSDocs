---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ANIMATION                                                                                                       ---
---==================================================================================================================---

---@alias Animation.loopMode
---| "ONCE" # Play once then end.
---| "HOLD" # Play once and pause on the last frame.
---| "LOOP" # Play forever by looping back to the beginning.

---@alias Animation.playState
---| "PLAYING" # The animation is currently playing.
---| "PAUSED"  # The animation was paused in the middle of animating.
---| "STOPPED" # The animation is not animating at all.
