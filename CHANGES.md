# 0.1.0 RC9 #

V1
--------------------------------------------------
* Updated from 0.1.0 RC8 V3
* Added references to RC9 in <kbd>**Figura.version**</kbd> and *`avatar.schema.json`*.
* [Changes made directly from RC9 changelog](
    https://discord.com/channels/805969743466332191/959863825581101116/1023783350835630080
  )
  * Removed `@*error` from `EventsAPI.TICK` and `EventsAPI.WORLD_TICK`.  
    That's it. That's all of it.

V2
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
