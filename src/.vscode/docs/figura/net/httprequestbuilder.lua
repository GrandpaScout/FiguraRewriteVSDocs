---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  HTTPREQUESTBUILDER                                                                                              ---
---==================================================================================================================---

---An HTTP Request.
---@class HttpRequestBuilder
local HttpRequestBuilder


---===== METHODS =====---

---Sends this request.  
---The returned Future will contain the server's response when it is resolved.
---@return Future.HttpResponse
function HttpRequestBuilder:send() end


---===== GETTERS =====---

---Gets the current body of this request.
---@*error Missing doc string and odd return type.
---@return (InputStream | Buffer)?
---@nodiscard
function HttpRequestBuilder:getBody() end

---Gets the current headers of this request.
---@return {[HttpRequestBuilder.header]: string}
---@nodiscard
function HttpRequestBuilder:getHeaders() end

---Gets the current method of this request.
---@return HttpRequestBuilder.method
---@nodiscard
function HttpRequestBuilder:getMethod() end

---Gets the current URI of this request.
---@return string
---@nodiscard
function HttpRequestBuilder:getUri() end


---===== SETTERS =====---

---Sets the body of this request.
---@generic self
---@param self self
---@param data? InputStream | Buffer
---@return self
function HttpRequestBuilder:body(data) end

---Sets the given header to the given value.
---
---If `value` is `nil`, the given header is removed.
---@generic self
---@param self self
---@param header HttpRequestBuilder.header
---@param value? string
---@return self
function HttpRequestBuilder:header(header, value) end

---Sets the method of this request.
---
---If `method` is `nil`, it will default to `"GET"`.
---@generic self
---@param self self
---@param method? HttpRequestBuilder.method
---@return self
function HttpRequestBuilder:method(method) end

---Sets the URI of this request.
---@generic self
---@param self self
---@param uri? string
---@return self
function HttpRequestBuilder:uri(uri) end
