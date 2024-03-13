---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  CLIENTAPI                                                                                                       ---
---==================================================================================================================---

---An API for getting information from the Minecraft game client.
---@class ClientAPI
local ClientAPI


---===== METHODS =====---

---Compares two semantic versions, returning an integer that shows their relation.
---
---Throws if one of the versions cannot be parsed.
---@param compare string
---@param to string
---@return ClientAPI.comparison
---@nodiscard
function ClientAPI.compareVersions(compare, to) end

---Generates a random UUID as 4 integers.
---@return integer
---@return integer
---@return integer
---@return integer
---@nodiscard
function ClientAPI.generateUUID() end

---Converts a 4-int UUID to a string UUID.
---@param i1 integer
---@param i2 integer
---@param i3 integer
---@param i4 integer
---@return string
---@nodiscard
function ClientAPI.intUUIDToString(i1, i2, i3, i4) end

---Gets a list of paths to every texture atlas.
---@return string[]
---@nodiscard
function ClientAPI.listAtlases() end

---Converts a string UUID to a 4-int UUID.
---@param uuid string
---@return integer
---@return integer
---@return integer
---@return integer
---@nodiscard
function ClientAPI.uuidToIntArray(uuid) end

---===== GETTERS =====---

---Gets the text in the action bar or `nil` if the action bar is not visible.
---@return string?
---@nodiscard
function ClientAPI.getActionbar() end

---Gets the code for the viewing client's selected language.
---@return Minecraft.langCode
---@nodiscard
function ClientAPI.getActiveLang() end

---Gets a list of the viewing client's active resource packs' names.
---@return string[]
---@nodiscard
function ClientAPI.getActiveResourcePacks() end

---Gets the viewing client's allocated memory in bytes.
---@return integer
---@nodiscard
function ClientAPI.getAllocatedMemory() end

---Gets the atlas at the given path.
---@param path string
---@return TextureAtlas
---@nodiscard
function ClientAPI.getAtlas(path) end

---Gets a unit vector pointing in the same direction as the viewing client's camera.
---@return Vector3
---@nodiscard
function ClientAPI.getCameraDir() end

---Gets the entity that the camera is following.
---@return Vector3
---@nodiscard
function ClientAPI.getCameraEntity() end

---Gets the position of the viewing client's camera.
---@return Vector3
---@nodiscard
function ClientAPI.getCameraPos() end

---Gets the rotation of the viewing client's camera.
---@return Vector3
---@nodiscard
function ClientAPI.getCameraRot() end

---Gets the chunk info line from the debug screen.
---
---> ***
---
---The string follows this format:
---```js
---C: <rendered>/<total>
---```
---Suggested match pattern:
---```lua
---rendered, total <- :match("C: (%d+)/(%d+)")
---```
---@return string
---@nodiscard
function ClientAPI.getChunkStatistics() end

---Gets the Namespaced ID of the currently active *vanilla* shader.
---
---These are the same shaders that are used when spectating mobs.
---@return Minecraft.clientBrand
---@nodiscard
function ClientAPI.getClientBrand() end

---Gets the Namespaced ID of the currently active *vanilla* shader.
---
---These are the same shaders that are used when spectating mobs.
---@return Minecraft.shader
---@nodiscard
function ClientAPI.getCurrentEffect() end

---Gets the current date as a table.
---@return ClientAPI.date
---@nodiscard
function ClientAPI.getDate() end

---Gets the amount of entities in render distance.
---@return integer
---@nodiscard
function ClientAPI.getEntityCount() end

---Gets the entity info line from the debug screen.
---
---> ***
---
---The string follows this format:
---```js
---E: <rendered>/<total>, B: 0, SD: <simulationDistance>
---```
---Suggested match pattern:
---```lua
---rendered, total, simDist <- :match("E: (%d+)/(%d+), B: 0, SD: (%d+)")
---```
---@return string
---@nodiscard
function ClientAPI.getEntityStatistics() end

---Gets the Figura Enum with the given name.
---@*error Missing doc string.
---@param enum ClientAPI.enum
---@return string[]
---@nodiscard
function ClientAPI.getEnum(enum) end

---Gets the viewing client's Figura version.
---@return Figura.versionWithMC
---@nodiscard
function ClientAPI.getFiguraVersion() end

---Gets the viewing client's FOV.
---@return integer
---@nodiscard
function ClientAPI.getFOV() end

---Gets the FPS of the viewing client.
---@return integer
---@nodiscard
function ClientAPI.getFPS() end


---Gets the FPS info line from the debug screen.
---
---The `GPU` part of the line might not exist if your device does not support GPU timer queries.
---
---> ***
---
---The string follows this format:
---```js
---<fps> fps T: <fpsLimit><vsyncQuality> <cloudQuality> B: <biomeBlend> GPU: <gpuUsage>%
---```
---Suggested match patterns:
---```lua
---fps, limit, mode, clouds, blend <- :match("^(%d+) fps T: (%d+) ?(%w+) ([%w-]*) ?B: (%d+)")
---vsync, quality <- mode:match("^(v?s?y?n?c?)(%w+)$")
---gpuUsage <- :match(" GPU: (%d+)%%$")
---```
---@return string
---@nodiscard
function ClientAPI.getFPSString() end

---Gets the fraction of time between the last tick and the next tick.
---
---Effectively the `delta` parameter of `RENDER` events.
---@return number
---@nodiscard
function ClientAPI.getFrameTime() end

---Gets the viewing client's GUI Scale.
---
---If the setting is set to "auto" then this will return the actual scale.
---@return integer
---@nodiscard
function ClientAPI.getGuiScale() end

---Gets the viewing client's Java version.
---@return string
---@nodiscard
function ClientAPI.getJavaVersion() end

---Gets the viewing client's maximum memory limit in bytes.
---@return integer
---@nodiscard
function ClientAPI.getMaxMemory() end

---Gets the position of the viewing client's mouse relative to the top-left corner of the window.
---@return Vector2
---@nodiscard
function ClientAPI.getMousePos() end

---Gets the amount of particles loaded on the viewing client.
---
---> ***
---
---**Writer's note:** This is *not* returned as a number. You may want to use `tonumber` to convert
---it to an actual number.
---@return string
---@nodiscard
function ClientAPI.getParticleCount() end

---Gets the contents of the Minecraft registry with the given name.
---@param registry ClientAPI.registry
---@return string[]
---@nodiscard
function ClientAPI.getRegistry(registry) end

---Gets the size of the game window in GUI units.
---
---This is effectively the same as `.getWindowSize() / .getGuiScale()`.
---@return Vector2
---@nodiscard
function ClientAPI.getScaledWindowSize() end

---Gets the parts of the scoreboard the client can see.
---@return ClientAPI.scoreboard
---@nodiscard
function ClientAPI.getScoreboard() end

---Gets the server's brand.
---@return Minecraft.serverBrand
---@nodiscard
function ClientAPI.getServerBrand() end

---Gets the IP, name, and MotD of the server this client is connected on.
---@return ClientAPI.serverData
---@nodiscard
function ClientAPI.getServerData() end

---Gets the name of the viewing client's active Shader Pack or a blank string if none is being used.
---@return string
---@nodiscard
function ClientAPI.getShaderPackName() end

---Gets the sound info line from the debug screen.
---
---> ***
---
---The string follows this format:
---```js
---Sounds: <current>/<max> + <currentStreamed>/<maxStreamed> (Mood <moodProgress>%)
---```
---Suggested match pattern:
---```lua
---snds, max, stms, maxStms, mood <- :match("Sounds: (%d+)/(%d+) %+ (%d+)/(%d+) %(Mood (%d+)%%%)")
---```
---@return string
---@nodiscard
function ClientAPI.getSoundStatistics() end

---Gets the text in the subtitle or `nil` if it is not currently visible.
---@return string?
---@nodiscard
function ClientAPI.getSubtitle() end

---Gets the viewing client's system time in milliseconds since the Unix epoch.
---@return integer
---@nodiscard
function ClientAPI.getSystemTime() end

---Gets the contents of the server's tab list.
---@return ClientAPI.tabList
---@nodiscard
function ClientAPI.getTabList() end

---Gets the width and height of the given text in text-pixels.
---
---If `maxwidth` is set, the text will be trimmed to this width.  
---If `wrap` is set, the text will automatically wrap at `maxwidth`.
---@param text string
---@param maxwidth? integer
---@param wrap? boolean
---@return Vector2
---@nodiscard
function ClientAPI.getTextDimensions(text, maxwidth, wrap) end

---Gets the height of the given text in text-pixels.  
---(This is usually a multiple of 9.)
---@param text string
---@return integer
---@nodiscard
function ClientAPI.getTextHeight(text) end

---Gets the width of the given text in text-pixels.
---
---If multiple lines are given, the width of the longest line is returned.
---@param text string
---@return integer
---@nodiscard
function ClientAPI.getTextWidth(text) end

---Gets the text in the title or `nil` if it is not currently visible.
---@return string?
---@nodiscard
function ClientAPI.getTitle() end

---Converts a language key to a translated string.
---
---If `args` is a string or list of strings, the translation will use those strings in place of variables.
---@param key string
---@param args? string | string[]
---@nodiscard
function ClientAPI.getTranslatedString(key, args) end

---Gets the viewing client's used memory in bytes.
---@return integer
---@nodiscard
function ClientAPI.getUsedMemory() end

---Gets the viewing client's Minecraft version.
---@return string
---@nodiscard
function ClientAPI.getVersion() end

---Gets the name of the viewing client's Minecraft version.
---@return string
---@nodiscard
function ClientAPI.getVersionName() end

---Gets the viewing client as a player.
---@return Viewer
---@nodiscard
function ClientAPI.getViewer() end

---Gets the size of the viewing client's Minecraft window in pixels.
---@return Vector2
---@nodiscard
function ClientAPI.getWindowSize() end

---Gets if the viewing client has the Iris Shaders mod or Optifine mod installed.
---@return boolean
---@nodiscard
function ClientAPI.hasShaderPackMod() end

---Gets if the viewing client has an Iris or Optifine shader enabled.
---@return boolean
---@nodiscard
function ClientAPI.hasShaderPack() end

---Gets if the viewing client has the given resource loaded.
---@param path string
---@return boolean
---@nodiscard
function ClientAPI.hasResource(path) end

---Gets if the viewing client has the debug screen enabled.
---@return boolean
---@nodiscard
function ClientAPI.isDebugOverlayEnabled() end

---Gets if the viewing client has the HUD enabled.
---@return boolean
---@nodiscard
function ClientAPI.isHudEnabled() end

---Gets if a mod with the specified ID is loaded.
---@param id string
---@return boolean
---@nodiscard
function ClientAPI.isModLoaded(id) end

---Gets if the viewing client is in the pause menu.
---@return boolean
---@nodiscard
function ClientAPI.isPaused() end

---Gets if the viewing client's Minecraft version is a snapshot.
---@return boolean
---@nodiscard
function ClientAPI.isSnapshot() end

---Gets if the viewing client has the Minecraft window focused.
---@return boolean
---@nodiscard
function ClientAPI.isWindowFocused() end
