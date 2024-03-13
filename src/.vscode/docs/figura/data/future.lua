---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  FUTURE                                                                                                          ---
---==================================================================================================================---

---An object that may contain a value at a later time.
---@class Future
local Future


---===== METHODS =====---

---Throws the error stored in this Future if there is any.
function Future:throwError() end


---===== GETTERS =====---

---Either gets the value stored in this Future or throws the error stored in this Future.
---@return any
---@nodiscard
function Future:getOrError() end

---Gets the value stored in this Future or `nil` if no value exists yet.
---@return any
---@nodiscard
function Future:getValue() end

---Gets if this Future has an error.
---|@return boolean
---|@nodiscard
---@*error This function is inaccessible.
--function Future:hasError() end

---Gets if this Future has resolved.
---@return boolean
---@nodiscard
function Future:isDone() end


---==================================================================================================================---
---  FUTURE.STRING extends FUTURE                                                                              ---
---==================================================================================================================---

---An object that may contain a string at a later time.
---@class Future.String: Future
local Future_String


---===== GETTERS =====---

---Either gets the string stored in this Future or throws the error stored in this Future.
---@return string?
---@nodiscard
function Future_String:getOrError() end

---Gets the string stored in this Future or `nil` if no string exists yet.
---@return string?
---@nodiscard
function Future_String:getValue() end


---==================================================================================================================---
---  FUTURE.HTTPRESPONSE extends FUTURE                                                                              ---
---==================================================================================================================---

---An object that may contain an HTTP Response at a later time.
---@class Future.HttpResponse: Future
local Future_HttpResponse


---===== GETTERS =====---

---Either gets the HTTP Response stored in this Future or throws the error stored in this Future.
---@return HttpResponse?
---@nodiscard
function Future_HttpResponse:getOrError() end

---Gets the HTTP Response stored in this Future or `nil` if no HTTP Response exists yet.
---@return HttpResponse?
---@nodiscard
function Future_HttpResponse:getValue() end

--[[
---==================================================================================================================---
---  FUTURE.SOCKET extends FUTURE                                                                                    ---
---==================================================================================================================---

---An object that may contain a Socket at a later time.
---@class Future.Socket: Future
local Future_Socket


---===== GETTERS =====---

---Either gets the Socket stored in this Future or throws the error stored in this Future.
---@return Socket?
---@nodiscard
function Future_Socket:getOrError() end

---Gets the Socket stored in this Future or `nil` if no Socket exists yet.
---@return Socket?
---@nodiscard
function Future_Socket:getValue() end
--]]

