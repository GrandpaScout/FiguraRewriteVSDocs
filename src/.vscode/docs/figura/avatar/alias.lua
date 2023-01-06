---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  AVATARAPI                                                                                   ---
---==============================================================================================---

---A boolean trust value.
---
---The default values for the Vanilla Model Change, Nameplate Change, Render Offscreen, Custom
---Sounds, and Custom Player Heads trust settings.
---@alias AvatarAPI.booleanSwitch boolean
---| false # Blocked/Untrusted default
---| true  # Trusted/Friend default

---The default values for the Animation Complexity trust setting.
---@alias AvatarAPI.animationComplexityLimit integer
---| 0          # Blocked default
---| 32         # Untrusted default
---| 128        # Trusted default
---| 254        # Max slider value
---| 2147483647 # Friend default, INFINITY

---The default values for the Max Complexity trust setting.
---@alias AvatarAPI.complexityLimit integer
---| 0          # Blocked default
---| 512        # Untrusted default
---| 2048       # Trusted default
---| 8191       # Max slider value
---| 2147483647 # Friend default, INFINITY

---The default values for the Init Instructions trust setting.
---@alias AvatarAPI.initLimit integer
---| 0          # Blocked default
---| 4096       # Untrusted default
---| 16384      # Trusted default
---| 32767      # Max slider value
---| 2147483647 # Friend default, INFINITY

---The default values for the Max Particles trust setting.
---@alias AvatarAPI.particleLimit integer
---| 0          # Blocked default
---| 4          # Untrusted default
---| 32         # Trusted default
---| 62         # Max slider value
---| 2147483647 # Friend default, INFINITY

---The default values for the Render Instructions trust setting.
---@alias AvatarAPI.renderLimit integer
---| 0          # Blocked default
---| 4096       # Untrusted default
---| 16384      # Trusted default
---| 32767      # Max slider value
---| 2147483647 # Friend default, INFINITY

---The default values for the Max Sounds trust setting.
---@alias AvatarAPI.soundLimit integer
---| 0          # Blocked default
---| 4          # Untrusted default
---| 32         # Trusted default
---| 63         # Max slider value
---| 2147483647 # Friend default, INFINITY

---The default values for the Max Texture Size trust setting.
---@alias AvatarAPI.textureSizeLimit integer
---| 0    # Blocked default
---| 128  # Untrusted default
---| 512  # Trusted default
---| 2048 # Friend default, max slider value

---The default values for the Tick Instructions trust setting.
---@alias AvatarAPI.tickLimit integer
---| 0          # Blocked default
---| 4096       # Untrusted default
---| 16384      # Trusted default
---| 32767      # Max slider value
---| 2147483647 # Friend default, INFINITY

---The default values for the World Render Instructions trust setting.
---@alias AvatarAPI.worldRenderLimit integer
---| 0          # Blocked default
---| 32         # Untrusted default
---| 64         # Trusted default
---| 32767      # Max slider value
---| 2147483647 # Friend default, INFINITY

---The default values for the World Tick Instructions trust setting.
---@alias AvatarAPI.worldTickLimit integer
---| 0          # Blocked default
---| 128        # Untrusted default
---| 256        # Trusted default
---| 32767      # Max slider value
---| 2147483647 # Friend default, INFINITY

---The trust levels in Figura.
---@alias AvatarAPI.trustLevel
---| "BLOCKED"   # Blocked
---| "UNTRUSTED" # Untrusted, default
---| "TRUSTED"   # Trusted
---| "FRIEND"    # Friend
---| "LOCAL"     # Local
