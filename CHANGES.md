# 0.1.0 RC11 #

V1
--------------------------------------------------
* Updated from 0.1.0 RC10 V1
* Added `HostAPI:setBadge()`.  
  (No fun allowed, though. It doesn't do anything.)
* Updated `TextureAPI:load()` to support byte arrays (integer tables).
* Rename `WorldAPI.playerVars` to `WorldAPI.avatarVars`.
* Modified description of `ModelPart:setPrimaryTexture()` and `ModelPart:setSecondaryTexture()` to
    specifically mention that texture type `"CUSTOM"` only takes <kbd>**Texture**</kbd> objects.
* Removed `HostAPI:getTargetedEntity()`.
* Added `EntityAPI:getTargetedEntity()`.
* Modified `EntityAPI:getTargetedBlock()` to return a vararg instead.
* Added <kbd>**EntityAPI.blockSide**</kbd>.
* Added `WorldAPI:raycastBlock()` and `WorldAPI:raycastEntity()`.  
  (No, that is not a typo. These methods are not static.)
* Fixed description of `Matrix3:scale()` and `Matrix4:scale()` to mention default value of param
  `z`.
* Added missing functions `Matrix3:translate()` and `Matrix4:translate()`.
* Fixed small typo in description of `ModelPart:getTask()`.
* Fixed required `json` parameter in global `logJson` and `printJson`.
* Added `Action:texture()`, `Action:hoverTexture()`, and `Action:toggleTexture()`  
  (It currently seems impossible to "unset" a texture.)
* Modified descriptions of `Action:hoverItem()`, `Action:item()`, and `Action:toggleItem()` to
  hint at possibility of combining an item and a texture in action icons.

V2
--------------------------------------------------
* Fixed description of `WorldAPI.avatarVars` to specify owner *UUID* instead of owner *name*.
* Fixed deprecation message of `data` to mention <kbd>**ConfigAPI**</kbd>.

V3
--------------------------------------------------
* Added missing references to RC11 in <kbd>**Figura.version**</kbd> and *`avatar.schema.json`*.
* Added no replacement section to deprecation message of `data`.

V4
--------------------------------------------------
* Modified description of `EventsAPI.SKULL_RENDER` to mention `nil` pos for entity-worn skulls.

V5
--------------------------------------------------
* Fixed missing function `Action:toggled()`.
* Fixed missing function `ModelPart:isChildOf()`.
