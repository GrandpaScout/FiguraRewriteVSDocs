# 0.1.4 #

V1
--------------------------------------------------
* Updated from 0.1.2 V10
* Version <samp>0.1.3</samp> was skipped due to <samp>0.1.4</samp> being an exact copy of that version.
* Added versions <samp>(0.1.2, 0.1.4]</samp> to the `avatar.json` schema.
* Simplified version list in schema presets.
* [Changes made directly from 0.1.3 changelog](https://github.com/FiguraMC/Figura/compare/0.1.2...0.1.3)
  * Added `ClientAPI.getShaderPackName()`.
  * Renamed `ClientAPI.hasIris()` to `ClientAPI.hasShaderPackMod()`.
  * Renamed `ClientAPI.hasIrisShader()` to `ClientAPI.hasShaderPack()`.
  * Updated descriptions of `ClientAPI.hasShaderPackMod()` and `ClientAPI.hasShaderPack()` to recognize Optifine.
  * Removed `@*vmerror` from `parseJson()`, `RendererAPI:isUpsideDown()`, `RendererAPI:getPrimaryFireTexture()`,
    `RendererAPI:getSecondaryFireTexture()`.
  * Renamed `Player:getCoolDownPercent()` to `Player:getCooldownPercent()`.
  * Fixed first parameter of `Player:getCoolDownPercent()` to <kbd>ItemStack</kbd>, making the method usable.
  * Removed `@*error` from `Player:getCoolDownPercent()`.
  * Removed `@*vmerror` from `vec()`, `VectorsAPI.vec()`, and `VectorsAPI.rotateAroundAxis()`.
  * Updated params `vec` and `x` of `VectorsAPI.rotateAroundAxis()` to no longer be optional as they throw an error if
    `nil`.
  * Removed `@*vmerror` from `Matrix2:rotate()`.
  * Updated param `angle` of `Matrix2:rotate()` to be optional.
  * Removed `@*vmerror` from `Vector2!__mul`, `Vector2:transform()`, `Vector3!__mul`, `Vector3:transform()`, and
    `Vector4!__mul`, `Vector4:transform()`.
  * Updated param `mat` of `Vector2:transform()` to be optional.
  * Removed `@*vmerror` from `ModelPart:moveTo()`.
  * Renamed `ModelPart:newTask()` to `ModelPart:addTask()`.
  * Removed `@*hidden` and `@*error` from `ModelPart:addTask()`.
  * Removed `@*error` from `ModelPart:removeChild()`.
  * Removed `@*error` from `TextTask:getBackgroundColor()`.
  * Removed `@*vmerror` from `TextTask:getOutlineColor()`.
  * Updated description of `TextTask:getBackgroundColor()` and `TextTask:getOutlineColor()` to reflect fixes.
  * Renamed `TextTask:HasWrap()` to `TextTask:hasWrap()`.
  * Removed `@*error` from `TextTask:hasWrap()`.
  * Updated `@*error` of `Sound:pause()`.
  * Removed `@*error` from `EntityNamepate:getBackgroundColor()`.
  * Updated description of `EntityNamepate:getBackgroundColor()` to reflect fixes.
  * Added `EventsAPI.TRIDENT_RENDER`, <kbd>Event.TridentRender</kbd>, and <kbd>Event.TridentRender.func</kbd>.
  * Added the `"Trident"` parent type to <kbd>ModelPart.parentType</kbd> and the `avatar.json` schema
  * Added `ModelPart:getPrimaryDefinedTextures()`, `ModelPart:getPrimaryTexture()`,
    `ModelPart:getSecondaryDefinedTextures()`, and `ModelPart:getSecondaryTexture()`.
  * Updated description of `ModelPart:getTextures()` to reflect its actual behavior.
  * Removed `@*error` from `parseJson()` and `toJson()`.
  * Added `badge_color_*` properties to `avatar.json` schema.
  * Added `AvatarAPI:getBadges()`.
  * Added <kbd>AvatarAPI.badge</kbd>.
  * Updated `AvatarAPI:setColor()` to include the `badge` param.
  * Added `ClientAPI.generateUUID()`.
  * Added `data`, <kbd>DataAPI</kbd>, <kbd>Buffer</kbd>, <kbd>Buffer.encoding</kbd>, <kbd>Future</kbd>,
    <kbd>Stream</kbd>, <kbd>InputStream</kbd>, and <kbd>OutputStream</kbd>.
  * Removed deprecation of `data`, all deprecated functions of `data` remain deprecated.
  * Added `net`, <kbd>NetworkingAPI</kbd>, <kbd>HttpRequestBuilder</kbd>, <kbd>HttpRequestBuilder.method</kbd>,
    <kbd>HttpRequestBuilder.header</kbd>, <kbd>HttpResponse</kbd>, and <kbd>HttpResponse.header</kbd>.
  * Added `file`, and <kbd>FileAPI</kbd>.
  * Added `json`, <kbd>JsonAPI</kbd>, <kbd>JsonBuilder</kbd>, <kbd>JsonSerializer</kbd>, <kbd>JsonType</kbd>,
    <kbd>JsonArray</kbd>, and <kbd>JsonObject</kbd>.
  * Added `resources` property to `avatar.json` schema.
  * Added `resources` and <kbd>ResourcesAPI</kbd>.
  * Added `raycast`, <kbd>RaycastAPI</kbd>, <kbd>RaycastAPI.aabb</kbd>, <kbd>RaycastAPI.blockMode</kbd>,
    <kbd>RaycastAPI.fluidMode</kbd>, <kbd>RaycastAPI.entityPredicate</kbd>.
  * Added `RendererAPI:getRootRotationAllowed()` and `RendererAPI:setRootRotationAllowed()`.
  * Added `WorldAPI.getHeight()` and <kbd>WorldAPI.heightmap</kbd>.
  * Added `ClientAPI.getRegistry()`, <kbd>ClientAPI.registry</kbd>, `ClientAPI.getEnum()`, <kbd>ClientAPI.enum</kbd>,
    `ClientAPI.getActionBar()`, `ClientAPI.getSubtitle()`, `ClientAPI.getTitle()`, `ClientAPI.getScoreboard()`,
    <kbd>ClientAPI.scoreboard</kbd>, <kbd>ClientAPI.objective</kbd>, and <kbd>ClientAPI.criteria</kbd>.
  * Removed deprecation of `ClientAPI.getActionBar()`, `ClientAPI.getSubtitle()`, and `ClientAPI.getTitle()`.
  * Updated `ON_PLAY_SOUND` event to include cancelling.
  * Added the `CUTOUT_EMISSIVE_SOLID` render type.
  * Added the `"LeftElytraPivot"` and `"RightElytraPivot"` parent types to <kbd>ModelPart.parentType</kbd> and the
    `avatar.json` schema.
  * Added new aliases for `"ChestplatePivot"` and `"LeggingsPivot"`.
  * Added `WorldAPI.getDay()` and `WorldAPI.getDayTime()`.
  * Added `ModelPart.newEntity()` and <kbd>EntityTask</kbd>.
  * Added new overloads for `SpriteTask.setTexture()`.
* Updated description of <kbd>Sound</kbd>.
* Improved description of `RendererAPI:isUpsideDown()`, `RendererAPI:getPrimaryFireTexture()`, and
  `RendererAPI:getSecondaryFireTexture()`.
* Renamed <kbd>VectorAPI</kbd> to <kbd>VectorsAPI</kbd> to match Figura.
* Fixed missing descriptions in overloads of `VectorsAPI.vec()` and `VectorsAPI.toCameraSpace()`.
* Fixed issue with `avatar.json` schema that caused choice placeholders to not work.
* Fixed the `color`, `r`, `g`, and `b` params of `AvatarAPI:setColor()` not being optional.
* Removed type <kbd>range*0-15</kbd> and replaced it with <kbd>integer</kbd>.
* Added the <kbd>never</kbd> type for marking functions or parameters as impossible.
* Fixed wrong description of `AvatarAPI:getPermissionLevel()`.
* Added missing function `AvatarAPI:getVolume()`.
* Renamed <kbd>ItemTask.renderMode</kbd> to <kbd>ItemTask.displayMode</kbd>
* Renamed <kbd>Animation.playStates</kbd> to <kbd>Animation.playState</kbd>
* Added <kbd>Minecraft.shaderName</kbd> to better fit the requirement of `RendererAPI:setPostEffect()`.
* Updated description of `math.lerp()`, `math.lerpAngle()`, and `math.map()` to mention that matrices will also affect
  the output.
* Removed *all* direct usage of the <kbd>*.any</kbd> types from the docs.  
  They now represent an unwillingness to type-check a more specific kind of a type and are for convenience.  
  **THIS IS A BREAKING CHANGE AND WILL REQUIRE YOU TO CHECK YOUR CODE!**

V2
--------------------------------------------------
* Fixed instances in the docs where the old name of <kbd>VectorAPI</kbd> was used instead of <kbd>VectorsAPI</kbd>.
* Fixed wrong name of `EntityTask:setNbt()`.
* Added `"neoforge"` to <kbd>Minecraft.clientBrand</kbd>.
* Added `"Forge"` and `"NeoForge"` to <kbd>Minecraft.serverBrand</kbd>.
