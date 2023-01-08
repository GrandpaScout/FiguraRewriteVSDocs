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
