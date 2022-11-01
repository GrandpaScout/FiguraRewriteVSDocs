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
---  EVENT.RENDER extends EVENT                                                                 ---
---==============================================================================================---

---A generic render event with a single `delta` parameter.
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
---  EVENT.SKULLRENDER extends EVENT                                                             ---
---==============================================================================================---

---An event with a `delta` parameter and a `pos` parameter.
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
---  EVENT.MOUSESCROLL extends EVENT                                                             ---
---==============================================================================================---

---An event with a `dir` parameter.
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
