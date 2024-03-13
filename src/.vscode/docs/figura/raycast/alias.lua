---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  RAYCASTAPI                                                                                                      ---
---==================================================================================================================---

---An axis-aligned bounding box.
---@alias RaycastAPI.aabb {[1]: Vector3, [2]: Vector3}

---@alias RaycastAPI.blockMode
---|>"COLLIDER"             # Hit the collision boxes of blocks.
---| "OUTLINE"              # Hit the selection outlines of blocks.
---| "VISUAL"               # Hit the Line-of-sight blocking areas of blocks.
---| "FALLDAMAGE_RESETTING" # Hit anything that would stop fall damage.

---@alias RaycastAPI.fluidMode
---|>"NONE"        # Ignore liquids.
---| "SOURCE_ONLY" # Only hit fluid source blocks.
---| "ANY"         # Hit any fluid.
---| "WATER"       # Only hit water.

---@alias RaycastAPI.entityPredicate fun(entity: Entity): (valid: boolean)
