# 0.1.0 RC10 → *UPCOMING* #

Upcoming
--------------------------------------------------
* Updated from 0.1.0 RC10 V1

2022-11-08
--------------------------------------------------
* [`c8a8c86`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/c8a8c86)
  * Added `HostAPI:setBadge()`.  
    (No fun allowed, though. It doesn't do anything.)

2022-11-13
--------------------------------------------------
* [`5e3803c`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/5e3803c)
  * Updated `TextureAPI:load()` to support byte arrays (integer tables).
* [`d476e98`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/d476e98)
  * Rename `WorldAPI.playerVars` to `WorldAPI.avatarVars`.

2022-11-14
--------------------------------------------------
* [`ee19683`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/ee19683)
  * Modified description of `ModelPart:setPrimaryTexture()` and `ModelPart:setSecondaryTexture()` to
    specifically mention that texture type `"CUSTOM"` only takes <kbd>**Texture**</kbd> objects.
* [`c4bf1f5`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/c4bf1f5)
  * Removed `HostAPI:getTargetedEntity()`.
  * Added `EntityAPI:getTargetedEntity()`.
  * Modified `EntityAPI:getTargetedBlock()` to return a vararg instead.
  * Added <kbd>**EntityAPI.blockSide**</kbd>.
  * Added `WorldAPI:raycastBlock()` and `WorldAPI:raycastEntity()`.  
    (No, that is not a typo. These methods are not static.)

2022-11-15
--------------------------------------------------
* Fixed description of `Matrix3:scale()` and `Matrix4:scale()` to mention default value of param
  `z`.
* Added missing functions `Matrix3:translate()` and `Matrix4:translate()`.
* Fixed small typo in description of `ModelPart:getTask()`.
* Fixed required `json` parameter in global `logJson` and `printJson`.
* [`ac0483e`](https://github.com/Kingdom-of-The-Moon/FiguraRewriteRewrite/commit/ac0483e)
  * Added `Action:texture()`, `Action:hoverTexture()`, and `Action:toggleTexture()`  
    (It currently seems impossible to "unset" a texture.)
  * Modified descriptions of `Action:hoverItem()`, `Action:item()`, and `Action:toggleItem()` to
    hint at possibility of combining an item and a texture in action icons.
