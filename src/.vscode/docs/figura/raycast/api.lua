---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  RAYCASTAPI                                                                                                      ---
---==================================================================================================================---

---A container for raycasting functions.
---@class RaycastAPI
local RaycastAPI


---===== METHODS =====---

---Perform a custom raycast with the defined starting point, ending point, and table of axis-aligned bounding boxes.
---
---Returns the AABB object hit, the exact position the hit occurred, the side of the AABB object that was hit or `nil`
---if the AABB object was hit from the inside, and the index of the AABB object in the given table.  
---Returns `nil` if nothing was hit.
---@param startpos Vector3
---@param endpos Vector3
---@param aabbs RaycastAPI.aabb[]
---@return RaycastAPI.aabb? aabb
---@return Vector3? hitpos
---@return Entity.blockSide? side
---@return integer? index
---@nodiscard
function RaycastAPI:aabb(startpos, endpos, aabbs) end

---Perform a custom raycast with the defined starting point, ending point, and table of axis-aligned bounding boxes.
---
---Returns the AABB object hit, the exact position the hit occurred, the side of the AABB object that was hit or `nil`
---if the AABB object was hit from the inside, and the index of the AABB object in the given table.  
---Returns `nil` if nothing was hit.
---
---If `startX`, `startY`, or `startZ` are `nil`, they will default to `0`.
---@param startX? number
---@param startY? number
---@param startZ? number
---@param endpos Vector3
---@param aabbs RaycastAPI.aabb[]
---@return RaycastAPI.aabb? aabb
---@return Vector3? hitpos
---@return Entity.blockSide? side
---@return integer? index
---@nodiscard
function RaycastAPI:aabb(startX, startY, startZ, endpos, aabbs) end

---Perform a custom raycast with the defined starting point, ending point, and table of axis-aligned bounding boxes.
---
---Returns the AABB object hit, the exact position the hit occurred, the side of the AABB object that was hit or `nil`
---if the AABB object was hit from the inside, and the index of the AABB object in the given table.  
---Returns `nil` if nothing was hit.
---
---If `endX`, `endY`, or `endZ` are `nil`, they will default to `0`.
---@param startpos Vector3
---@param endX? number
---@param endY? number
---@param endZ? number
---@param aabbs RaycastAPI.aabb[]
---@return RaycastAPI.aabb? aabb
---@return Vector3? hitpos
---@return Entity.blockSide? side
---@return integer? index
---@nodiscard
function RaycastAPI:aabb(startpos, endX, endY, endZ, aabbs) end

---Perform a custom raycast with the given starting point, ending point, and table of axis-aligned bounding boxes.
---
---Returns the hit AABB object, the exact position the hit occurred, the side of the AABB object that was hit or `nil`
---if the AABB object was hit from the inside, and the index of the AABB object in the given table.  
---Returns `nil` if nothing was hit.
---
---If `startX`, `startY`, `startZ`, `endX`, `endY`, or `endZ` are `nil`, they will default to `0`.
---@param startX? number
---@param startY? number
---@param startZ? number
---@param endX? number
---@param endY? number
---@param endZ? number
---@param aabbs RaycastAPI.aabb[]
---@return RaycastAPI.aabb? aabb
---@return Vector3? hitpos
---@return Entity.blockSide? side
---@return integer? index
---@nodiscard
function RaycastAPI:aabb(startX, startY, startZ, endX, endY, endZ, aabbs) end

---Raycasts a Minecraft block in the world between the given starting and ending points using the given block and fluid
---casting modes.
---
---Returns the hit BlockState, the exact position the hit occurred, and the side of the block that was hit or `nil` if
---the block was hit from the inside.  
---Returns `nil` if the raycast fails for some reason.
---
---If `blockMode` is `nil`, it will default to `"COLLIDER"`.  
---If `fluidMode` is `nil`, it will default to `"NONE"`.
---@param startpos Vector3
---@param endpos Vector3
---@param blockMode? RaycastAPI.blockMode
---@param fluidMode? RaycastAPI.fluidMode
---@return BlockState? block
---@return Vector3? hitpos
---@return Entity.blockSide? side
---@nodiscard
function RaycastAPI:block(startpos, endpos, blockMode, fluidMode) end

---Raycasts a Minecraft block in the world between the given starting and ending points using the given block and fluid
---casting modes.
---
---Returns the hit BlockState, the exact position the hit occurred, and the side of the block that was hit or `nil` if
---the block was hit from the inside.  
---Returns `nil` if the raycast fails for some reason.
---
---If `blockMode` is `nil`, it will default to `"COLLIDER"`.  
---If `fluidMode` is `nil`, it will default to `"NONE"`.  
---If `startX`, `startY`, or `startZ` are `nil`, they will default to `0`.
---@param startX? number
---@param startY? number
---@param startZ? number
---@param endpos Vector3
---@param blockMode? RaycastAPI.blockMode
---@param fluidMode? RaycastAPI.fluidMode
---@return BlockState? block
---@return Vector3? hitpos
---@return Entity.blockSide? side
---@nodiscard
function RaycastAPI:block(startX, startY, startZ, endpos, blockMode, fluidMode) end

---Raycasts a Minecraft block in the world between the given starting and ending points using the given block and fluid
---casting modes.
---
---Returns the hit BlockState, the exact position the hit occurred, and the side of the block that was hit or `nil` if
---the block was hit from the inside.  
---Returns `nil` if the raycast fails for some reason.
---
---If `blockMode` is `nil`, it will default to `"COLLIDER"`.  
---If `fluidMode` is `nil`, it will default to `"NONE"`.  
---If `endX`, `endY`, or `endZ` are `nil`, they will default to `0`.
---@param startpos Vector3
---@param endX? number
---@param endY? number
---@param endZ? number
---@param blockMode? RaycastAPI.blockMode
---@param fluidMode? RaycastAPI.fluidMode
---@return BlockState? block
---@return Vector3? hitpos
---@return Entity.blockSide? side
---@nodiscard
function RaycastAPI:block(startpos, endX, endY, endZ, blockMode, fluidMode) end

---Raycasts a Minecraft block in the world between the given starting and ending points using the given block and fluid
---casting modes.
---
---Returns the hit BlockState, the exact position the hit occurred, and the side of the block that was hit or `nil` if
---the block was hit from the inside.  
---Returns `nil` if the raycast fails for some reason.
---
---If `blockMode` is `nil`, it will default to `"COLLIDER"`.  
---If `fluidMode` is `nil`, it will default to `"NONE"`.  
---If `startX`, `startY`, `startZ`, `endX`, `endY`, or `endZ` are `nil`, they will default to `0`.
---@param startX? number
---@param startY? number
---@param startZ? number
---@param endX? number
---@param endY? number
---@param endZ? number
---@param blockMode? RaycastAPI.blockMode
---@param fluidMode? RaycastAPI.fluidMode
---@return BlockState? block
---@return Vector3? hitpos
---@return Entity.blockSide? side
---@nodiscard
function RaycastAPI:block(startX, startY, startZ, endX, endY, endZ, blockMode, fluidMode) end

---Raycasts a Minecraft entity in the world between the given starting and ending points using the given predicate.
---
---Returns the hit Entity and the exact position the hit occurred.  
---Returns `nil` if nothing is hit.
---
---If `predicate` is `nil`, it will default to `function() return true end`.
---@param startpos Vector3
---@param endpos Vector3
---@param predicate? RaycastAPI.entityPredicate
---@return Entity? entity
---@return Vector3? hitpos
function RaycastAPI:entity(startpos, endpos, predicate) end

---Raycasts a Minecraft entity in the world between the given starting and ending points using the given predicate.
---
---Returns the hit Entity and the exact position the hit occurred.  
---Returns `nil` if nothing is hit.
---
---If `predicate` is `nil`, it will default to `function() return true end`.  
---If `startX`, `startY`, or `startZ` are `nil`, they will default to `0`.
---@param startX? number
---@param startY? number
---@param startZ? number
---@param endpos Vector3
---@param predicate? RaycastAPI.entityPredicate
---@return Entity? entity
---@return Vector3? hitpos
function RaycastAPI:entity(startX, startY, startZ, endpos, predicate) end

---Raycasts a Minecraft entity in the world between the given starting and ending points using the given predicate.
---
---Returns the hit Entity and the exact position the hit occurred.  
---Returns `nil` if nothing is hit.
---
---If `predicate` is `nil`, it will default to `function() return true end`.  
---If `endX`, `endY`, or `endZ` are `nil`, they will default to `0`.
---@param startpos Vector3
---@param endX? number
---@param endY? number
---@param endZ? number
---@param predicate? RaycastAPI.entityPredicate
---@return Entity? entity
---@return Vector3? hitpos
function RaycastAPI:entity(startpos, endX, endY, endZ, predicate) end

---Raycasts a Minecraft entity in the world between the given starting and ending points using the given predicate.
---
---Returns the hit Entity and the exact position the hit occurred.  
---Returns `nil` if nothing is hit.
---
---If `predicate` is `nil`, it will default to `function() return true end`.  
---If `startX`, `startY`, `startZ`, `endX`, `endY`, or `endZ` are `nil`, they will default to `0`.
---@param startX? number
---@param startY? number
---@param startZ? number
---@param endX? number
---@param endY? number
---@param endZ? number
---@param predicate? RaycastAPI.entityPredicate
---@return Entity? entity
---@return Vector3? hitpos
function RaycastAPI:entity(startX, startY, startZ, endX, endY, endZ, predicate) end
