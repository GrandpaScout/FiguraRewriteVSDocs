# 0.1.0 RC12 #

V1
--------------------------------------------------
* Updated from 0.1.0 RC11 V7
* Added references to RC12 in <kbd>**Figura.version**</kbd> and *`avatar.schema.json`*.
* [Changes made directly from RC12 changelog](
    https://discord.com/channels/805969743466332191/959863825581101116/1047267509658714193
  )
  * Added `/ignoredTextures` to *`avatar.schema.json`*.
  * Modified description of `ModelPart:partToWorldMatrix()` to mention that it updates in
    first-person.
  * Modified `require()` to include the backup function parameter.
  * Added <kbd>**Event.MouseMove**</kbd>, <kbd>Event.MouseMove.func</kbd>, and `Event.MOUSE_MOVE`.
  * Modified <kbd>**Event.MouseScroll.func**</kbd> to have a return value.
  * Modified <kbd>**Event.SkullRender.func**</kbd> to have a third item parameter.
  * Modified second parameter of <kbd>**Event.SkullRender.func**</kbd> to be a
    <kbd>**BlockState**</kbd>.
  * Renamed `Animation:addCode()` to `Animation:newCode()`.
  * Added `Animation:setPlaying()`.
    * Modified deprecation of `Animation.setPlayState()` to mention this.
  * Renamed `TextureAPI:register()` to `TextureAPI:newTexture()`.
  * Renamed `ActionWheelAPI:createPage()` and `ActionWheelAPI:createAction()` to
    `ActionWheelAPI:newPage()` and `ActionWheelAPI:newAction()`.
    * Modified deprecations of `ActionWheelAPI.SLOT_#` to mention this.
  * Modified parameter `index` of `Page:setAction()` to include `-1`.
  * Renamed global `keybind` to `keybinds`.
    * Added deprecation of global `keybind` as the prewrite had this global name.
  * Renamed `KeybindAPI:create()` to `KeybindAPI:newKeybind()`.
    * Modified deprecation of `KeybindAPI.newKey()` to mention this.
  * Renamed `ParticleAPI:addParticle()` to `ParticleAPI:newParticle()`.
    * Modified deprecation of global `particle` to mention this.
  * Renamed `SoundAPI:addSound()` to `SoundAPI:newSound()`.
    * Modified deprecation of global `sound` to mention this.
  * Renamed `ModelPart:addBlock()`, `ModelPart:addItem()`, and `ModelPart:addText()` to
    `ModelPart:newBlock()`, `ModelPart:newItem()`, and `ModelPart:newItem()`.
    * Modified deprecation of `ModelPart.addRenderTask()` to mention this.
  * Added `ModelPart:setOverlay()` and `ModelPart:getOverlay()`.
    * Removed deprecation of `ModelPart.setOverlay()` and `ModelPart.getOverlay()`.
  * Removed `RenderTask:isEmissive()` and `RenderTask:emissive()`.
    * Modified deprecation of `RenderTask.getEmissive()` and `RenderTask.setEmissive()` to mention
      this.
  * Added `RenderTask:getLight()`, `RenderTask:light()`, `RenderTask:getOverlay()`, and
    `RenderTask:overlay()`.
  * Added `PlayerAPI:hasCape()` and `PlayerAPI:hasSkin()`.
  * Added <kbd>**ClientAPI.serverData**</kbd> and `ClientAPI.getServerData()`.
  * Added `RendererAPI:getFOV()` and `RendererAPI:setFOV()`.
* Fixed missing deprecation for `Animation.getOverride()`.
* Fixed deprecation of `ModelPart.clearAllRenderTasks()` claiming no replacement.
* Fixed deprecation of `ModelPart.getExtraTexEnabled()` having invalid code.
* Fixed `ModelPart:removeTask()` having two signatures. (Was there a reason for both of these?)

V2
--------------------------------------------------
* Fixed wrong description of <kbd>Event.UseItem.func</kbd>.
* Fixed missing boolean return of <kbd>Event.MouseMove.func</kbd> and
  <kbd>Event.MouseScroll.func</kbd>.
* Fixed wrong description of <kbd>Action</kbd>.
