# 0.1.0 RC10 #

V1
--------------------------------------------------
* Updated from 0.1.0 RC9 V1
* Added references to RC10 in <kbd>**Figura.version**</kbd> and *`avatar.schema.json`*.
* [Changes made directly from RC10 changelog](
    https://discord.com/channels/805969743466332191/959863825581101116/1039304001583329351
  )
  * Added `/customizations/[partPath]/moveTo` and `/customizations/[partPath]/visible` to
    *`avatar.schema.json`*.
  * Add Minecraft color names to autocomplete of `/color`.
  * Added `/autoAnims` to *`avatar.schema.json`*.
  * Removed `Animation:getOverride()`.
  * Updated description of `Animation:override()`.
  * Added `Animation:overrideRot()`, `Animation:overridePos()`, and `Animation:overrideScale()`.
  * Added `Animation:getOverrideRot()`, `Animation:getOverridePos()`, and
    `Animation:getOverrideScale()`
  * Added global `listFiles()`.
  * Updated all print and log functions to include their new return.
  * Updated globals `logTable()` and `printTable()` to include parameter `silent`.
  * Modified description of `math.lerpAngle()` to mention the *mod 360* return value.
  * Added `Vector:unpack()`.
  * Removed `VectorAPI.rainbow()`.
  * Updated <kbd>**Vector.applyFunc**</kbd> to include parameter `index`.
  * Updated global `require` to *claim* that it can return varargs.  
    *THIS IS IMPOSSIBLE TO IMPLEMENT!* Do not ask for this feature to be included with the docs.
  * Updated descriptions of `EventsAPI.RENDER` and `EventsAPI.POST_RENDER`.
  * Updated <kbd>**Event.Render.func**</kbd> to include parameter `ctx`.
  * Removed `EventsAPI.PREVIEW_RENDER` and `EventsAPI.POST_PREVIEW_RENDER`.
  * Renamed <kbd>**Event.PreviewRender.context**</kbd> to <kbd>**Event.Render.context**</kbd>.
  * Added <kbd>**Event.WorldRender.func**</kbd> to fill in.
  * Probably more crap, this was an annoying change to make.
  * Added `EventsAPI.USE_ITEM`, <kbd>**Event.UseItem**</kbd>, and <kbd>**Event.UseItem.func**</kbd>.
  * Added <kbd>**TextureAPI**</kbd> and everything related.
  * Modified descriptions of `Nameplate:setText()` and `NameplateGroup:setText()` to mention the
    `${badges}` text.
  * Updated `ParticleAPI:addParticle()` to include its new return.
  * Added `ParticleAPI:removeParticles()`.
  * Added <kbd>**Particle**</kbd> and everything related.
  * Updated `Sound:play()` to use its new signature.
  * Added `Sound:pause()`, `Sound:stop()`, `Sound:getAttenuation()`, `Sound:getPitch()`,
    `Sound:getPos()`, `Sound:getVolume()`, `Sound:isLooping()`, `Sound:isPlaying()`,
    `Sound:attenuation()`, `Sound:loop()`, `Sound:pitch()`, `Sound:pos()`, and `Sound:volume()`.
  * Added <kbd>**ConfigAPI**</kbd> and everything related.
  * Updated `ModelPart:removeTask()` to include 0-parameter form.
  * Updated <kbd>**ModelPart.textureType**</kbd> to include `"CUSTOM"`
  * Updated `ModelPart:setPrimaryTexture()` and `ModelPart:setSecondaryTexture()` to include the
    second <kbd>**Texture**</kbd>-type param.
  * Added `ModelPart:overrideVanillaPos()`, `ModelPart:overrideVanillaRot()`, and
    `ModelPart:overrideVanillaScale()`.
  * Added `ModelPart:getTextures()`.
  * Added `TextTask:isRight()` and `TextTask:right()`.
  * Added `HostAPI:saveTexture()`.
  * Modified <kbd>**Minecraft.screenID**</kbd> to include the entire class path of screen ids.
  * Added `HostAPI:screenshot()`.
  * Merged <kbd>**ClickAction**</kbd>, <kbd>**ToggleAction**</kbd>, and <kbd>**ScrollAction**</kbd>
    into <kbd>**Action**</kbd>.
  * Removed <kbd>**Action.any**</kbd>,
  * Merged <kbd>**ClickAction.\***</kbd>, <kbd>**ToggleAction.\***</kbd>, and
    <kbd>**ScrollAction.\***</kbd>, into <kbd>**Action.\***</kbd>.
  * Removed `Page:newToggle()` and `Page:newScroll()`.
  * Modified description for `Page:newAction()` to mention generic actions instead.
  * Added `ActionWheelAPI:createAction()`.
  * Removed `Keybind.override`.
  * Updated `Keybind:onPress()` and `Keybind:onRelease()` to mention the new return value.
  * Updated <kbd>**Keybind.func**</kbd> to include its new return.
  * Removed `Biome:getName()`.
  * Added `Biome.name`.
  * Added `LivingEntityAPI:getActiveItemTime()`, `LivingEntityAPI:getSwingArm()`,
    `LivingEntityAPI:getSwingDuration()`, and `LivingEntityAPI:getSwingTime()`.
  * Added `ClientAPI.getActiveResourcePacks()`, `ClientAPI.getViewer()`, `ClientAPI.hasResource()`,
    and `ClientAPI.intUUIDToString()`.
  * Removed `@*error` of `WorldAPI.newBlock()`.
  * Modified `Nameplate:setText()` and `NameplateGroup:setText()` to make parameter `text` optional.
* Fixed missing 0-parameter form of `ModelPart:getTask()`.
* Fixed `logTable` and `printTable` *requiring* depth when they shouldn't.
* Fixed missing parameters and returns of `TextTask:text()`.
* Removed modded (except Figura's) screen IDs from <kbd>**Minecraft.screenID**</kbd>.  
  This may return later as something different.

V2
--------------------------------------------------
* Fixed small typo in description of `ModelPart:getTask()`.
* Fixed required `json` parameter in global `logJson` and `printJson`.
* Fixed small description error in `EventsAPI.SKULL_RENDER`.
* Added missing functions `Matrix3:translate()` and `Matrix4:translate()`.
* Fixed description of `Matrix3:scale()` and `Matrix4:scale()` to mention default value of param
  `z`.
* Fixed parameter name in `EntityAPI:getTargetedBlock()`.
* Modified description of `EntityAPI:getTargetedBlock()` to specify that negative distance searches
  backwards.
* Fixed deprecation message of `data` to mention <kbd>**ConfigAPI**</kbd>.
* Many very minor description fixes.

V3
--------------------------------------------------
* Fixed missing function `Action:toggled()`.
