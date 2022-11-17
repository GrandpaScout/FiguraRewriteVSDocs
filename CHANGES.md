# 0.1.0 RC8 #

V1
--------------------------------------------------
* Updated from 0.1.0 RC7 V1
* Added references to RC8 in <kbd>**Figura.version**</kbd> and *`avatar.schema.json`*.
* Many changes made due to recent Lua server changes.
  * Made most (if not all) callbacks have optional parameters.
  * Replaced all `---@see` with `---@source`.
  * Hacky fix for duplicated descriptions by using `---<!--`. It isn't perfect.
  * Other minor fixes.
* [Changes made directly from RC8 changelog](
    https://discord.com/channels/805969743466332191/959863825581101116/1023469167711629362
  )
  * Add `"NONE"` to <kbd>**ModelPart.renderType**</kbd>.
    Changelog claims otherwise, but word is it's actually a render type.
    * Add replacement to deprecations of `ModelPart.getExtraTexEnabled` and
      `ModelPart.setExtraTexEnabled`.
  * Add `:getUV`, `:getUVPixels`, and `:getUVMatrix` to <kbd>**ModelPart**</kbd>.
    * Remove deprecation of `ModelPart.getUV`
  * Add `:getTags` to <kbd>**Biome**</kbd>.
  * Modify param `slot` of `HostAPI:getSlot()` to allow <kbd>integer</kbd>.
  * Add `"LEFT_PANTS"` and `"RIGHT_PANTS"` to <kbd>**PlayerAPI.skinLayer**</kbd>.
  * Events now support being assigned as a function directly.  
    *THIS IS NOT CASE-INSENSITIVE!* Do not ask for it to be, it's *much* harder to do than you
    think and is not worth the effort.
  * Corrected spelling of `TextTask:isCentred()` to `TextTask:isCentered()`.
  * Added `self` parameter to all action callbacks. *This is not a true self parameter due to where
    Figura places it. Do not treat it like a proper `self`.*
  * Change seperator back to `.` in *`.luarc.json`*.
  * Removed `@*error` of all <kbd>**Matrix**</kbd> `mul(number): Matrix#` operators.  
    Also combines `mul(Matrix#): Matrix#` and `mul(number): Matrix#` into
    `mul(number | Matrix#): Matrix#`.
  * Removed `@*vmerror` of `Sound:play()`.

V2
--------------------------------------------------
* Fixed a few doc formatting issues.
* Removed `@*vmerror` of `SoundAPI:playSound()`.
* Removed `@*error` of `VectorsAPI.hexToRGB()`.

V3
--------------------------------------------------
* Replaced `{ }` in vector examples with `⟨ ⟩`.
* Added `@*error` to `EventsAPI.TICK` and `EventsAPI.WORLD_TICK`.  
  This is due to events not running at predicatable times, causing many functions to fail.

V4
--------------------------------------------------
* Fixed missing signature for `ModelPart:getTask()` with no parameters.
* Fixed required `depth` parameter in global `logTable` and `printTable`.
* Fixed required `json` parameter in global `logJson` and `printJson`.
* Fixed type of `EventsAPI.PREVIEW_RENDER`.
* Removed modded (except Figura's) screen IDs from <kbd>**Minecraft.screenID**</kbd>.
* Fixed missing parameters and returns of `TextTask:text()`.
* Fixed description of `ToggleAction:isToggled()`.
* Fixed return type of `HostAPI:getTargetedEntity` to <kbd>**EntityAPI.any**</kbd>.
* Added missing functions `Matrix3:translate()` and `Matrix4:translate()`.
* Fixed description of `Matrix3:scale()` and `Matrix4:scale()` to mention default value of param
  `z`.
* Fixed parameter name in `EntityAPI:getTargetedBlock()`.
* Modified description of `EntityAPI:getTargetedBlock()` to specify that negative distance searches
  backwards.

V5
--------------------------------------------------
* Fixed missing function `ToggleAction:toggled()`.
