---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  HTTPRESPONSE                                                                                                    ---
---==================================================================================================================---

---A response to an HTTP request made by this avatar.
---@class HttpResponse
local HttpResponse


---===== GETTERS =====---

---Gets an input stream with the body of this response.
---@return InputStream
---@nodiscard
function HttpResponse:getData() end

---Gets a table with the headers of this response.
---@return {[HttpResponse.header]: string[]}
---@nodiscard
function HttpResponse:getHeaders() end

---Gets the response code of this response.
---@return integer
---@nodiscard
function HttpResponse:getResponseCode() end

