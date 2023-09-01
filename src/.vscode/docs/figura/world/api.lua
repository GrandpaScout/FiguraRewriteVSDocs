---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  WORLDAPI                                                                                                        ---
---==================================================================================================================---

---An API for getting information from the current Minecraft world.
---@class WorldAPI
local WorldAPI


---===== METHODS =====---

---Creates a new block state from the given values.
---
---Block properties can be defined by adding `[prop1=state1,prop2=state2,...]` after the block id.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param block Minecraft.blockID
---@param pos? Vector3
---@return BlockState
---@nodiscard
function WorldAPI.newBlock(block, pos) end

---Creates a new block state from the given values.
---
---Block properties can be defined by adding `[prop1=state1,prop2=state2,...]` after the block id.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param block Minecraft.blockID
---@param x? number
---@param y? number
---@param z? number
---@return BlockState
---@nodiscard
function WorldAPI.newBlock(block, x, y, z) end

---Creates a new item from the given values.
---
---Item NBT can be defined by adding `{tag1:value1,tag2:value2,...}` after the item id.
---
---If `count` is `nil`, it will default to `1`.  
---If `damage` is `nil`, it will default to `0`.  
---@param item Minecraft.itemID
---@param count? integer
---@param damage? integer
---@return ItemStack
---@nodiscard
function WorldAPI.newItem(item, count, damage) end

---Does nothing.
---
---If `ignoreLiquids` is `nil`, it will default to `false`.  
---If `from` or `to` are `nil`, they will default to `⟨0, 0, 0⟩`.
---|@param ignoreLiquids? boolean
---|@param from? Vector3
---|@param to? Vector3
---|@return WorldAPI.raycastBlockResult
---function WorldAPI:raycastBlock(ignoreLiquids, from, to) end

---Does nothing.
---
---If `ignoreLiquids` is `nil`, it will default to `false`.  
---If `fromX`, `fromY`, or `fromZ` are `nil`, they will default to `0`.  
---If `to` is `nil`, it will default to `⟨0, 0, 0⟩`.
---|@param ignoreLiquids? boolean
---|@param fromX? number
---|@param fromY? number
---|@param fromZ? number
---|@param to? Vector3
---|@return WorldAPI.raycastBlockResult
---function WorldAPI:raycastBlock(ignoreLiquids, fromX, fromY, fromZ, to) end

---Does nothing.
---
---If `ignoreLiquids` is `nil`, it will default to `false`.  
---If `from` is `nil`, it will default to `⟨0, 0, 0⟩`.  
---If `toX`, `toY`, or `toZ` are `nil`, they will default to `0`.
---|@param ignoreLiquids? boolean
---|@param from? Vector3
---|@param toX? number
---|@param toY? number
---|@param toZ? number
---|@return WorldAPI.raycastBlockResult
---function WorldAPI:raycastBlock(ignoreLiquids, from, toX, toY, toZ) end

---Does nothing.
---
---If `ignoreLiquids` is `nil`, it will default to `false`.  
---If `fromX`, `fromY`, `fromZ`, `toX`, `toY`, or `toZ` are `nil`, they will default to `0`.
---|@param ignoreLiquids? boolean
---|@param fromX? number
---|@param fromY? number
---|@param fromZ? number
---|@param toX? number
---|@param toY? number
---|@param toZ? number
---|@return WorldAPI.raycastBlockResult
---function WorldAPI:raycastBlock(ignoreLiquids, fromX, fromY, fromZ, toX, toY, toZ) end

---Does nothing.
---
---If `from` or `to` are `nil`, they will default to `⟨0, 0, 0⟩`.
---|@param from? Vector3
---|@param to? Vector3
---|@return WorldAPI.raycastEntityResult
---function WorldAPI:raycastEntity(from, to) end

---Does nothing.
---
---If `fromX`, `fromY`, or `fromZ` are `nil`, they will default to `0`.  
---If `to` is `nil`, it will default to `⟨0, 0, 0⟩`.
---|@param fromX? number
---|@param fromY? number
---|@param fromZ? number
---|@param to? Vector3
---|@return WorldAPI.raycastEntityResult
---function WorldAPI:raycastEntity(fromX, fromY, fromZ, to) end

---Does nothing.
---
---If `from` is `nil`, it will default to `⟨0, 0, 0⟩`.  
---If `toX`, `toY`, or `toZ` are `nil`, they will default to `0`.
---|@param from? Vector3
---|@param toX? number
---|@param toY? number
---|@param toZ? number
---|@return WorldAPI.raycastEntityResult
---function WorldAPI:raycastEntity(from, toX, toY, toZ) end

---Does nothing.
---
---If `fromX`, `fromY`, `fromZ`, `toX`, `toY`, or `toZ` are `nil`, they will default to `0`.
---|@param fromX? number
---|@param fromY? number
---|@param fromZ? number
---|@param toX? number
---|@param toY? number
---|@param toZ? number
---|@return WorldAPI.raycastEntityResult
---function WorldAPI:raycastEntity(fromX, fromY, fromZ, toX, toY, toZ) end


---===== GETTERS =====---

---Gets a table of all loaded avatars' stored values.
---
---Avatars are indexed by owner's UUID.
---@return {[string]: {[string]: any}}
---@nodiscard
function WorldAPI.avatarVars() end

---Gets if a world exists yet.  
---This will be false in *very* specific situations so this usually isn't needed.
---
---Most other world functions will fail if this is not true.
---@return boolean
---@nodiscard
function WorldAPI.exists() end

---Gets the biome at the given world position.
---
---Returns a Biome of `minecraft:plains` if the world position is not loaded.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return Biome
---@nodiscard
function WorldAPI.getBiome(pos) end

---Gets the biome at the given world position.
---
---Returns a Biome of `minecraft:plains` if the world position is not loaded.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return Biome
---@nodiscard
function WorldAPI.getBiome(x, y, z) end

---Gets the block-only light level at the given world position.
---
---Returns `0` if the world position is not loaded.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return range*0-15
---@nodiscard
function WorldAPI.getBlockLightLevel(pos) end

---Gets the block-only light level at the given world position.
---
---Returns `0` if the world position is not loaded.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return range*0-15
---@nodiscard
function WorldAPI.getBlockLightLevel(x, y, z) end

---Gets a list of all blocks in the given bounds.
---
---The maximum size of the bounds is 8×8×8.
---
---If `min` or `max` are `nil`, they will default to `⟨0, 0, 0⟩`.
---@param min? Vector3
---@param max? Vector3
---@return BlockState[]
---@nodiscard
function WorldAPI.getBlocks(min, max) end

---Gets a list of all blocks in the given bounds.
---
---The maximum size of the bounds is 8×8×8.
---
---If `minX`, `minY`, or `minZ` are `nil`, they will default to `0`.  
---If `max` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param minX? number
---@param minY? number
---@param minZ? number
---@param max? Vector3
---@return BlockState[]
---@nodiscard
function WorldAPI.getBlocks(minX, minY, minZ, max) end

---Gets a list of all blocks in the given bounds.
---
---The maximum size of the bounds is 8×8×8.
---
---If `min` is `nil`, it will default to `⟨0, 0, 0⟩`.  
---If `maxX`, `maxY`, or `maxZ` are `nil`, they will default to `0`.
---@param min? Vector3
---@param maxX? number
---@param maxY? number
---@param maxZ? number
---@return BlockState[]
---@nodiscard
function WorldAPI.getBlocks(min, maxX, maxY, maxZ) end

---Gets a list of all blocks in the given bounds.
---
---The maximum size of the bounds is 8×8×8.
---
---If `minX`, `minY`, `minZ`, `maxX`, `maxY`, or `maxZ` are `nil`, they will default to `0`.
---@param minX? number
---@param minY? number
---@param minZ? number
---@param maxX? number
---@param maxY? number
---@param maxZ? number
---@return BlockState[]
---@nodiscard
function WorldAPI.getBlocks(minX, minY, minZ, maxX, maxY, maxZ) end

---Gets the block at the given world position.
---
---Returns a BlockState of `minecraft:void_air` if the world position is not loaded.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return BlockState
---@nodiscard
function WorldAPI.getBlockState(pos) end

---Gets the block at the given world position.
---
---Returns a BlockState of `minecraft:void_air` if the world position is not loaded.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return BlockState
---@nodiscard
function WorldAPI.getBlockState(x, y, z) end

---Gets the lower and upper building bounds of the world.
---@return integer lower
---@return integer upper
---@nodiscard
function WorldAPI.getBuildHeight() end

---Gets the dimension of this world.
---@return Minecraft.dimensionID
---@nodiscard
function WorldAPI.getDimension() end

---Gets an entity by its UUID.
---
---Returns `nil` if no loaded entity has the given UUID
---@param uuid string
---@return Entity.any
---@nodiscard
function WorldAPI.getEntity(uuid) end

---Gets the overall light level at the given world position.
---
---Returns `15` if the world position is not loaded.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return range*0-15
---@nodiscard
function WorldAPI.getLightLevel(pos) end

---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return range*0-15
---@nodiscard
function WorldAPI.getLightLevel(x, y, z) end

---Gets the phase of the moon.
---@return WorldAPI.moonPhase
---@nodiscard
function WorldAPI.getMoonPhase() end

---Gets a list of all loaded players in the world.
---
---Players are indexed by name.
---@return {[string]: Player}
---@nodiscard
function WorldAPI.getPlayers() end

---Gets the current rain density, optionally with a delta for getting the density between ticks.
---
---Usually, over five seconds, this will shift from 0 to 1 when rain starts and from 1 to 0 when
---rain stops.
---
---If `delta` is `nil`, it will default to `1`.
---@param delta? number
---@return number
---@nodiscard
function WorldAPI.getRainGradient(delta) end

---Gets the maximum redstone power level of the blocks directly adjacent to the given world
---position.  
---This *does* include the redstone power level emitted by the given world position which is then
---received by an adjacent block.
---
---Returns `0` if the world position is not loaded.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return range*0-15
---@nodiscard
function WorldAPI.getRedstonePower(pos) end

---Gets the maximum redstone power level of the blocks directly adjacent to the given world
---position.  
---This *does* include the redstone power level emitted by the given world position which is then
---received by an adjacent block.
---
---Returns `0` if the world position is not loaded.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return range*0-15
---@nodiscard
function WorldAPI.getRedstonePower(x, y, z) end

---Gets the sky-only light level at the given world position.
---
---Returns `15` if the world position is not loaded.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return range*0-15
---@nodiscard
function WorldAPI.getSkyLightLevel(pos) end

---Gets the sky-only light level at the given world position.
---
---Returns `15` if the world position is not loaded.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return range*0-15
---@nodiscard
function WorldAPI.getSkyLightLevel(x, y, z) end

---Gets the spawn point of the world.
---@return Vector3
---@nodiscard
function WorldAPI.getSpawnPoint() end

---Gets the redstone power level that the given world position is receiving.  
---This does *not* include the redstone power the world position itself is emitting.
---
---Returns `0` if the world position is not loaded.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return range*0-15
---@nodiscard
function WorldAPI.getStrongRedstonePower(pos) end

---Gets the redstone power level that the given world position is receiving.  
---This does *not* include the redstone power the world position itself is emitting.
---
---Returns `0` if the world position is not loaded.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return range*0-15
---@nodiscard
function WorldAPI.getStrongRedstonePower(x, y, z) end

---Gets the world's game time in ticks. If a delta is given, it is simply added.  
---This value never stops increasing.
---
---If `delta` is `nil`, it will default to `0`.
---@param delta? number
---@return number
---@nodiscard
function WorldAPI.getTime(delta) end

---Gets the world's day time in ticks. If a delta is given, it is simply added.  
---This value matches the amount of day time that has passed in the world. If time is frozen, this
---value is too.
---
---Despite the name of this function, it does not get the time of the current day. If you want that value, use
---`.getTimeOfDay() % 24000`.  
---You can also use this number to get the amount of days passed with `math.floor(.getTimeOfDay() / 24000)`.
---
---If `delta` is `nil`, it will default to `0`.
---@param delta? number
---@return number
---@nodiscard
function WorldAPI.getTimeOfDay(delta) end

---Gets if the given world position can see the sky directly above it.
---
---Returns `true` if the world position is not loaded.
---
---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param pos? Vector3
---@return boolean
---@nodiscard
function WorldAPI.isOpenSky(pos) end

---Gets if the given world position can see the sky directly above it.
---
---Returns `true` if the world position is not loaded.
---
---If `x`, `y`, or `z` are `nil`, they will default to `0`.
---@param x? number
---@param y? number
---@param z? number
---@return boolean
---@nodiscard
function WorldAPI.isOpenSky(x, y, z) end

---Gets if there is currently a thunderstorm in the world.
---@return boolean
---@nodiscard
function WorldAPI.isThundering() end
