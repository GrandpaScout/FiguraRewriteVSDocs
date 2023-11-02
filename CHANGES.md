# 0.1.2 #

V1
--------------------------------------------------
* Updated from 0.1.0 RC13 V3
* Added references to 0.1.0, 0.1.1, and 0.1.2 in <kbd>**Figura.version**</kbd> and *`avatar.schema.json`*.
* There are way too many changes here for me to list right now. Come back later.

V2
--------------------------------------------------
* Fixed a few deprecation descriptions.
  * `block_state` incorrectly called itself "block-state"
  * `ModelPart.getShader` was incorrectly listed as having no replacement
  * `Vector.asTable` had a "code replacemen" 💀
  * `WorldAPI.isLightning` wasn't actually marked as deprecated.
* Added vmerror tag to `parseJson` "on JSON parsing error"

V3
--------------------------------------------------
* Added parameters `chunkname` and `env` to `loadstring()`.
* Updated type list.
* Added `0.1.1+1.19.4` to the version list.
* Added `---@nodiscard` to all functions that only return a value.  
  This is done to avoid useless calls of functions.
  ### Affected functions:
  * **`_G`**  
    `listFiles()`, `parseJson()`, `toJson()`, `vec()`  
    &nbsp;
  * **`mathlib`**  
    `.clamp()`, `.lerp()`, `.lerpAngle()`, `.map()`, `.round()`, `.shortAngle()`, `.sign()`  
    &nbsp;
  * **`Action`**  
    `:getColor()`, `:getHoverColor()`, `:getTitle()`, `:getToggleColor()`, `:getToggleTitle()`, `:isToggled()`  
    &nbsp;
  * **`ActionWheelAPI`**  
    `:newAction()`, `:getCurrentPage()`, `:getPage()`, `:getPage()`, `:getSelected()`, `:getSelectedAction()`,
    `:isEnabled()`  
    &nbsp;
  * **`Page`**  
    `:getAction()`, `:getActions()`, `:getSlotsShift()`, `:getTitle()`, `:shouldKeepSlots()`  
    &nbsp;
  * **`Animation`**  
    `:getBlend()`, `:getLength()`, `:getLoop()`, `:getLoopDelay()`, `:getName()`, `:getOffset()`, `:getOverridePos()`,
    `:getOverrideRot()`, `:getOverrideScale()`, `:getPlayState()`, `:getPriority()`, `:getSpeed()`, `:getStartDelay()`,
    `:getTime()`, `:isPaused()`, `:isPlaying()`, `:isStopped()`  
    &nbsp;
  * **`AnimationAPI`**  
    `:getAnimations()`, `:getPlaying()`  
    &nbsp;
  * **`AvatarAPI`**  
    `:canEditNameplate()`, `:canEditVanillaModel()`, `:canHaveCustomSkull()`, `:canRenderOffscreen()`,
    `:canUseCustomSounds()`, `:getAnimationComplexity()`, `:getAuthors()`, `:getColor()`, `:getComplexity()`,
    `:getCurrentInstructions()`, `:getEntityInitCount()`, `:getEntityName()`, `:getInitCount()`,
    `:getMaxAnimationComplexity()`, `:getMaxAnimationCount()`, `:getMaxComplexity()`, `:getMaxInitCount()`,
    `:getMaxParticles()`, `:getMaxRenderCount()`, `:getMaxSounds()`, `:getMaxTextureSize()`, `:getMaxTickCount()`,
    `:getMaxWorldRenderCount()`, `:getMaxWorldTickCount()`, `:getNBT()`, `:getName()`, `:getPermissionLevel()`,
    `:getRemainingParticles()`, `:getRemainingSounds()`, `:getRenderCount()`, `:getSize()`, `:getTickCount()`,
    `:getUUID()`, `:getVersion()`, `:getWorldRenderCount()`, `:getWorldTickCount()`, `:hasScriptError()`,
    `:hasTexture()`  
    &nbsp;
  * **`ClientAPI`**  
    `.compareVersions()`, `.intUUIDToString()`, `.listAtlases()`, `.uuidToIntArray()`, `.getActiveLang()`,
    `.getActiveResourcePacks()`, `.getAllocatedMemory()`, `.getAtlas()`, `.getCameraDir()`, `.getCameraEntity()`,
    `.getCameraPos()`, `.getCameraRot()`, `.getChunkStatistics()`, `.getClientBrand()`, `.getCurrentEffect()`,
    `.getDate()`, `.getEntityCount()`, `.getEntityStatistics()`, `.getFiguraVersion()`, `.getFOV()`, `.getFPS()`,
    `.getFPSString()`, `.getFrameTime()`, `.getGuiScale()`, `.getJavaVersion()`, `.getMaxMemory()`, `.getMousePos()`,
    `.getParticleCount()`, `.getScaledWindowSize()`, `.getServerBrand()`, `.getServerData()`, `.getSoundStatistics()`,
    `.getSystemTime()`, `.getTabList()`, `.getTextDimensions()`, `.getTextHeight()`, `.getTextWidth()`,
    `.getTranslatedString()`, `.getUsedMemory()`, `.getVersion()`, `.getVersionName()`, `.getViewer()`,
    `.getWindowSize()`, `.hasIris()`, `.hasIrisShader()`, `.hasResource()`, `.isDebugOverlayEnabled()`,
    `.isHudEnabled()`, `.isModLoaded()`, `.isPaused()`, `.isSnapshot()`, `.isWindowFocused()`  
    &nbsp;
  * **`ConfigAPI`**  
    `:load()`, `:getName()`  
    &nbsp;
  * **`EventsAPI`**  
    `:getEvents()`  
    &nbsp;
  * **`Event`**  
    `:getRegisteredCount()`  
    &nbsp;
  * **`HostAPI`**  
    `:screenshot()`, `:getAir()`, `:getAttackCharge()`, `:getChatColor()`, `:getChatMessage()`, `:getChatText()`,
    `:getClipboard()`, `:getPickBlock()`, `:getPickEntity()`, `:getReachDistance()`, `:getScreen()`, `:getScreenSlot()`,
    `:getScreenSlotCount()`, `:getSlot()`, `:getStatusEffects()`, `:isAvatarUploaded()`, `:isChatOpen()`,
    `:isChatVerified()`, `:isContainerOpen()`, `:isCursorUnlocked()`, `:isFlying()`, `:isHost()`, `:isJumping()`  
    &nbsp;
  * **`KeybindAPI`**  
    `:getKeybinds()`, `:getVanillaKey()`  
    &nbsp;
  * **`Keybind`**  
    `:getID()`, `:getKey()`, `:getKeyName()`, `:getName()`, `:isDefault()`, `:isEnabled()`, `:isGuiEnabled()`,
    `:isPressed()`  
    &nbsp;
  * **`MatricesAPI`**  
    `.mat2()`, `.mat3()`, `.mat4()`, `.rotation2()`, `.rotation3()`, `.rotation4()`, `.scale2()`, `.scale3()`,
    `.scale4()`, `.translate3()`, `.translate4()`, `.xRotation3()`, `.xRotation4()`, `.yRotation3()`, `.yRotation4()`,
    `.zRotation3()`, `.zRotation4()`  
    &nbsp;
  * **`Matrix`**  
    `:det()`,  
    &nbsp;
  * **`Matrix2`**  
    `:apply()`, `:applyDir()`, `:augmented()`, `:copy()`, `:inverted()`, `:transposed()`, `:getColumn()`, `:getRow()`,  
  * **`Matrix3`**  
    `:apply()`, `:applyDir()`, `:augmented()`, `:copy()`, `:deaugmented()`, `:inverted()`, `:transposed()`,
    `:getColumn()`, `:getRow()`,  
  * **`Matrix4`**  
    `:apply()`, `:applyDir()`, `:copy()`, `:deaugmented()`, `:inverted()`, `:transposed()`, `:getColumn()`,
    `:getRow()`  
    &nbsp;
  * **`ModelPart`**  
    `:copy()`, `:newBlock()`, `:newItem()`, `:newPart()`, `:newSprite()`, `:newText()`, `:partToWorldMatrix()`,
    `:getAllVertices()`, `:getAnimPos()`, `:getAnimRot()`, `:getAnimScale()`, `:getChildren()`, `:getColor()`,
    `:getLight()`, `:getName()`, `:getNormalMatrix()`, `:getNormalMatrixRaw()`, `:getOffsetPivot()`, `:getOffsetRot()`,
    `:getOffsetScale()`, `:getOpacity()`, `:getOverlay()`, `:getParent()`, `:getParentType()`, `:getPivot()`,
    `:getPos()`, `:getPositionMatrix()`, `:getPositionMatrixRaw()`, `:getPrimaryColor()`, `:getPrimaryRenderType()`,
    `:getRot()`, `:getScale()`, `:getSecondaryColor()`, `:getSecondaryRenderType()`, `:getTask()`, `:getTextures()`,
    `:getTextureSize()`, `:getTruePivot()`, `:getTruePos()`, `:getTrueRot()`, `:getTrueScale()`, `:getType()`,
    `:getUV()`, `:getUVMatrix()`, `:getUVPixels()`, `:getVertices()`, `:getVisible()`, `:isChildOf()`,
    `:overrideVanillaPos()`, `:overrideVanillaRot()`, `:overrideVanillaScale()`  
    &nbsp;
  * **`RenderTask`**  
    `:getLight()`, `:getName()`, `:getNormalMatrix()`, `:getNormalMatrixRaw()`, `:getOverlay()`, `:getPos()`,
    `:getPositionMatrix()`, `:getPositionMatrixRaw()`, `:getRot()`, `:getScale()`, `:isVisible()`,  
    &nbsp;
  * **`ItemTask`**  
    `:getDisplayMode()`,  
    &nbsp;
  * **`SpriteTask`**  
    `:getColor()`, `:getDimensions()`, `:getRegion()`, `:getRenderType()`, `:getSize()`, `:getTexture()`, `:getUV()`,
    `:getUVPixels()`, `:getVertices()`,  
    &nbsp;
  * **`TextTask`**  
    `:getAlignment()`, `:getBackgroundColor()`, `:getOpacity()`, `:getOutlineColor()`, `:getText()`, `:getWidth()`,
    `:hasBackground()`, `:hasOutline()`, `:hasShadow()`, `:HasWrap()`, `:isSeeThrough()`  
    &nbsp;
  * **`Vertex`**  
    `:getNormal()`, `:getPos()`, `:getUV()`  
    &nbsp;
  * **`Nameplate`**  
    `:getText()`,  
    &nbsp;
  * **`EntityNameplate`**  
    `:getBackgroundColor()`, `:getLight()`, `:getPivot()`, `:getPos()`, `:getScale()`, `:hasOutline()`, `:hasShadow()`,
    `:isVisible()`  
    &nbsp;
  * **`ParticleAPI`**  
    `:isPresent()`  
    &nbsp;
  * **`Particle`**  
    `:getColor()`, `:getGravity()`, `:getLifetime()`, `:getPos()`, `:getPower()`, `:getScale()`, `:getSize()`,
    `:getVelocity()`, `:hasPhysics()`, `:isAlive()`  
    &nbsp;
  * **`Entity`**  
    `:getBoundingBox()`, `:getControlledVehicle()`, `:getControllingPassenger()`, `:getDimensionName()`,
    `:getEyeHeight()`, `:getEyeY()`, `:getFrozenTicks()`, `:getItem()`, `:getLookDir()`, `:getMaxAir()`, `:getName()`,
    `:getNbt()`, `:getPassengers()`, `:getPermissionLevel()`, `:getPos()`, `:getPose()`, `:getRot()`,
    `:getTargetedBlock()`, `:getTargetedEntity()`, `:getType()`, `:getUUID()`, `:getVariable()`, `:getVehicle()`,
    `:getVelocity()`, `:hasAvatar()`, `:hasContainer()`, `:hasInventory()`, `:isAlive()`, `:isCrouching()`,
    `:isGlowing()`, `:isInLava()`, `:isInRain()`, `:isInvisible()`, `:isInWater()`, `:isLiving()`, `:isLoaded()`,
    `:isOnFire()`, `:isOnGround()`, `:isPlayer()`, `:isSilent()`, `:isSneaking()`, `:isSprinting()`, `:isUnderwater()`,
    `:isWet()`  
    &nbsp;
  * **`LivingEntity`**  
    `:getAbsorptionAmount()`, `:getActiveHand()`, `:getActiveItem()`, `:getActiveItemTime()`, `:getArmor()`,
    `:getArrowCount()`, `:getBodyYaw()`, `:getDeathTime()`, `:getEntityCategory()`, `:getHealth()`, `:getHeldItem()`,
    `:getMaxHealth()`, `:getStingerCount()`, `:getSwingArm()`, `:getSwingDuration()`, `:getSwingTime()`,
    `:isBlocking()`, `:isClimbing()`, `:isGliding()`, `:isLeftHanded()`, `:isSensitiveToWater()`, `:isSwingingArm()`,
    `:isUsingItem()`, `:isVisuallySwimming()`, `:riptideSpinning()`  
    &nbsp;
  * **`Player`**  
    `:getChargedAttackDelay()`, `:getCoolDownPercent()`, `:getExperienceLevel()`, `:getExperienceProgress()`,
    `:getFood()`, `:getGamemode()`, `:getModelType()`, `:getSaturation()`, `:getShoulderEntity()`, `:getTeamInfo()`,
    `:hasCape()`, `:hasSkin()`, `:isFishing()`, `:isSkinLayerVisible()`  
    &nbsp;
  * **`Viewer`**  
    `:getAir()`, `:getAttackCharge()`, `:getReachDistance()`, `:getStatusEffects()`, `:isFlying()`, `:isJumping()`  
    &nbsp;
  * **`RendererAPI`**  
    `:getBlockOutlineColor()`, `:getCameraMatrix()`, `:getCameraNormal()`, `:getCameraOffsetPivot()`,
    `:getCameraOffsetRot()`, `:getCameraPivot()`, `:getCameraPos()`, `:getCameraRot()`, `:getCrosshairOffset()`,
    `:getEyeOffset()`, `:getFOV()`, `:getOutlineColor()`, `:getPrimaryFireTexture()`, `:getRenderLeftArm()`,
    `:getRenderRightArm()`, `:getSecondaryFireTexture()`, `:getShadowRadius()`, `:isCameraBackwards()`,
    `:isFirstPerson()`, `:isUpsideDown()`, `:shouldForcePaperdoll()`, `:shouldRenderCrosshair()`, `:shouldRenderFire()`,
    `:shouldRenderHUD()`, `:shouldRenderVehicle()`  
    &nbsp;
  * **`SoundAPI`**  
    `:isPresent()`, `:getCustomSounds()`  
    &nbsp;
  * **`Sound`**  
    `:getAttenuation()`, `:getPitch()`, `:getPos()`, `:getSubtitle()`, `:getVolume()`, `:isLooping()`, `:isPlaying()`  
    &nbsp;
  * **`TextureAPI`**  
    `:get()`, `:getTextures()`  
    &nbsp;
  * **`Texture`**  
    `:save()`, `:getDimensions()`, `:getName()`, `:getPixel()`  
    &nbsp;
  * **`TextureAtlas`**  
    `:listSprites()`, `:getHeight()`, `:getSpriteUV()`, `:getWidth()`  
    &nbsp;
  * **`VanillaPart`**  
    `:getOffsetRot()`, `:getOffsetScale()`, `:getPos()`, `:getRot()`, `:getScale()`, `:getVisible()`  
    &nbsp;
  * **`VanillaModelPart`**  
    `:getOriginPos()`, `:getOriginRot()`, `:getOriginRot()`, `:getOriginVisible()`  
    &nbsp;
  * **`VectorAPI`**  
    `.angleToDir()`, `.hexToRGB()`, `.hsvToRGB()`, `.intToRGB()`, `.rgbToHex()`, `.rgbToHSV()`, `.rgbToInt()`,
    `.rotateAroundAxis()`, `.toCameraSpace()`, `.vec()`, `.vec2()`, `.vec3()`, `.vec4()`, `.worldToScreenSpace()`  
    &nbsp;
  * **`Vector`**  
    `:ceil()`, `:clamped()`, `:copy()`, `:dot()`, `:floor()`, `:length()`, `:lengthSquared()`, `:normalized()`,
    `:toDeg()`, `:toRad()`, `:toString()`, `:unpack()`  
    &nbsp;
  * **`Vector2`**  
    `:augmented()`, `:ceil()`, `:clamped()`, `:copy()`, `:dot()`, `:floor()`, `:normalized()`, `:toDeg()`, `:toRad()`,
    `:unpack()`  
    &nbsp;
  * **`Vector3`**  
    `:augmented()`, `:ceil()`, `:clamped()`, `:copy()`, `:crossed()`, `:dot()`, `:floor()`, `:normalized()`, `:toDeg()`,
    `:toRad()`, `:unpack()`  
    &nbsp;
  * **`Vector4`**  
    `:ceil()`, `:clamped()`, `:copy()`, `:dot()`, `:floor()`, `:normalized()`, `:toDeg()`, `:toRad()`, `:unpack()`  
    &nbsp;
  * **`WorldAPI`**  
    `.newBlock()`, `.newItem()`, `.avatarVars()`, `.exists()`, `.getBiome()`, `.getBlockLightLevel()`, `.getBlocks()`,
    `.getBlockState()`, `.getBuildHeight()`, `.getDimension()`, `.getEntity()`, `.getLightLevel()`, `.getMoonPhase()`,
    `.getPlayers()`, `.getRainGradient()`, `.getRedstonePower()`, `.getSkyLightLevel()`, `.getSpawnPoint()`,
    `.getStrongRedstonePower()`, `.getTime()`, `.getTimeOfDay()`, `.isOpenSky()`, `.isThundering()`  
    &nbsp;
  * **`Biome`**  
    `:getDownfall()`, `:getFogColor()`, `:getFoliageColor()`, `:getGrassColor()`, `:getPos()`, `:getPrecipitation()`,
    `:getSkyColor()`, `:getTags()`, `:getTemperature()`, `:getWaterColor()`, `:getWaterFogColor()`, `:isCold()`,
    `:isHot()`  
    &nbsp;
  * **`BlockState`**  
    `:asItem()`, `:toStateString()`, `:emitsRedstonePower()`, `:getBlastResistance()`, `:getCollisionShape()`,
    `:getComparatorOutput()`, `:getEntityData()`, `:getFluidTags()`, `:getFriction()`, `:getHardness()`, `:getID()`,
    `:getJumpVelocityMultiplier()`, `:getLuminance()`, `:getMapColor()`, `:getOpacity()`, `:getOutlineShape()`,
    `:getPos()`, `:getProperties()`, `:getSounds()`, `:getTags()`, `:getTextures()`, `:getVelocityMultiplier()`,
    `:hasBlockEntity()`, `:hasCollision()`, `:hasEmissiveLighting()`, `:isAir()`, `:isFullCube()`, `:isOpaque()`,
    `:isSolidBlock()`, `:isTranslucent()`  
    &nbsp;
  * **`ItemStack`**  
    `:copy()`, `:toStackString()`, `:getBlockstate()`, `:getCount()`, `:getDamage()`, `:getEquipmentSlot()`, `:getID()`,
    `:getMaxCount()`, `:getMaxDamage()`, `:getName()`, `:getPopTime()`, `:getRarity()`, `:getRepairCost()`, `:getTag()`,
    `:getTags()`, `:getUseAction()`, `:getUseDuration()`, `:hasGlint()`, `:isArmor()`, `:isBlockItem()`,
    `:isDamageable()`, `:isEnchantable()`, `:isFood()`, `:isStackable()`, `:isTool()`

V4
--------------------------------------------------
* Fixed return type of two functions
  * `Entity:getControllingPassenger()` `Entity.any` -> `Entity.any?`
  * `AvatarAPI:getEntityName()` `integer` -> `string`

V5
--------------------------------------------------
* Filled out `figuraMetatables`'s contents.
