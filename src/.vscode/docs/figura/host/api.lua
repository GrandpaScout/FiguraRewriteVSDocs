---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  HOSTAPI                                                                                                         ---
---==================================================================================================================---

---@class HostAPI
---Determines if the cursor should be unlocked, making it visible and allowing it to move instead of rotate the player's
---view.
---@field unlockCursor boolean
local HostAPI


---===== METHODS =====---

---Adds the given message to the recent messages list.
---
---Recent messages can be scrolled through with the up and down arrow keys while chat is open.
---@generic self
---@param self self
---@param message string
---@return self
function HostAPI:appendChatHistory(message) end

---Clears the currently active title and subtitle text.
---@generic self
---@param self self
---@return self
function HostAPI:clearTitle() end

---Saves a snapshot of the screen as a texture with the given name.
---@param name string
---@return Texture
---@nodiscard
function HostAPI:screenshot(name) end

---Sends a command as the player. The `/` is optional.  
---Minecraft will automatically block commands that require signed arguments (such as `/say`.)
---
---*This requires the* **`Chat Message`** *permission to work!*
---@generic self
---@param self self
---@param command string
---@return self
function HostAPI:sendChatCommand(command) end

---Sends a message as the player.
---
---*This requires the* **`Chat Message`** *permission to work!*
---@generic self
---@param self self
---@param message string
---@return self
function HostAPI:sendChatMessage(message) end

---Causes the player entity's arm to swing.
---@generic self
---@param self self
---@param offhand? boolean
---@return self
function HostAPI:swingArm(offhand) end


---===== GETTERS =====---

---Gets the amount of air the host has left in ticks.
---@return integer
---@nodiscard
function HostAPI:getAir() end

---Gets the current attack charge of the host as a fraction.
---
---Attack charge below `0.9` will not result in a crit.
---@return number
---@nodiscard
function HostAPI:getAttackCharge() end

---Gets the custom color of the chat input text.
---@return integer
---@nodiscard
function HostAPI:getChatColor() end

---Gets the contents of the chat message at the given index where `1` is the most recent message.  
---
---Returns `nil` if no message is found at the given index.
---@param index integer
---@return HostAPI.chatMessage?
---@nodiscard
function HostAPI:getChatMessage(index) end

---Gets the text that is currently in the chat input.
---
---Returns `nil` if the chat input is not open.
---@return string?
---@nodiscard
function HostAPI:getChatText() end

---Gets the text contents of the clipboard.
---
---Returns `""` if the contents of the clipboard are not text.
---@return string
---@nodiscard
function HostAPI:getClipboard() end

---Gets the block that would be targeted by the Pick Block keybind.
---@return BlockState? block
---@return Vector3? pos
---@return Entity.blockSide? face
---@nodiscard
function HostAPI:getPickBlock() end

---Gets the entity that would be targeted by the Pick Block keybind.
---@return Entity?
---@nodiscard
function HostAPI:getPickEntity() end

---Gets the reach distance of the host in blocks.
---@return number
---@nodiscard
function HostAPI:getReachDistance() end

---Gets the class name of the currently open screen.
---
---Returns `nil` if no screen is open.
---@return Minecraft.screenID?
---@nodiscard
function HostAPI:getScreen() end

---Gets the `ItemStack` in the given slot of the currently open screen.
---
---Returns an `ItemStack` of air if no item exists in that slot.  
---Returns `nil` if the given slot id is out of range, there is no open screen, or the current screen has no slots.
---@param slot Minecraft.slotID
---@return ItemStack?
---@nodiscard
function HostAPI:getScreenSlot(slot) end

---Gets the amount of slots in the currently open screen.
---
---Returns `nil` if there is no screen or the current screen has no slots.
---@param slot Minecraft.slotID
---@return integer?
---@nodiscard
function HostAPI:getScreenSlotCount(slot) end

---Gets the `ItemStack` in the given slot.
---
---Returns an `ItemStack` of air if no item exists in that slot.
---@param slot Minecraft.slotID
---@return ItemStack
---@nodiscard
function HostAPI:getSlot(slot) end

---Gets the status effects applied to the host.
---@return HostAPI.statusEffect[]
---@nodiscard
function HostAPI:getStatusEffects() end

---Gets if this avatar is uploaded.
---@return boolean
---@nodiscard
function HostAPI:isAvatarUploaded() end

---Gets if the chat input is opened.
---@return boolean
---@nodiscard
function HostAPI:isChatOpen() end

---Gets if the chat is verified.
---@*error Missing doc string.
---@return boolean
---@nodiscard
function HostAPI:isChatVerified() end

---Gets if the currently open screen (if any) can hold items.
---@return boolean
---@nodiscard
function HostAPI:isContainerOpen() end

---Gets if the cursor is currently unlocked.
---@return boolean
---@nodiscard
function HostAPI:isCursorUnlocked() end

---Gets if the host is currently in creative flight.
---@return boolean
---@nodiscard
function HostAPI:isFlying() end

---Gets if this instance of the script is running on the avatar owner's computer.
---@return boolean
---@nodiscard
function HostAPI:isHost() end

---Gets if the host is jumping.
---@return boolean
---@nodiscard
function HostAPI:isJumping() end


---===== SETTERS =====---

---Sets the action bar message to the given text.  
---The message may be a [Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---If `animated` is set, any text in the message that is not colored will cycle colors.
---@generic self
---@param self self
---@param text string
---@param animated? boolean
---@return self
function HostAPI:setActionbar(text, animated) end

---Debug function for setting badges locally.
---@generic self
---@param self self
---@param bit integer
---@param set boolean
---@param alt boolean
---@return self
function HostAPI:setBadge(bit, set, alt) end

---Sets the color of the text in the chat input.
---
---If the `color` is `nil`, the text color will be unset.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function HostAPI:setChatColor(color) end

---Sets the color of the text in the chat input.
---
---If `r` is `nil`, the text color will be unset.  
---If `g` or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function HostAPI:setChatColor(r, g, b) end

---Sets the contents of the chat message at the given index where `1` is the most recent message.
---
---If `message` is `nil`, the chat message is deleted.  
---If `bgcolor` is `nil`, it will default to black.
---@generic self
---@param self self
---@param index integer
---@param message? string
---@param bgcolor? Vector3
---@return self
function HostAPI:setChatMessage(index, message, bgcolor) end

---Sets the text in the chat input to the text given.
---
---This will overwrite any text currently in the chat input and the cursor will be placed at the end of the new text.
---
---This will do nothing if the input is not open.
---@generic self
---@param self self
---@param text string
---@return self
function HostAPI:setChatText(text) end

---Sets the contents of the clipboard to the given text.
---@generic self
---@param self self
---@param text string
---@return self
function HostAPI:setClipboard(text) end

---Sets the given slot to contain the given item stack.  
---This only works in creative mode.
---
---
---@generic self
---@param self self
---@param slot Minecraft.slotID
---@param item (ItemStack | Minecraft.itemID)?
---@return self
function HostAPI:setSlot(slot, item) end

---Sets the HUD subtitle to the given text.  
---The subtitle may be a [Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---This only prepares the subtitle, it does not print it out. Use `HostAPI:setTitle()` to print out the title and
---subtitle.
---@generic self
---@param self self
---@param text string
---@return self
function HostAPI:setSubtitle(text) end

---Sets the HUD title to the given text.  
---The title may be a [Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---This will prepare and print the title. It will also print the subtitle if one is prepared.
---@generic self
---@param self self
---@param text string
---@return self
function HostAPI:setTitle(text) end

---Sets the fade-in time, duration, and fade-out times of the HUD title and subtitle in seconds.
---
---If `times` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param times? Vector3
---@return self
function HostAPI:setTitleTimes(times) end

---Sets the fade-in time, duration, and fade-out times of the HUD title and subtitle in seconds.
---
---If `fadeIn`, `duration`, or `fadeOut` are `nil`, they will default to `0`.
---@param fadeIn? number
---@param duration? number
---@param fadeOut? number
function HostAPI:setTitleTimes(fadeIn, duration, fadeOut) end

---Sets if the cursor is unlocked, making it visible and allowing it to move instead of rotate the player's view.
---
---If `state` is `nil`, it will default to `false`.
---@generic self
---@param self self
---@param state? boolean
---@return self
function HostAPI:setUnlockCursor(state) end


---===== CHAINED =====---

---Sets the action bar message to the given text.  
---The message may be a [Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---If `animated` is set, any text in the message that is not colored will cycle colors.
---@generic self
---@param self self
---@param text string
---@param animated? boolean
---@return self
function HostAPI:actionbar(text, animated) end

---Debug function for setting badges locally.
---@generic self
---@param self self
---@param bit integer
---@param set boolean
---@param alt boolean
---@return self
function HostAPI:badge(bit, set, alt) end

---Sets the color of the text in the chat input.
---
---If the `color` is `nil`, the text color will be unset.
---@generic self
---@param self self
---@param color? Vector3
---@return self
function HostAPI:chatColor(color) end

---Sets the color of the text in the chat input.
---
---If `r` is `nil`, the text color will be unset.  
---If `g` or `b` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param r? number
---@param g? number
---@param b? number
---@return self
function HostAPI:chatColor(r, g, b) end

---Sets the text in the chat input to the text given.
---
---This will overwrite any text currently in the chat input and the cursor will be placed at the end of the new text.
---
---This will do nothing if the input is not open.
---@generic self
---@param self self
---@param text string
---@return self
function HostAPI:chatText(text) end

---Sets the contents of the clipboard to the given text.
---@generic self
---@param self self
---@param text string
---@return self
function HostAPI:clipboard(text) end

---Sets the HUD subtitle to the given text.  
---The message may be a [Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---This only prepares the subtitle, it does not print it out. Use `HostAPI:title()` to print out the title and subtitle.
---@generic self
---@param self self
---@param text string
---@return self
function HostAPI:subtitle(text) end

---Sets the HUD title to the given text.  
---The message may be a [Raw JSON Text object](https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Java_Edition).
---
---This will prepare and print the title. It will also print the subtitle if one is prepared.
---@generic self
---@param self self
---@param text string
---@return self
function HostAPI:title(text) end

---Sets the fade-in time, duration, and fade-out times of the HUD title and subtitle in seconds.
---
---If `times` is `nil`, it will default to `⟨0, 0, 0⟩`.
---@generic self
---@param self self
---@param times? Vector3
---@return self
function HostAPI:titleTimes(times) end

---If `fadeIn`, `duration`, or `fadeOut` are `nil`, they will default to `0`.
---@generic self
---@param self self
---@param fadeIn? number
---@param duration? number
---@param fadeOut? number
---@return self
function HostAPI:titleTimes(fadeIn, duration, fadeOut) end
