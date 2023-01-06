---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  SOUNDAPI-INTERNAL                                                                           ---
---==============================================================================================---

---**INTERNAL CLASS**&emsp;*Do not use this!*
---
---Contains generic string field for indexing.
---@class ParticleAPI.*INTERNAL*
---@field [string] Particle


---==============================================================================================---
---  PARTICLEAPI                                                                                 ---
---==============================================================================================---

---An API for handling particle effects.
---@class ParticleAPI: ParticleAPI.*INTERNAL*
local ParticleAPI


---===== METHODS =====---

---Creates a single particle in the world at the given position and optionally with a velocity.
---
---If `posVel` is `nil`, it will default to `⟨0, 0, 0, 0, 0, 0⟩`.
---@param name Minecraft.particleID
---@param posVel? Vector6
---@return Particle
function ParticleAPI:newParticle(name, posVel) end

---If `pos` or `vel` are `nil`, they will default to `⟨0, 0, 0⟩`.
---@param name Minecraft.particleID
---@param pos? Vector3
---@param vel? Vector3
---@return Particle
function ParticleAPI:newParticle(name, pos, vel) end

---If `pos` is `nil`, it will default to `⟨0, 0, 0⟩`.  
---If `velX`, `velY`, or `velZ` are `nil`, they will default to `0`.
---@param name Minecraft.particleID
---@param pos? Vector3
---@param velX? number
---@param velY? number
---@param velZ? number
---@return Particle
function ParticleAPI:newParticle(name, pos, velX, velY, velZ) end

---If `posX`, `posY`, or `posZ` are `nil`, they will default to `0`.  
---If `vel` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param name Minecraft.particleID
---@param posX? number
---@param posY? number
---@param posZ? number
---@param vel? Vector3
---@return Particle
function ParticleAPI:newParticle(name, posX, posY, posZ, vel) end

---If `posX`, `posY`, `posZ`, `velX`, `velY`, or `velZ` are `nil`, they will default to `0`.
---@param name Minecraft.particleID
---@param posX? number
---@param posY? number
---@param posZ? number
---@param velX? number
---@param velY? number
---@param velZ? number
---@return Particle
function ParticleAPI:newParticle(name, posX, posY, posZ, velX, velY, velZ) end

---Removes all particles spawned by this avatar.
function ParticleAPI:removeParticles() end
