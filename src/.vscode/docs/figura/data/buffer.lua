---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  BUFFER                                                                                                          ---
---==================================================================================================================---

---A byte buffer.
---@class Buffer
local Buffer


---===== METHODS =====---

---Clears this buffer.
---@*error Missing doc string.
function Buffer:clear() end

---Closes this buffer and marks it to be freed by the garbage collector.  
---Closed buffers can no longer be used and may be discarded.
function Buffer:close() end

---Reads an unsigned byte from this buffer's current position.  
---Returns `-1` if attempting to read out-of-bounds.
---
---After reading, the current position shifts over one byte.  
---This allows sequential `:read()` calls to read more bytes.
---@return integer
function Buffer:read() end

---Reads the given amount of bytes starting from this buffer's current position to a base64-encoded string.  
---Attempting to read more than the available amount of bytes will read until no more bytes are available.
---
---After reading, the current position shifts to the end of the read bytes.  
---This allows sequential `:readBase64()` calls to read more bytes.
---
---If `len` is `nil`, it will default to `1024`.
---@param len? integer
---@return string
function Buffer:readBase64(len) end

---Reads the given amount of bytes starting from this buffer's current position to a string.  
---Attempting to read more than the available amount of bytes will read until no more bytes are available.
---
---After reading, the current position shifts to the end of the read bytes.  
---This allows sequential `:readByteArray()` calls to read more bytes.
---
---If `len` is `nil`, it will default to `1024`.
---@param len? integer
---@return string
function Buffer:readByteArray(len) end

---Reads a double-precision number starting from this buffer's current position.  
---Attempting to read with less than 8 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<12 34 56 78 9A BC>` *will return* `0x0000123456789ABC`*)*
---
---After reading, the current position shifts over up to eight bytes.  
---This allows sequential `:readDouble()` calls to read more doubles.
---@return number
function Buffer:readDouble() end

---Reads a little-endian double-precision number starting from this buffer's current position.  
---Attempting to read with less than 8 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<BC 9A 78 56 34 12>` *will return* `0x0000123456789ABC`*)*
---
---After reading, the current position shifts over up to eight bytes.  
---This allows sequential `:readDoubleLE()` calls to read more doubles.
---@return number
function Buffer:readDoubleLE() end

---Reads a single-precision number starting from this buffer's current position.  
---Attempting to read with less than 4 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<12 34 56>` *will return* `0x00123456`*)*
---
---After reading, the current position shifts over up to eight bytes.  
---This allows sequential `:readFloat()` calls to read more floats.
---@return number
function Buffer:readFloat() end

---Reads a little-endian single-precision number starting from this buffer's current position.  
---Attempting to read with less than 4 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<56 34 12>` *will return* `0x00123456`*)*
---
---After reading, the current position shifts over up to eight bytes.  
---This allows sequential `:readFloatLE()` calls to read more floats.
---@return number
function Buffer:readFloatLE() end

---Reads the given amount of bytes from the given input stream and writes them to this buffer starting from its current
---position.  
---The number of bytes that were written is returned.
---
---After writing, the current position shifts over to the end of the written bytes.  
---This allows sequential `:readFromStream()` calls to write more bytes.
---
---If `limit` is `nil`, it will default to as high as possible.
---@param stream InputStream
---@param limit? integer
---@return integer
function Buffer:readFromStream(stream, limit) end

---Reads a signed integer starting from this buffer's current position.  
---Attempting to read with less than 4 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<12 34 56>` *will return* `0x00123456`*)*
---
---After reading, the current position shifts over up to four bytes.  
---This allows sequential `:readInt()` calls to read more integers.
---@return integer
function Buffer:readInt() end

---Reads a little-endian signed integer starting from this buffer's current position.  
---Attempting to read with less than 4 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<56 34 12>` *will return* `0x00123456`*)*
---
---After reading, the current position shifts over up to four bytes.  
---This allows sequential `:readIntLE()` calls to read more integers.
---@return integer
function Buffer:readIntLE() end

---**Using this method is not recommended!**  
---Lua numbers can only store integers up to `2^53 - 1`.  
---Instead it may be preferrable to read two integers from this buffer.
---> ***
---
---Reads a signed long starting from this buffer's current position.  
---Attempting to read with less than 8 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<12 34 56 78 9A BC>` *will return* `0x0000123456789ABC`*)*
---
---After reading, the current position shifts over up to eight bytes.  
---This allows sequential `:readLong()` calls to read more longs.
---@return integer
function Buffer:readLong() end

---**Using this method is not recommended!**  
---Lua numbers can only store integers up to `2^53 - 1`.  
---Instead it may be preferrable to read two integers from this buffer.
---> ***
---
---Reads a little-endian signed long starting from this buffer's current position.  
---Attempting to read with less than 8 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<BC 9A 78 56 34 12>` *will return* `0x0000123456789ABC`*)*
---
---After reading, the current position shifts over up to eight bytes.  
---This allows sequential `:readLongLE()` calls to read more longs.
---@return integer
function Buffer:readLongLE() end

---Reads a signed short starting from this buffer's current position.  
---Attempting to read with less than 2 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<12>` *will return* `0x0012`*)*
---
---After reading, the current position shifts over up to two bytes.  
---This allows sequential `:readShort()` calls to read more shorts.
---@return integer
function Buffer:readShort() end

---Reads a little-endian signed short starting from this buffer's current position.  
---Attempting to read with less than 2 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<12>` *will return* `0x0012`*)*
---
---After reading, the current position shifts over up to two bytes.  
---This allows sequential `:readShortLE()` calls to read more shorts.
---@return integer
function Buffer:readShortLE() end

---Reads a string with the given encoding and byte length starting from this buffer's current position.  
---
---After reading, the current position shifts to the end of the read bytes.  
---This allows sequential `:readString()` calls to read more strings.
---
---If `len` is `nil`, it will default to the number of available bytes.  
---If `encoding` is `nil`, it will default to `"utf8"`.
---@param len? integer
---@param encoding? Buffer.encoding
---@return string
function Buffer:readString(len, encoding) end

---Reads an unsigned short starting from this buffer's current position.  
---Attempting to read with less than 2 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<12>` *will return* `0x0012`*)*
---
---After reading, the current position shifts over up to two bytes.  
---This allows sequential `:readUShort()` calls to read more shorts.
---@return integer
function Buffer:readUShort() end

---Reads a little-endian unsigned short starting from this buffer's current position.  
---Attempting to read with less than 2 available bytes will fill the highest bytes with `0x00`.  
---*(Reading* `<12>` *will return* `0x0012`*)*
---
---After reading, the current position shifts over up to two bytes.  
---This allows sequential `:readUShortLE()` calls to read more shorts.
---@return integer
function Buffer:readUShortLE() end

---Writes a byte to this buffer's current position.
---
---After writing, the current position shifts over one byte.  
---This allows sequential `:write()` calls to write more bytes.
---@*error Missing doc string.
---@param value integer
function Buffer:write(value) end

---Writes the contents of the given Base64-encoded string to this buffer starting from its current position.  
---The number of bytes that were written is returned.
---
---After writing, the current position shifts over to the end of the written bytes.  
---This allows sequential `:writeBase64()` calls to write more bytes.
---@param value string
---@return integer
function Buffer:writeBase64(value) end

---Writes the contents of the given string to this buffer starting from its current position.  
---The number of bytes that were written is returned.
---
---After writing, the current position shifts over to the end of the written bytes.  
---This allows sequential `:writeByteArray()` calls to write more bytes.
---@param value string
---@return integer
function Buffer:writeByteArray(value) end

---Writes the given double-precision number to this buffer starting from its current position.
---
---After writing, the current position shifts over eight bytes.  
---This allows sequential `:writeDouble()` calls to write more doubles.
---@param value number
function Buffer:writeDouble(value) end

---Writes the given double-precision number to this buffer in little-endian order starting from its current position.
---
---After writing, the current position shifts over eight bytes.  
---This allows sequential `:writeDoubleLE()` calls to write more doubles.
---@param value number
function Buffer:writeDoubleLE(value) end

---Writes the given single-precision number to this buffer starting from its current position.
---
---After writing, the current position shifts over four bytes.  
---This allows sequential `:writeFloat()` calls to write more floats.
---@param value number
function Buffer:writeFloat(value) end

---Writes the given single-precision number to this buffer in little-endian order starting from its current position.
---
---After writing, the current position shifts over four bytes.  
---This allows sequential `:writeFloatLE()` calls to write more floats.
---@param value number
function Buffer:writeFloatLE(value) end

---Writes the given integer to this buffer starting from its current position.
---
---After writing, the current position shifts over four bytes.  
---This allows sequential `:writeInt()` calls to write more integers.
---@param value integer
function Buffer:writeInt(value) end

---Writes the given integer to this buffer in little-endian order starting from its current position.
---
---After writing, the current position shifts over four bytes.  
---This allows sequential `:writeIntLE()` calls to write more integers.
---@param value integer
function Buffer:writeIntLE(value) end

---**Using this method is not recommended!**  
---Lua numbers can only store integers up to `2^53 - 1`.  
---Instead it may be preferrable to write two integers to this buffer.
---> ***
---
---Writes the given long to this buffer starting from its current position.
---
---After writing, the current position shifts over eight bytes.  
---This allows sequential `:writeLong()` calls to write more longs.
---@param value integer
function Buffer:writeLong(value) end

---**Using this method is not recommended!**  
---Lua numbers can only store integers up to `2^53 - 1`.  
---Instead it may be preferrable to write two integers to this buffer.
---> ***
---
---Writes the given long to this buffer in little-endian order starting from its current position.
---
---After writing, the current position shifts over eight bytes.  
---This allows sequential `:writeLongLE()` calls to write more longs.
---@param value integer
function Buffer:writeLongLE(value) end

---Writes the given signed short to this buffer starting from its current position.
---
---After writing, the current position shifts over two bytes.  
---This allows sequential `:writeShort()` calls to write more shorts.
---@param value integer
function Buffer:writeShort(value) end

---Writes the given signed short to this buffer in little-endian order starting from its current position.
---
---After writing, the current position shifts over two bytes.  
---This allows sequential `:writeShortLE()` calls to write more shorts.
---@param value integer
function Buffer:writeShortLE(value) end

---Writes the given string to this buffer in the given encoding starting from its current position.  
---The number of bytes that were written is returned.
---
---After writing, the current position shifts over to the end of the written bytes.  
---This allows sequential `:writeString()` calls to write more strings.
---
---If `encoding` is `nil`, it will default to `"utf8"`.
---@param value string
---@param encoding? Buffer.encoding
---@return integer
function Buffer:writeString(value, encoding) end

---Reads the given amount of bytes from this buffer starting from its current position and writes them to the given
---output stream.  
---The number of bytes that were read is returned.
---
---After read, the current position shifts over to the end of the read bytes.  
---This allows sequential `:writeToStream()` calls to read more bytes.
---
---If `limit` is `nil`, it will default to the number of available bytes.
---@param stream OutputStream
---@param limit? integer
---@return integer
function Buffer:writeToStream(stream, limit) end

---Writes the given unsigned short to this buffer starting from its current position.
---
---After writing, the current position shifts over two bytes.  
---This allows sequential `:writeUShort()` calls to write more shorts.
---@param value integer
function Buffer:writeUShort(value) end

---Writes the given unsigned short to this buffer in little-endian order starting from its current position.
---
---After writing, the current position shifts over two bytes.  
---This allows sequential `:writeUShortLE()` calls to write more shorts.
---@param value integer
function Buffer:writeUShortLE(value) end


---===== GETTERS =====---

---Gets the amount of bytes remaining at the current position in this buffer.
---@return integer
---@nodiscard
function Buffer:available() end

---Gets the length of this buffer.
---@return integer
---@nodiscard
function Buffer:getLength() end

---Gets the maximum length this buffer can be.
---@return integer
---@nodiscard
function Buffer:getMaxCapacity() end

---Gets the current position of this buffer.  
---The current position controls where bytes are read from and written to.
---
---All read and write methods of a buffer will automatically move its current position to the end of the read or written
---bytes.
---@return integer
---@nodiscard
function Buffer:getPosition() end

---Gets if this buffer is closed.
---@return boolean
---@nodiscard
function Buffer:isClosed() end


---===== SETTERS =====---

---Sets the current position of this buffer.  
---The current position controls where bytes are read from and written to.
---
---All read and write methods of a buffer will automatically move its current position to the end of the read or written
---bytes.
---@param pos integer
function Buffer:setPosition(pos) end



