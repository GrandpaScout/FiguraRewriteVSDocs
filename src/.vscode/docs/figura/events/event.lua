---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  EVENT                                                                                                           ---
---==================================================================================================================---

---A hook for a specific event in Minecraft.
---
---Events will run every function registered in it in the order they were registered.
---@class Event
local Event


---===== METHODS =====---

---Clears this event of all of its functions.
function Event:clear() end

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func function
---@param name? string
---@return self
function Event:register(func, name) end

---Removes *all* functions with the given name from this event.
---
---Returns the amount of removed functions.
---@param name string
---@return integer
function Event:remove(name) end

---===== GETTERS =====---

---Gets the amount of callbacks registered to this event with the given name.
---@param name string
---@return integer
---@nodiscard
function Event:getRegisteredCount(name) end


---==================================================================================================================---
---  EVENT.GENERIC extends EVENT                                                                                     ---
---==================================================================================================================---

---@class Event.Generic: Event
local EventGeneric


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.Generic.func
---@param name? string
---@return self
function EventGeneric:register(func, name) end


---==================================================================================================================---
---  EVENT.ARROWRENDER extends EVENT                                                                                 ---
---==================================================================================================================---

---@class Event.ArrowRender: Event
local EventArrowRender


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.ArrowRender.func
---@param name? string
---@return self
function EventArrowRender:register(func, name) end


---==================================================================================================================---
---  EVENT.CHARTYPED extends EVENT                                                                                   ---
---==================================================================================================================---

---@class Event.CharTyped: Event
local EventCharTyped


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.CharTyped.func
---@param name? string
---@return self
function EventCharTyped:register(func, name) end


---==================================================================================================================---
---  EVENT.CHATRECEIVEMESSAGE extends EVENT                                                                          ---
---==================================================================================================================---

---@class Event.ChatReceiveMessage: Event
local EventChatReceiveMessage


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.ChatReceiveMessage.func
---@param name? string
---@return self
function EventChatReceiveMessage:register(func, name) end


---==================================================================================================================---
---  EVENT.CHATSENDMESSAGE extends EVENT                                                                             ---
---==================================================================================================================---

---@class Event.ChatSendMessage: Event
local EventChatSendMessage


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.ChatSendMessage.func
---@param name? string
---@return self
function EventChatSendMessage:register(func, name) end


---==================================================================================================================---
---  EVENT.ITEMRENDER extends EVENT                                                                                  ---
---==================================================================================================================---

---@class Event.ItemRender: Event
local EventItemRender


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.ItemRender.func
---@param name? string
---@return self
function EventItemRender:register(func, name) end


---==================================================================================================================---
---  EVENT.MOUSEMOVE extends EVENT                                                                                   ---
---==================================================================================================================---

---@class Event.MouseMove: Event
local EventMouseMove

---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.MouseMove.func
---@param name? string
---@return self
function EventMouseMove:register(func, name) end


---==================================================================================================================---
---  EVENT.MOUSEPRESS extends EVENT                                                                                  ---
---==================================================================================================================---

---@class Event.MousePress: Event
local EventMousePress

---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.MousePress.func
---@param name? string
---@return self
function EventMousePress:register(func, name) end


---==================================================================================================================---
---  EVENT.MOUSESCROLL extends EVENT                                                                                 ---
---==================================================================================================================---

---@class Event.MouseScroll: Event
local EventMouseScroll


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.MouseScroll.func
---@param name? string
---@return self
function EventMouseScroll:register(func, name) end


---==================================================================================================================---
---  EVENT.ONPLAYSOUND extends EVENT                                                                                 ---
---==================================================================================================================---

---@class Event.OnPlaySound: Event
local EventOnPlaySound


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.OnPlaySound.func
---@param name? string
---@return self
function EventOnPlaySound:register(func, name) end


---==================================================================================================================---
---  EVENT.RENDER extends EVENT                                                                                      ---
---==================================================================================================================---

---@class Event.Render: Event
local EventRender


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.Render.func
---@param name? string
---@return self
function EventRender:register(func, name) end


---==================================================================================================================---
---  EVENT.WORLDRENDER extends EVENT                                                                                 ---
---==================================================================================================================---

---@class Event.WorldRender: Event
local EventWorldRender


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.WorldRender.func
---@param name? string
---@return self
function EventWorldRender:register(func, name) end


---==================================================================================================================---
---  EVENT.SKULLRENDER extends EVENT                                                                                 ---
---==================================================================================================================---

---@class Event.SkullRender: Event
local EventSkullRender


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.SkullRender.func
---@param name? string
---@return self
function EventSkullRender:register(func, name) end


---==================================================================================================================---
---  EVENT.KEYPRESS extends EVENT                                                                                    ---
---==================================================================================================================---

---@class Event.KeyPress: Event
local EventKeyPress

---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.KeyPress.func
---@param name? string
---@return self
function EventKeyPress:register(func, name) end


---==================================================================================================================---
---  EVENT.USEITEM extends EVENT                                                                                     ---
---==================================================================================================================---

---@class Event.UseItem: Event
local EventUseItem


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@generic self
---@param self self
---@param func Event.UseItem.func
---@param name? string
---@return self
function EventUseItem:register(func, name) end
