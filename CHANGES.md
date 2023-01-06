# 0.1.0 RC13 #

V1
--------------------------------------------------
* Updated from 0.1.0 RC12 V4
* Added references to RC13 in <kbd>**Figura.version**</kbd> and *`avatar.schema.json`*.
* [Changes made directly from RC13 changelog](
    https://discord.com/channels/805969743466332191/959863825581101116/1060019426784706571
  )
  * `require`'s backup function now takes the required module as a parameter.
  * All instances of `:setX()` have a `:x()` instance and vice versa.
    * All `:setX()` are simple setters.  
      ```lua
      object:setX(value)
      object:setY(value)
      object:setZ(value)
      ```
    * All `:x()` are chainable setters.  
      ```lua
      object:x(value):y(value):z(value)
      -- or --
      object
        :x(value)
        :y(value)
        :z(value)
      ```
    * This affects:  
      <kbd>Action</kbd>, <kbd>Animation</kbd>, <kbd>AvatarAPI</kbd>, <kbd>ConfigAPI</kbd>,
      <kbd>HostAPI</kbd>, <kbd>Keybind</kbd>, <kbd>ModelPart</kbd>, <kbd>RenderTask</kbd>,
      <kbd>BlockTask</kbd>, <kbd>ItemTask</kbd>, <kbd>TextTask</kbd>, <kbd>EntityNameplate</kbd>,
      <kbd>Particle</kbd>, <kbd>Sound</kbd>, <kbd>Texture</kbd>, <kbd>Biome</kbd>, and
      <kbd>BlockState</kbd>.
  * Added `MOUSE_PRESS` event.
    * Added `EventsAPI.MOUSE_PRESS`, <kbd>Event.MousePress</kbd>, <kbd>Event.MousePress.func</kbd>,
      and <kbd>Minecraft.mouseid</kbd>.
  * Added `KEY_PRESS` event.
    * Added `EventsAPI.KEY_PRESS`, <kbd>Event.KeyPress</kbd>, <kbd>Event.KeyPress.func</kbd>, and
      <kbd>Minecraft.keyid</kbd>.
  * Added <kbd>Event.Press.state</kbd> and <kbd>Event.Press.modifiers</kbd>.
  * Added `AvatarAPI:getTrustLevel`, `AvatarAPI:getMaxTextureSize`, `AvatarAPI:canHaveCustomHeads`,
    `AvatarAPI:getUUID`, <kbd>AvatarAPI.trustLevel</kbd>, and <kbd>AvatarAPI.textureSizeLimit</kbd>.
  * Added <kbd>AnimationAPI</kbd>.
    * Changed type of global `animations` to this.
  * Added `"NORMAL"` and `"SPECULAR"` to <kbd>ModelPart.textureType</kbd>.
  * Updated description of `VanillaModelPart:getVisible`, `VanillaModelPart:setVisible`,
    `VanillaModelGroup:getVisible`, and `VanillaModelGroup:setVisible` to mention how `nil` values
    work.
  * Updated `KeybindAPI:newKeybind` to have an optional `key` paramter.
  * Added `KeybindAPI:of` and `KeybindAPI:fromVanilla`.
  * Moved `Keybind.onPress` and `Keybind.onRelease` to `Keybind.press` and `Keybind.release`
    respectively.
  * Added `Keybind:onPress`, `Keybind:onRelease`, and their `setX` versions.
  * Removed `Keybind.enabled` and `Keybind.gui`.
  * Added `Keybind:enabled`, `Keybind:gui`, their `setX` versions, `Keybind:isEnabled`, and
    `Keybind:hasGUI`.
  * Added `ClientAPI.getDate` and <kbd>ClientAPI.date</kbd>.
  * Added `HostAPI:clipboard`, its `setX` version, `HostAPI:getClipboard`,
    `HostAPI:isAvatarUploaded`, `HostAPI:getAttackCharge`, and `HostAPI:isJumping`
  * Moved `LivingEntityAPI:getStatusEffects` and <kbd>LivingEntityAPI.StatusEffect</kbd> to
    `HostAPI:getStatusEffects` and <kbd>HostAPI.statusEffect</kbd> respectively.
  * Added `RendererAPI:getCrosshairOffset` and `RendererAPI:setCrosshairOffset`.
  * Modified description of `Nameplate:setText` and `NameplateGroup:setText` to mention `${name}`
    and `${segdab}` placeholders.
  * Removed `EntityNameplate.visible`, `EntityNameplate.shadow`, and `EntityNameplate.outline`.
  * Added `EntityNameplate:visible`, `EntityNameplate:shadow`, `EntityNameplate:outline`,
    `EntityNameplate:outlineColor`, `EntityNameplate:light`, their `setX` versions,
    `EntityNameplate:isVisible`, `EntityNameplate:hasShadow`, `EntityNameplate:hasOutline`, and
    `EntityNameplate:getLight`.
  * Added `WorldAPI.getDimension`
  * Added `EntityAPI:isAlive`, `EntityAPI:getPermissionLevel`, `EntityAPI:isCrouching`.
  * Added `LivingEntity:getAbsorptionAmount`, `LivingEntity:isSensitiveToWater`,
    `LivingEntity:getEntityCategory`, `LivingEntity:isGliding`, `LivingEntity:isBlocking`,
    `LivingEntity:isVisuallySwimming`, `LivingEntity:riptideSpinning`, and
    <kbd>LivingEntity.category</kbd>.
  * Added `PlayerAPI:isFishing` and `PlayerAPI:getChargedAttackDelay`.
* Fixed incorrect function name in tutorial of <kbd>ActionWheelAPI</kbd>.
* Updated the labels for some keys.
* Changed `dir` parameter of <kbd>Event.MouseScroll.func</kbd> and <kbd>Action.scrollFunc</kbd> to
  `number` as [it is proven that it can be a decimal value](
    https://discord.com/channels/805969743466332191/808155531389698079/1059821727233875988
  ).
* Updated description of `PlayerAPI:isFlying` to better explain which method of flight it checks.
* `codestyle-check` is now a disabled diagnostic. It must be explicitly enabled.

V2
--------------------------------------------------
* Removed deprecations of `Animation.setLength`, `Animation.setLoopDelay`, `Animation.setOverride`,
  `Animation.setPriority`, `Animation.setSpeed`, `Animation.setStartDelay`,
* Removed extra deprecation of `Animation.start`.
* Modified deprecations of `ClientAPI.getCrosshairPos` and `ClientAPI.setCrosshairPos` to suggest
  `renderer:getCrosshairOffset` and `renderer:setCrosshairOffset` respectively.
* Modified deprecations of `LivingEntityAPI.getStatusEffect` and
  `LivingEntityAPI.getStatusEffectTypes` to suggest `host:getStatusEffects`.
* Changed deprecation of `ModelPart.setExtraTexEnabled` to not explicitly show `"NONE"` in the quick
  message.
* Modified deprecations of `EntityNameplate.getEnabled` and `EntityNameplate.setEnabled` to suggest
  `EntityNameplate:isVisible` and `EntityNameplate:visible` respectively.
* Removed deprecations of `RenderTask.setEnabled`, `RenderTask.setPos`, `RenderTask.setRot`,
  `RenderTask.setScale`, `BlockTask.setBlock`, `ItemTask.setItem`, and `TextTask.setText`.

V3
--------------------------------------------------
* Fixed description of `AnimationAPI`. This is what I get for copying and pasting shit to do less
  work.
* Fixed `KEY_PRESS` event using wrong event type.
