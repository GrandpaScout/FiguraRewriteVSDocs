---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  JSONTYPE                                                                                                        ---
---==================================================================================================================---

---Base class for JSON types.
---@class JsonType
local JsonType


---===== METHODS =====---

---Clears this JSON object.
function JsonType:clear() end

---Gets the size of this JSON object.
---@return integer
---@nodiscard
function JsonType:size() end


---==================================================================================================================---
---  JSONARRAY extends JSONTYPE                                                                                      ---
---==================================================================================================================---

---A representation of a JSON array.
---@class JsonArray: JsonType
local JsonArray


---===== METHODS =====---

---Adds the given value to the end of this array.
---@*vmerror If `value` is `nil`.
---@param value any
---@return true
function JsonArray:add(value) end

---Checks if this array has the given value.
---@param value any
---@return boolean
---@nodiscard
function JsonArray:contains(value) end

---Gets the index of the first instance of the given value in this array.  
---Returns `0` if the given value does not exist in this array.
---@param value any
---@return integer
---@nodiscard
function JsonArray:indexOf(value) end

---Inserts the given value in the given index of this array.  
---Any values already at the given index and above it are shifted up to make space.
---@*vmerror If `value` is `nil`.
---@param index integer
---@param value any
function JsonArray:insert(index, value) end

---Gets the index of the last instance of the given value in this array.  
---Returns `0` if the given value does not exist in this array.
---@param value any
---@return integer
---@nodiscard
function JsonArray:lastIndexOf(value) end

---Removes the first instance of the given value from this array.  
---Any values above the index of the found instance are shifted down to fill in the empty spot.
---
---Returns `true` if this had an effect on the array.
---@param value any
---@return boolean
function JsonArray:remove(value) end

---Removes the value at the given index in this array and returns it.  
---Any values above the given index are shifted down to fill in the empty spot.
---@param index integer
---@return any
function JsonArray:removeAt(index) end


---===== GETTERS =====---

---Gets the value at the given index in this array.
---@param index integer
---@return any
---@nodiscard
function JsonArray:get(index) end


---===== SETTERS =====---

---Puts the given value at the given index in this array.
---@*vmerror If `value` is `nil`.
---@param index integer
---@param value any
function JsonArray:set(index, value) end


---==================================================================================================================---
---  JSONOBJECT extends JSONTYPE                                                                                     ---
---==================================================================================================================---

---A representation of a JSON object.
---@class JsonObject: JsonType
local JsonObject


---===== METHODS =====---

---Checks if this object has the given key.
---@param key string
---@return boolean
---@nodiscard
function JsonObject:containsKey(key) end

---Checks if this object has the given value.
---@param value any
---@return boolean
---@nodiscard
function JsonObject:containsValue(value) end

---Removes the given key from this object and returns the value that was associated with that key.
---@param key string
---@return any
function JsonObject:remove(key) end


---===== GETTERS =====---

---Gets the value at the specified key in this object.
---@param key string
---@return any
---@nodiscard
function JsonObject:get(key) end


---===== SETTERS =====---

---Puts the given value at the given key in this object.  
---`nil` values cannot be used to remove a key. Use `:remove()` to remove a key instead.
---
---Returns the value that was previously associated with the given key or `nil` if no value was associated.
---@*vmerror If `value` is `nil`.
---@param key string
---@param value any
---@return any
function JsonObject:put(key, value) end
