---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  EVENT                                                                                       ---
---==============================================================================================---

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
---@param func function
---@param name? string
function Event:register(func, name) end

---Removes *all* functions with the given name from this event.
---
---Returns the amount of removed functions.
---@param name string
---@return integer
function Event:remove(name) end


---==============================================================================================---
---  EVENT.GENERIC extends EVENT                                                                 ---
---==============================================================================================---

---A generic event with no parameters or returns.
---@class Event.Generic: Event
local EventGeneric


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.Generic.func
---@param name? string
function EventGeneric:register(func, name) end


---==============================================================================================---
---  EVENT.RENDER extends EVENT                                                                  ---
---==============================================================================================---

---A generic render event with a `delta` parameter and a `ctx` parameter.
---@class Event.Render: Event
local EventRender


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.Render.func
---@param name? string
function EventRender:register(func, name) end


---==============================================================================================---
---  EVENT.WORLDRENDER extends EVENT                                                             ---
---==============================================================================================---

---A render event with a single `delta` parameter.
---@class Event.WorldRender: Event
local EventWorldRender


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.WorldRender.func
---@param name? string
function EventWorldRender:register(func, name) end


---==============================================================================================---
---  EVENT.SKULLRENDER extends EVENT                                                             ---
---==============================================================================================---

---An event with a `delta` parameter, a `block` parameter, an `item` parameter, and a single return.
---@class Event.SkullRender: Event
local EventSkullRender


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.SkullRender.func
---@param name? string
function EventSkullRender:register(func, name) end


---==============================================================================================---
---  EVENT.MOUSEMOVE extends EVENT                                                               ---
---==============================================================================================---

---An event with a `x` parameter, a `y` parameter, and a single return.
---@class Event.MouseMove: Event
local EventMouseMove

---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.MouseMove.func
---@param name? string
function EventMouseMove:register(func, name) end


---==============================================================================================---
---  EVENT.MOUSEPRESS extends EVENT                                                               ---
---==============================================================================================---

---An event with a `button` parameter, a `state` parameter, a `modifiers` parameter, and a single
---return.
---@class Event.MousePress: Event
local EventMousePress

---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.MousePress.func
---@param name? string
function EventMousePress:register(func, name) end


---==============================================================================================---
---  EVENT.MOUSESCROLL extends EVENT                                                             ---
---==============================================================================================---

---An event with a `dir` parameter and a single return.
---@class Event.MouseScroll: Event
local EventMouseScroll


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.MouseScroll.func
---@param name? string
function EventMouseScroll:register(func, name) end


---==============================================================================================---
---  EVENT.KEYPRESS extends EVENT                                                               ---
---==============================================================================================---

---An event with a `key` parameter, a `state` parameter, a `modifiers` parameter, and a single
---return.
---@class Event.KeyPress: Event
local EventKeyPress

---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.KeyPress.func
---@param name? string
function EventKeyPress:register(func, name) end


---==============================================================================================---
---  EVENT.SENDMESSAGE extends EVENT                                                             ---
---==============================================================================================---

---An event with a single `message` parameter and a single return.
---@class Event.SendMessage: Event
local EventSendMessage


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.SendMessage.func
---@param name? string
function EventSendMessage:register(func, name) end


---==============================================================================================---
---  EVENT.RECEIVEMESSAGE extends EVENT                                                          ---
---==============================================================================================---

---An event with a single `message` parameter.
---@class Event.ReceiveMessage: Event
local EventReceiveMessage


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.ReceiveMessage.func
---@param name? string
function EventReceiveMessage:register(func, name) end


---==============================================================================================---
---  EVENT.USEITEM extends EVENT                                                                 ---
---==============================================================================================---

---An event with an `item`, an `anim`, and a `particle_count` parameter.
---@class Event.UseItem: Event
local EventUseItem


---===== METHODS =====---

---Registers a function to be run when this event triggers.
---
---Functions are run in the order they are registered.
---
---If a name is given, you can choose to remove the function later with `:remove(name)`
---@param func Event.UseItem.func
---@param name? string
function EventUseItem:register(func, name) end
