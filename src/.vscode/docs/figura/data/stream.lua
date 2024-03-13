---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  STREAM                                                                                                          ---
---==================================================================================================================---

---The base class of all streams.
---@class Stream
local Stream


---===== METHODS =====---

---Closes this stream.
function Stream:close() end


---==================================================================================================================---
---  INPUTSTREAM extends STREAM                                                                                      ---
---==================================================================================================================---

---A stream that can be read from.
---@class InputStream: Stream
local InputStream


---===== METHODS =====---

---Marks the current position in this stream.  
---To check if a stream supports marking, see `:markSupported()`.  
---Return to the latest mark by calling `:reset()`.
---
---The mark should be invalidated after the given number of bytes are read from this stream.
---@param limit integer
function InputStream:mark(limit) end

---Reads a single byte from this stream.
---
---Does not work if this stream can only be read asyncronously.  
---To check if a stream can only be read asyncronously, see `:isAsyncOnly()`.
---@return integer
function InputStream:read() end

---Asyncronously reads the given number of bytes from the stream.
---
---Attempting to read more than the available amount of bytes will read until no more bytes are available.
---@return Future.String
---@nodiscard
function InputStream:readAsync() end

---Resets the position of this stream to the latest mark placed by `:mark()`.
---@*vmerror If marking is not supported.
function InputStream:reset() end

---Skips the given amount of bytes in this stream.  
---The amount of bytes that were actually skipped is returned.
---
---If `n` is `nil`, it will default to `0`.
---@param n? integer
---@return integer
function InputStream:skip(n) end

---Transfers the remaining data in this stream to the given OutputStream.  
---The amount of bytes that were transferred is returned.
---@param out OutputStream
---@return integer
function InputStream:transferTo(out) end


---===== GETTERS =====---

---Gets the amount of bytes remaining in this stream.
---@return integer
---@nodiscard
function InputStream:available() end

---Gets if this stream can only be read asyncronously.
---@return boolean
---@nodiscard
function InputStream:isAsyncOnly() end

---Gets if this stream supports marking with `:mark()`.
---@return boolean
---@nodiscard
function InputStream:markSupported() end


---==================================================================================================================---
---  OUTPUTSTREAM extends STREAM                                                                                     ---
---==================================================================================================================---

---A stream that can be written to.
---@class OutputStream: Stream
local OutputStream


---===== METHODS =====---

---Flushes the data in this stream, immediately sending any buffered data through it.
function OutputStream:flush() end

---Writes the given byte to the stream.  
---The byte may be buffered and not immediately sent. To immediately send buffered bytes, see `:flush()`.
---@param byte integer
function OutputStream:write(byte) end








