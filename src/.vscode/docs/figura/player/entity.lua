---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  ENTITY                                                                                                          ---
---==================================================================================================================---

---A Minecraft entity.
---@class Entity
local Entity


---===== GETTERS =====---

---Gets the size of this entity's bounding box in all three axes.  
---The `x` and `z` axes are always the same value.
---@return Vector3
---@nodiscard
function Entity:getBoundingBox() end

---Gets the entity that this entity is controlling the movement of.
---
---If this entity is not controlling another entity, this returns `nil`.
---@return Entity?
---@nodiscard
function Entity:getControlledVehicle() end

---Gets the entity that is controlling this entity's movement.
---
---If this entity is not being controlled by another entity, this returns `nil`.
---@return Entity?
---@nodiscard
function Entity:getControllingPassenger() end

---Gets the current dimension this entity is in.
---@return Minecraft.dimensionID
---@nodiscard
function Entity:getDimensionName() end

---Gets the Y offset of this entity's eyes in blocks.
---
---Not to be confused with `:getEyeY()`, which gets the Y *position* of the eyes.
---@return number
---@nodiscard
function Entity:getEyeHeight() end

---Gets the Y position of this entity's eyes in blocks.
---
---Not to be confused with `:getEyeHeight()`, which gets the Y *offset* of the eyes.
---@return number
---@nodiscard
function Entity:getEyeY() end

---Gets the amount of time this entity has been in powdered snow with no protection in ticks.
---@return integer
---@nodiscard
function Entity:getFrozenTicks() end

---Gets the item stack in the given equipment slot of this entity.
---
---If nothing is in the given slot, an item stack of `minecraft:air` is returned.  
---If the given slot is invalid, `nil` is returned.
---@param slot Entity.slot
---@return ItemStack?
---@nodiscard
function Entity:getItem(slot) end

---Gets a unit vector representing the direction this entity is looking in.
---
---*This does not return a rotation, use `:getRot()` for that instead.*
---@return Vector3
---@nodiscard
function Entity:getLookDir() end

---Gets the max amount air this entity have in ticks.
---@return integer
---@nodiscard
function Entity:getMaxAir() end

---Gets the display name of this entity.
---
---This can either be the custom name, translated name, or username of this entity.
---@return string
---@nodiscard
function Entity:getName() end

---Gets the root NBT compound of this entity as a Lua table.
---
---This data *will* be different from what the server (and `/data`) sees as clients do not receive
---all NBT data.
---@return table
---@nodiscard
function Entity:getNbt() end

---Gets the passengers on this entity.
---@return Entity[]
---@nodiscard
function Entity:getPassengers() end

---Gets the server permission level of this entity.
---
---A permission of 2 is required to run most commands.
---@return Entity.permissionLevel
---@nodiscard
function Entity:getPermissionLevel() end

---Gets the current position of this entity in blocks.  
---If a `delta` is given, the position is interpolated between the previous and current ticks.
---
---If `delta` is `nil`, it will default to `1`.
---@param delta? number
---@return Vector3
---@nodiscard
function Entity:getPos(delta) end

---Gets the current pose of this entity.
---@return Entity.pose
---@nodiscard
function Entity:getPose() end

---Gets the current rotation of this entity in degrees.  
---If a `delta` is given, the rotation is interpolated between the previous and current ticks.
---
---If `delta` is `nil`, it will default to `1`.
---@param delta? number
---@return Vector2
---@nodiscard
function Entity:getRot(delta) end

---Casts a ray from the eyes of this entity that targets blocks up to 20 blocks forwards or
---backwards, getting the first block hit, the position the ray collided with that block, and the
---side of the block that the ray hit.
---
---Positive distance is forwards, negative distance is backwards.
---
---If `ignoreLiquids` is `nil`, it will default to `false`.  
---If `distance` is `nil`, it will default to `20`.
---@param ignoreLiquids? boolean
---@param distance? number
---@return BlockState block
---@return Vector3 hit_pos
---@return Entity.blockSide side
---@nodiscard
function Entity:getTargetedBlock(ignoreLiquids, distance) end

---Casts a ray from the eyes of this entity that targets entities up to 20 blocks forwards, getting
---the first entity hit and the position the ray collided with that entity.
---
---Returns `nil` if no entity is hit.
---
---If `distance` is `nil`, it will default to `20`.
---@param distance? number
---@return Entity? entity
---@return Vector3? hit_pos
---@nodiscard
function Entity:getTargetedEntity(distance) end

---Gets the namespaced type of this entity.
---@return Minecraft.entityID
---@nodiscard
function Entity:getType() end

---Gets the UUID of this entity.
---@return string
---@nodiscard
function Entity:getUUID() end

---Gets a table of all the variables stored on this entity by the avatar it is wearing.
---
---These variables are stored with `<AvatarAPI>:store()`.
---@return {[string]: any}
---@nodiscard
function Entity:getVariable() end

---Gets a variable that was stored on this entity by the avatar it is wearing.
---
---These variables are stored with `<AvatarAPI>:store()`.
---@param key string
---@return any
---@nodiscard
function Entity:getVariable(key) end

---Gets the entity that this entity is riding.
---
---Returns `nil` if there is no vehicle.
---@return Entity?
---@nodiscard
function Entity:getVehicle() end

---Gets the current velocity of this entity.
---@return Vector3
---@nodiscard
function Entity:getVelocity() end

---Gets if this entity is wearing an avatar.
---@return boolean
---@nodiscard
function Entity:hasAvatar() end

---Gets if this entity has a container.
---
---This includes entities such as minecarts and boats with chests.
---@return boolean
---@nodiscard
function Entity:hasContainer() end

---Gets if this entity has an inventory.
---
---This includes entities such as horses and llamas.
---@return boolean
---@nodiscard
function Entity:hasInventory() end

---Gets if this entity is alive.
---@return boolean
---@nodiscard
function Entity:isAlive() end

---Gets if this entity is crouching.
---@return boolean
---@nodiscard
function Entity:isCrouching() end

---Gets if this entity is glowing for any reason (Glowing status effect, `Glowing` NBT, etc.)
---@return boolean
---@nodiscard
function Entity:isGlowing() end

---Gets if this entity is currently in lava.
---@return boolean
---@nodiscard
function Entity:isInLava() end

---Gets if this entity is standing in rain.
---@return boolean
---@nodiscard
function Entity:isInRain() end

---Gets if this entity is invisible for any reason (Invisibility status effect, `Invisible` NBT, etc.)
---@return boolean
---@nodiscard
function Entity:isInvisible() end

---Gets if this entity is currently in water or a waterlogged block.
---@return boolean
---@nodiscard
function Entity:isInWater() end

---Gets if this entity is living.
---
---If this returns `true`, this object is at least a `LivingEntity`.
---@return boolean
---@nodiscard
function Entity:isLiving() end

---Gets if this entity is loaded and being updated.
---@return boolean
---@nodiscard
function Entity:isLoaded() end

---Gets if this entity is currently on fire.
---@return boolean
---@nodiscard
function Entity:isOnFire() end

---Gets if this entity is standing on solid ground.
---@return boolean
---@nodiscard
function Entity:isOnGround() end

---Gets if this entity is a player.
---
---if this returns `true`, this object is at least a `Player`.
---@return boolean
---@nodiscard
function Entity:isPlayer() end

---Gets if this entity is completely silent for any reason (Mainly `Silent` NBT.)
---@return boolean
---@nodiscard
function Entity:isSilent() end

---Gets if this entity is sneaking.
---@return boolean
---@nodiscard
function Entity:isSneaking() end

---Gets if this entity is sprinting.
---@return boolean
---@nodiscard
function Entity:isSprinting() end

---Gets if this entity's eyes are underwater.
---@return boolean
---@nodiscard
function Entity:isUnderwater() end

---Gets if this entity is wet for any reason (In water, in rain, etc.)
---@return boolean
---@nodiscard
function Entity:isWet() end


---==================================================================================================================---
---  LIVINGENTITY extends ENTITY                                                                                     ---
---==================================================================================================================---

---A living Minecraft entity.
---@class LivingEntity: Entity
local LivingEntity


---===== GETTERS =====---

---Gets the amount of absorption this entity has.
---@return number
---@nodiscard
function LivingEntity:getAbsorptionAmount() end

---Gets the hand this entity last used an item in.
---
---Defaults to `"MAIN_HAND"` if no item has been used.
---@return LivingEntity.hand
---@nodiscard
function LivingEntity:getActiveHand() end

---Gets the item that this entity is currently using.
---
---If this entity is using nothing, an item stack of `minecraft:air x0` is returned.
---@return ItemStack
---@nodiscard
function LivingEntity:getActiveItem() end

---Gets the amount of time this entity has been using its current active item in ticks.
---@return integer
---@nodiscard
function LivingEntity:getActiveItemTime() end

---Gets the amount of armor this entity has.
---@return number
---@nodiscard
function LivingEntity:getArmor() end

---Gets the amount of arrows stuck in this entity.
---@return integer
---@nodiscard
function LivingEntity:getArrowCount() end

---Gets the yaw of this entity's entire body in degrees.  
---If a `delta` is given, the yaw is interpolated between the previous and current ticks.
---
---If `delta` is `nil`, it will default to `1`.
---@param delta? number
---@return number
---@nodiscard
function LivingEntity:getBodyYaw(delta) end

---Gets the amount of time this entity has been dead in ticks.  
---This usually has a maximum of 19 before the entity is deleted.
---@return integer
---@nodiscard
function LivingEntity:getDeathTime() end

---Gets the category this entity belongs to.
---@return LivingEntity.category
---@nodiscard
function LivingEntity:getEntityCategory() end

---Gets the health of this entity.
---@return number
---@nodiscard
function LivingEntity:getHealth() end

---Gets the item held in on of this entity's hands.
---
---If this entity is holding nothing in the given hand, an item stack of `minecraft:air x0` is
---returned.
---
---If `offhand` is `nil`, it will default to `false`.
---@param offhand? boolean
---@return ItemStack
---@nodiscard
function LivingEntity:getHeldItem(offhand) end

---Gets the maximum health of this entity.
---@return number
---@nodiscard
function LivingEntity:getMaxHealth() end

---Gets the amount of stingers stuck in this entity.
---@return integer
---@nodiscard
function LivingEntity:getStingerCount() end

---Gets the arm this entity is currently swinging.
---
---Returns `nil` if no arm is swinging.
---@return LivingEntity.hand?
---@nodiscard
function LivingEntity:getSwingArm() end

---Gets how long it will take this entity to swing its arm in ticks.
---@return integer
---@nodiscard
function LivingEntity:getSwingDuration() end

---Gets how long this entity has been swinging its arm in ticks.
---@return integer
---@nodiscard
function LivingEntity:getSwingTime() end

---Gets if this entity is blocking.
---@return boolean
---@nodiscard
function LivingEntity:isBlocking() end

---Gets if this entity is using a climbable block.
---@return boolean
---@nodiscard
function LivingEntity:isClimbing() end

---Gets if this entity is gliding.
---@return boolean
---@nodiscard
function LivingEntity:isGliding() end

---Gets if this entity is left-handed.
---@return boolean
---@nodiscard
function LivingEntity:isLeftHanded() end

---Gets if this entity is damaged by water.
---@return boolean
---@nodiscard
function LivingEntity:isSensitiveToWater() end

---Gets if this entity is currently swinging its arm.
---@return boolean
---@nodiscard
function LivingEntity:isSwingingArm() end

---Gets if this entity is currently using an item.
---@return boolean
---@nodiscard
function LivingEntity:isUsingItem() end

---Gets if this entity is in its swimming pose.
---@return boolean
---@nodiscard
function LivingEntity:isVisuallySwimming() end

---Gets if this entity is spinning with riptide.
---@return boolean
---@nodiscard
function LivingEntity:riptideSpinning() end


---==================================================================================================================---
---  PLAYER extends LIVINGENTITY extends ENTITY                                                                      ---
---==================================================================================================================---

---A Minecraft player.
---@class Player: LivingEntity
local Player


---===== GETTERS =====---

---Gets the delay of this player's charged attacks in ticks.
---@return number
---@nodiscard
function Player:getChargedAttackDelay() end

---Gets the cooldown of the given item for this player.
---
---If `delta` is `nil`, it will default to `0`.
---@param stack ItemStack
---@param delta? number
---@return number
---@nodiscard
function Player:getCooldownPercent(stack, delta) end

---Gets the hunger exhaustion of this player.
---@return number
---@nodiscard
function Player:getExhaustion() end

---Gets the experience level of this player.
---@return integer
---@nodiscard
function Player:getExperienceLevel() end

---Gets the progress to this player's next experence level.
---@return number
---@nodiscard
function Player:getExperienceProgress() end

---Gets the hunger level of this player.
---@return integer
---@nodiscard
function Player:getFood() end

---Gets the gamemode of this player.
---
---May return `nil` if the current gamemode is unknown.
---@return Player.gamemode?
---@nodiscard
function Player:getGamemode() end

---Gets the model type of this player.
---@return Player.modelType
---@nodiscard
function Player:getModelType() end

---Gets the saturation level of this player.
---@return number
---@nodiscard
function Player:getSaturation() end

---Gets the NBT of an entity on the player's left or right shoulder.
---
---If `right` is `nil`, it will default to `false`.
---@param right? boolean
---@return table
---@nodiscard
function Player:getShoulderEntity(right) end

---Gets information about the team this player is in.
---
---If the player is not in a team, this returns `nil`.
---@return Player.teamInfo?
---@nodiscard
function Player:getTeamInfo() end

---Gets if this player has a cape.
---@return boolean
---@nodiscard
function Player:hasCape() end

---Gets if this player has a skin.
---@return boolean
---@nodiscard
function Player:hasSkin() end

---Gets if this player is fishing.
---@return boolean
---@nodiscard
function Player:isFishing() end

---Gets if the given skin layer is set to be visible.
---@param layer Player.skinLayer
---@return boolean
---@nodiscard
function Player:isSkinLayerVisible(layer) end


---==================================================================================================================---
---  VIEWER extends PLAYER extends LIVINGENTITY extends ENTITY                                                       ---
---==================================================================================================================---

---The player that is viewing this avatar.
---
---This specific object has access to more than the usual player due to the viewer knowing more about themselves.
---@class Viewer: Player
local Viewer

---===== GETTERS =====---

---Gets the amount of air the viewer has left in ticks.
---@return integer
---@nodiscard
function Viewer:getAir() end

---Gets the current attack charge of the viewer as a fraction.
---
---Attack charge below `0.9` will not result in a crit.
---@return number
---@nodiscard
function Viewer:getAttackCharge() end

---Gets the reach distance of the viewer in blocks.
---@return number
---@nodiscard
function Viewer:getReachDistance() end

---Gets the status effects applied to the viewer.
---@return HostAPI.statusEffect[]
---@nodiscard
function Viewer:getStatusEffects() end

---Gets if the viewer is currently in creative flight.
---@return boolean
---@nodiscard
function Viewer:isFlying() end

---Gets if the viewer is jumping.
---@return boolean
---@nodiscard
function Viewer:isJumping() end
