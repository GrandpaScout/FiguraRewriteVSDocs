---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  HOSTAPI                                                                                     ---
---==============================================================================================---

---@class HostAPI
---Determines if the cursor should be unlocked, making it visible and allowing it to move instead of
---rotate the player's view.
---@field unlockCursor boolean
local HostAPI


---===== METHODS =====---

---Adds the given message to the recent messages list.
---
---Recent messages can be scrolled through with the up and down arrow keys while chat is open.
---@param message string
function HostAPI:appendChatHistory(message) end

---Clears the currently active title and subtitle text.
function HostAPI:clearTitle() end

---Saves the given texture to cache as a PNG file.
---
---This is meant for debugging purposes.
---@param tex Texture
function HostAPI:saveTexture(tex) end

---Saves a snapshot of the screen as a texture.
---@return Texture
function HostAPI:screenshot() end

---Sends a command as the player. The `/` is optional.
---
---Minecraft will automatically block commands that require signed arguments (such as `/say`.)
---
---*This requires the* **`Chat Message`** *permission to work!*
---@param command string
function HostAPI:sendChatCommand(command) end

---Sends a message as the player.
---
---*This requires the* **`Chat Message`** *permission to work!*
---@param message string
function HostAPI:sendChatMessage(message) end

---Causes the player entity's arm to swing.
---@param offhand? boolean
function HostAPI:swingArm(offhand) end


---===== GETTERS =====---

---Gets the custom color of the chat input text.
---@return integer
function HostAPI:getChatColor() end

---Gets the text that is currently in the chat input.
---
---Returns `nil` if the chat input is not open.
---@return string?
function HostAPI:getChatText() end

---Gets the class name of the currently open screen.
---
---Returns `nil` if no screen is open.
---@return Minecraft.screenID?
function HostAPI:getScreen() end

---Gets the `ItemStack` in the given slot.
---
---Returns an `ItemStack` of air if no item exists in that slot.
---@param slot Minecraft.slotID
---@return ItemStack | integer
function HostAPI:getSlot(slot) end

---Gets the first entity under the crosshair up to 6 blocks away.
---
---This is the same entity that appears on the right side of the debug overlay.
---@return EntityAPI|LivingEntityAPI|PlayerAPI
function HostAPI:getTargetedEntity() end

---Gets if the chat input is opened.
---@return boolean
function HostAPI:isChatOpen() end

---Gets if the currently open screen (if any) can hold items.
---@return boolean
function HostAPI:isContainerOpen() end

---Gets if this instance of the script is running on the avatar owner's computer.
---
---This is equivalent to global `player` being the avatar owner's player entity.
---@return boolean
function HostAPI:isHost() end


---===== SETTERS =====---

---Sets the action bar message to the given text.  
---The message may be a
---[Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---If `animated` is set, any text in the message that is not colored will cycle colors.
---@param text string
---@param animated? boolean
function HostAPI:setActionbar(text, animated) end

---Sets the color of the text in the chat input.
---
---If the `color` is `nil`, the text color will be unset.
---@param color? Vector3
function HostAPI:setChatColor(color) end

---If `r` is `nil`, the text color will be unset.  
---If `g` or `b` are `nil`, they will default to `0`.
---@param r? number
---@param g? number
---@param b? number
function HostAPI:setChatColor(r, g, b) end

---Sets the text in the chat input to the text given.
---
---This will overwrite any text currently in the chat input and the cursor will be placed at the end
---of the new text.
---
---This will do nothing if the input is not open.
---@param text string
function HostAPI:setChatText(text) end

---Sets the HUD subtitle to the given text.  
---The message may be a
---[Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---This only prepares the subtitle, it does not print it out. Use `HostAPI:setTitle()` to print out
---the title and subtitle.
---@param text string
function HostAPI:setSubtitle(text) end

---Sets the HUD title to the given text.  
---The message may be a
---[Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---This will prepare and print the title. It will also print the subtitle if one is prepared.
---@param text string
function HostAPI:setTitle(text) end

---Sets the fade-in time, duration, and fade-out times of the HUD title and subtitle in seconds.
---
---If `times` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@param times? Vector3
function HostAPI:setTitleTimes(times) end

---If `fadeIn`, `duration`, or `fadeOut` are `nil`, they will default to `0`.
---@param fadeIn? number
---@param duration? number
---@param fadeOut? number
function HostAPI:setTitleTimes(fadeIn, duration, fadeOut) end
