# 0.1.0 RC13 → *UPCOMING* #

Upcoming
--------------------------------------------------
* Updated from 0.1.0 RC13 V3

2023-01-06
--------------------------------------------------
* [`ccbaa15`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/ccbaa15)
  * Added `PlayerAPI:getShoulderEntity`.
  * Added `EntityAPI:getPassengers`.
  * Modified `EntityAPI:getVariable` to have a 0-parameter overload.
* [`771ec6a`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/771ec6a)
  * Added `"HeadsUpDisplay"`, `"GraphicalUserInterface"`, and `"JraficalUserInterface"` to
    <kbd>ModelPart.parentType</kbd>.  
    [Thanks, Katt](
      https://discord.com/channels/805969743466332191/808155531389698079/1060703969380421752
    ).
  * Fixed an incorrect alt for parent type "Skull". (💀 **⇒** ☠)
* [`1b24e76`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/1b24e76)
  * Modified `ActionWheelAPI:getPage` to have a 0-parameter overload.
  * Added `Page:getTitle`.
  * Added `KeybindAPI:getKeybinds`.
  * Added `TextTask:getText`.
* [`6d8dbdf`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/6d8dbdf)
  * Added `ConfigAPI:getName`.
* [`306edfb`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/306edfb)
  * Added `ClientAPI.getFrameTime`.
  * Moved `Keybind:hasGUI` to `Keybind:isGuiEnabled`.
  * Added `RendererAPI:shadowRadius`, `RendererAPI:cameraPos`, `RendererAPI:cameraPivot`,
    `RendererAPI:cameraRot`, `RendererAPI:postEffect`, `RendererAPI:fov`, and
    `RendererAPI:crosshairOffset`.

2023-01-07
--------------------------------------------------
* [`d489a58`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/d489a58)
  * Added `ItemStack:isArmor()`, `ItemStack:isTool`, and `ItemStack:getEquipmentSlot`,
    <kbd>ItemStack.equipmentSlot</kbd>.

2023-01-08
--------------------------------------------------
* [`5b42e22`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/5b42e22)
  * Updated <kbd>Event.SkullRender.func</kbd> to have its new parameters.
  * Added <kbd>Event.SkullRender.context</kbd>.
  * Updated description of `EventsAPI.SKULL_RENDER` to mention changes to the event and to fix a few
    errors.

2023-01-16
--------------------------------------------------
* [`60f2379`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/60f2379)
  * Added `EntityAPI:hasContainer` and `EntityAPI:hasInventory`.

2023-01-17
--------------------------------------------------
* [`8cdcf92`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/8cdcf92)
  * Added `HostAPI:getReachDistance`.
* [`f5d8478`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/f5d8478)
  * Added `P͏̨́l̴̵͟a̵̡͞ỳ̸̸̕͝ę̶r̴͘͜Ą͏̷͘͟P̢̛̛͟͞I̶͢:̵̵̨͢g̵̨͝͠e̶̕͝t́̕I̸͢͢P̵͘͢A͘͟d̷̡̀d̡̡͡r̢͘ȩ̴̧͘͡s̴ş̴̷`.
* [`e71a85f`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/e71a85f)
  * Added `RenderTask:setMatrix` and `RenderTask:matrix`.
* [`0292370`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/0292370)
  * Added `RenderTask:getName`, `RenderTask:getPositionMatrix`, `RenderTask:getPositionMatrixRaw`,
    `RenderTask:getNormalMatrix`, and `RenderTask:getNormalMatrixRaw`.
* [`074c670`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/074c670)
  * Added `ItemStack:copy`.
* [`149117c`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/149117c)
  * Changed all `setX` methods to be chainable. The `x` methods still exist.  
    The docs will still refer to the `x` methods as "CHAINED" because I have nothing better to name
    them and the fact that they are still alive is a crime against my sanity right now.
  * Added `Animation:isPlaying`, `Animation:isPaused`, and `Animation:isStopped`.
* Updated descriptions of `print` and `log` to specify how multiple arguments are seperated.
* Fixed `printJson` and `logJson` not using vararg.
* Removed reference to `__name` that was in the original description of `tostring` as that is Lua
  5.3+ only.

2023-01-18
--------------------------------------------------
* [`9e7b166`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/9e7b166)
  * Added `Page.keepLastGroup`, `Page:setKeepLastGroup`, `Page:shouldKeepLastGroup`,
    `Page:getGroupIndex`, `Page:setGroupIndex`, `Page:groupIndex`, `Page:getGroupActions`, and
    `Page:action`.
  * Updated `Page:newAction`, `Page:getAction`, and `Page:setAction` to support any integer.
  * Moved <kbd>Page.index</kbd> to <kbd>ActionWheelAPI.index</kbd>.
  * Added <kbd>ActionWheelAPI.clickFunc</kbd> and <kbd>ActionWheelAPI.scrollFunc</kbd>.
* Fixed missing methods `HostAPI:setUnlockCursor`, `HostAPI:isCursorUnlocked`,
  `RendererAPI:setRenderFire`, `RendererAPI:setRenderVehicle`, `RendererAPI:setRenderCrosshair`,
  `RendererAPI:setForcePaperdoll`, `RendererAPI:shouldRenderFire`,
  `RendererAPI:shouldRenderVehicle`, `RendererAPI:shouldRenderCrosshair`, and
  `RendererAPI:shouldForcePaperdoll`.
* Updated generics and descriptions of `math.lerp`, `math.lerpAngle`, `math.map`, and
  `math.shortAngle` to support matrices.

2023-01-19
--------------------------------------------------
* Removed deprecation of `Animation.isPlaying`.
