---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  CLIENTAPI                                                                                   ---
---==============================================================================================---

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
function ClientAPI.compareVersions(compare, to) end

---Converts a 4-int UUID to a string UUID.
---@param i1 integer
---@param i2 integer
---@param i3 integer
---@param i4 integer
---@return string
function ClientAPI.intUUIDToString(i1, i2, i3, i4) end


---===== GETTERS =====---

---Gets the code for the viewing client's selected language.
---@return Minecraft.langCode
function ClientAPI.getActiveLang() end

---Gets a list of the viewing client's active resource packs' names.
---@return string[]
function ClientAPI.getActiveResourcePacks() end

---Gets the viewing client's allocated memory in bytes.
---@return integer
function ClientAPI.getAllocatedMemory() end

---Gets the position of the viewing client's camera.
---@return Vector3
function ClientAPI.getCameraPos() end

---Gets the rotation of the viewing client's camera.
---@return Vector3
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
function ClientAPI.getChunkStatistics() end

---Gets the Namespaced ID of the currently active *vanilla* shader.
---
---These are the same shaders that are used when spectating mobs.
---@return Minecraft.shader
function ClientAPI.getCurrentEffect() end

---Gets the current date as a table.
---@return ClientAPI.date
function ClientAPI.getDate() end

---Gets the amount of entities in render distance.
---@return integer
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
function ClientAPI.getEntityStatistics() end

---Gets the viewing client's Figura version.
---@return Figura.versionWithMC
function ClientAPI.getFiguraVersion() end

---Gets the viewing client's FOV.
---@return integer
function ClientAPI.getFOV() end

---Gets the FPS of the viewing client.
---@return integer
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
function ClientAPI.getFPSString() end

---Gets the viewing client's GUI Scale.
---
---If the setting is set to "auto" then this will return the actual scale.
---@return integer
function ClientAPI.getGuiScale() end

---Gets the viewing client's Java version.
---@return string
function ClientAPI.getJavaVersion() end

---Gets the viewing client's maximum memory limit in bytes.
---@return integer
function ClientAPI.getMaxMemory() end

---Gets the position of the viewing client's mouse relative to the top-left corner of the window.
---@return Vector2
function ClientAPI.getMousePos() end

---Gets the amount of particles loaded on the viewing client.
---
---> ***
---
---**Writer's note:** This is *not* returned as a number. You may want to use `tonumber` to convert
---it to an actual number.
---@return string
function ClientAPI.getParticleCount() end

---Gets the size of the game window in GUI units.
---
---This is effectively the same as `.getWindowSize() / .getGuiScale()`.
---@return Vector2
function ClientAPI.getScaledWindowSize() end

---Gets the server's brand.
---@return Minecraft.serverBrand
function ClientAPI.getServerBrand() end

---Gets the IP, name, and MotD of the server this client is connected on.
---@return ClientAPI.serverData
function ClientAPI.getServerData() end

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
function ClientAPI.getSoundStatistics() end

---Gets the viewing client's system time in milliseconds since the Unix epoch.
---@return integer
function ClientAPI.getSystemTime() end

---Gets the height of the given text in text-pixels.  
---(This is usually a multiple of 9.)
---@param text string
---@return integer
function ClientAPI.getTextHeight(text) end

---Gets the width of the given text in text-pixels.
---
---If multiple lines are given, the width of the longest line is returned.
---@param text string
---@return integer
function ClientAPI.getTextWidth(text) end

---Gets the viewing client's used memory in bytes.
---@return integer
function ClientAPI.getUsedMemory() end

---Gets the viewing client's Minecraft version.
---
---This includes any mod loaders.
---@return string
function ClientAPI.getVersion() end

---Gets the viewing client's Minecraft version type.
---
---This is almost always `"Fabric"`.
---@return string | "Fabric"
function ClientAPI.getVersionType() end

---Gets the viewing client as a player.
---@return PlayerAPI
function ClientAPI.getViewer() end

---Gets the size of the viewing client's Minecraft window in pixels.
---@return Vector2
function ClientAPI.getWindowSize() end

---Gets if the viewing client has the Iris Shaders mod installed.
---@return boolean
function ClientAPI.hasIris() end

---Gets if the viewing client has an Iris Shader enabled.
---@return boolean
function ClientAPI.hasIrisShader() end

---Gets if the viewing client has the given resource loaded.
---@param path string
---@return boolean
function ClientAPI.hasResource(path) end

---Gets if the viewing client has the debug screen enabled.
---@return boolean
function ClientAPI.isDebugOverlayEnabled() end

---Gets if the viewing client has the HUD enabled.
---@return boolean
function ClientAPI.isHudEnabled() end

---Gets if the viewing client is in the pause menu
---@return boolean
function ClientAPI.isPaused() end

---Gets if the viewing client has the Minecraft window focused.
---@return boolean
function ClientAPI.isWindowFocused() end
