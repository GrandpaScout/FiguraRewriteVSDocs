---@meta

---A global variable (not a function) that holds the global environment (see
---[§2.2](command:extension.lua.doc?["en-us/52/manual.html/2.2"])). Lua itself does not use this
---variable; changing its value does not affect any environment, nor vice versa.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-_G"])
---@class _G
_G = {}

---A global variable (not a function) that holds a string containing the running Lua version.
---
---~~[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-_VERSION"])~~  
---This variable has been modified by Figura and does not have the same value as in normal Lua 5.2.
_VERSION = "Lua 5.2 - Figura"


---==============================================================================================---
---  ERROR CHECKING                                                                              ---
---==============================================================================================---

---Raises an error if the value of its argument v is false (i.e., `nil` or `false`); otherwise,
---returns all its arguments. In case of error, `message` is the error object; when absent,
---it defaults to `"assertion failed!"`
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-assert"])
---@generic T
---@param v? T
---@param message? any
---@return T
function assert(v, message) end

---Terminates the last protected function called and returns message as the error object.
---
---Usually, `error` adds some information about the error position at the beginning of the message,
---if the message is a string.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-error"])
---@param message any
---@param level?  integer
function error(message, level) end


---==============================================================================================---
---  ITERATION                                                                                   ---
---==============================================================================================---

---Allows a program to traverse all fields of a table. Its first argument is a table and its second
---argument is an index in this table. A call to `next` returns the next index of the table and its
---associated value. When called with `nil` as its second argument, `next` returns an initial index
---and its associated value. When called with the last index, or with `nil` in an empty table,
---`next` returns `nil`. If the second argument is absent, then it is interpreted as `nil`.
---In particular, you can use `next(t)` to check whether a table is empty.
---
---The order in which the indices are enumerated is not specified, *even for numeric indices*. (To
---traverse a table in numerical order, use a numerical `for`.)
---
---The behavior of `next` is undefined if, during the traversal, you assign any value to a
---non-existent field in the table. You may however modify existing fields. In particular, you may
---set existing fields to nil.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-next"])
---@generic K, V
---@param table table<K, V>
---@param index? K
---@return K?
---@return V?
---@nodiscard
function next(table, index) end

---If `t` has a metamethod `__pairs`, calls it with t as argument and returns the first three
---results from the call.
---
---Otherwise, returns three values: the
---[next](command:extension.lua.doc?["en-us/52/manual.html/pdf-next"]) function, the table `t`, and
---`nil`, so that the construction
---```lua
---    for k,v in pairs(t) do body end
---```
---will iterate over all key-value pairs of table `t`.
---
---See function [next](command:extension.lua.doc?["en-us/52/manual.html/pdf-next"]) for the caveats
---of modifying the table during its traversal.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-pairs"])
---@generic T: table, K, V
---@param t T
---@return fun(table: table<K, V>, index?: K):K, V
---@return T
function pairs(t) end

---Returns three values (an iterator function, the table `t`, and `0`) so that the construction
---```lua
---    for i,v in ipairs(t) do body end
---```
---will iterate over the key-value pairs `(1,t[1]), (2,t[2]), ...`, up to the first absent index.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-ipairs"])
---@generic T: table, V
---@param t T
---@return fun(table: V[], i?: integer):integer, V
---@return T
---@return integer i
function ipairs(t) end


---==============================================================================================---
---  LOADING                                                                                     ---
---==============================================================================================---

---Loads a chunk from the given string.
---
---~~[View documents](command:extension.lua.doc?["en-us/51/manual.html/pdf-loadstring"])~~  
---This function does not exist in normal Lua 5.2 and is somewhat similar to the Lua 5.1 function of
---the same name.
---@param text string
---@return function?
---@return string? error_message
---@nodiscard
function loadstring(text) end

---An alias of `loadstring`.
---@param text string
---@return function?
---@return string? error_message
---@nodiscard
function load(text) end


---==============================================================================================---
---  METATABLES                                                                                  ---
---==============================================================================================---

---If object does not have a metatable, returns nil. Otherwise, if the object's metatable has a
---__metatable field, returns the associated value. Otherwise, returns the metatable of the given
---object.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-getmetatable"])
---@param object any
---@return table metatable
---@nodiscard
function getmetatable(object) end

---Sets the metatable for the given table. If `metatable` is `nil`, removes the metatable of the
---given table. If the original metatable has a `__metatable` field, raises an error.
---
---This function returns `table`.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-setmetatable"])
---@param table      table
---@param metatable? table
---@return table
function setmetatable(table, metatable) end

---Gets the real value of `table[index]`, without invoking the `__index` metamethod.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-rawget"])
---@param table table
---@param index any
---@return any
---@nodiscard
function rawget(table, index) end

---Sets the real value of `table[index]` to `value`, without using the `__newindex` metavalue.
---`table` must be a table, `index` any value different from `nil` and `NaN`, and `value` any Lua
---value.  
---This function returns `table`.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-rawset"])
---@param table table
---@param index any
---@param value any
---@return table
function rawset(table, index, value) end

---Checks whether v1 is equal to v2, without invoking the `__eq` metamethod.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-rawequal"])
---@param v1 any
---@param v2 any
---@return boolean
---@nodiscard
function rawequal(v1, v2) end

---Returns the length of the object `v`, without invoking the `__len` metamethod.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-rawlen"])
---@param v table|string
---@return integer len
---@nodiscard
function rawlen(v) end


---==============================================================================================---
---  PROTECTED CALLS                                                                             ---
---==============================================================================================---

---Calls the function `f` with the given arguments in *protected mode*. This means that any error
---inside `f` is not propagated; instead, `pcall` catches the error and returns a status code. Its
---first result is the status code (a boolean), which is true if the call succeeds without errors.
---In such case, `pcall` also returns all results from the call, after this first result. In case of
---any error, `pcall` returns `false` plus the error object.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-pcall"])
---@param f function
---@param ... any
---@return boolean success
---@return any result
---@return any ...
function pcall(f, ...) end

---Calls function `f` with the given arguments in protected mode with a new message handler.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-xpcall"])
---@param f function
---@param msgh  function
---@param ... any
---@return boolean success
---@return any result
---@return any ...
function xpcall(f, msgh, ...) end


---==============================================================================================---
---  CONVERSIONS                                                                                 ---
---==============================================================================================---

---A valid base for the `tonumber` function.
---@alias tonumber.base
---| 2  # Binary: 0-1
---| 3  # 0-2
---| 4  # 0-3
---| 5  # 0-4
---| 6  # 0-5
---| 7  # 0-6
---| 8  # Octal: 0-7
---| 9  # 0-8
---| 10 # Decimal: 0-9
---| 11 # 0-A
---| 12 # 0-B
---| 13 # 0-C
---| 14 # 0-D
---| 15 # 0-E
---| 16 # Hexadecimal: 0-F
---| 17 # 0-G
---| 18 # 0-H
---| 19 # 0-I
---| 20 # 0-J
---| 21 # 0-K
---| 22 # 0-L
---| 23 # 0-M
---| 24 # 0-N
---| 25 # 0-O
---| 26 # 0-P
---| 27 # 0-Q
---| 28 # 0-R
---| 29 # 0-S
---| 30 # 0-T
---| 31 # 0-U
---| 32 # 0-V
---| 33 # 0-W
---| 34 # 0-X
---| 35 # 0-Y
---| 36 # Max: 0-Z

---When called with no `base`, `tonumber` tries to convert its argument to a number. If the argument
---is already a number or a string convertible to a number, then `tonumber` returns this number;
---otherwise, it returns `nil`.
---
---When called with `base`, then `e` should be a string to be interpreted as an integer numeral in
---that base. The base may be any integer between 2 and 36, inclusive. In bases above 10, the letter
---'A' (in either upper or lower case) represents 10, 'B' represents 11, and so forth, with 'Z'
---representing 35. If the string `e` is not a valid numeral in the given base, the function returns
---`nil`.
---
---The string may have leading and trailing spaces and a sign.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-tonumber"])
---@overload fun(e: string, base: tonumber.base): integer?
---@param e any
---@return number?
---@nodiscard
function tonumber(e) end

---Receives a value of any type and converts it to a string in a human-readable format.
---
---If the metatable of `v` has a `__tostring` field, then `tostring` calls the corresponding value
---with `v` as argument, and uses the result of the call as its result. Otherwise, if the metatable
---of `v` has a `__name` field with a string value, `tostring` may use that string in its final
---result.
---
---For complete control of how numbers are converted, use
---[string.format](command:extension.lua.doc?["en-us/52/manual.html/pdf-string.format"]).
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-tostring"])
---@param v any
---@return string
---@nodiscard
function tostring(v) end


---==============================================================================================---
---  MISC                                                                                        ---
---==============================================================================================---

---Receives any number of arguments and prints them to chat.
---
---If a string value is given, it will be printed as-is with no formatting.
---
---If a non-string value is given, the value will be formatted in a readable manner and given a
---special color depending on the type.
---* `nil`: Red,
---* `boolean`: Purple,
---* `number`: Cyan,
---* `function`: Green,
---* `table`: Pink,
---* `userdata`: Yellow.
---
---~~[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-print"])~~  
---This function has been modified by Figura and does not work how it does in normal Lua 5.2.
---@param ... any
---@return string
function print(...) end

---If `index` is a number, returns all arguments after argument number `index`; a negative number
---indexes from the end (`-1` is the last argument). Otherwise, `index` must be the string `"#"`,
---and `select` returns the total number of extra arguments it received.
---
---[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-select"])
---@param index integer
---| "\x23" # Get the amount of arguments given.
---@param ... any
---@return any ...
---@nodiscard
function select(index, ...) end

---A valid type given by the `type` function.
---@alias type.type any
---| "nil"
---| "number"
---| "string"
---| "boolean"
---| "table"
---| "function"
---| "Action"
---| "ActionWheelAPI"
---| "Animation"
---| "AvatarAPI"
---| "Biome"
---| "BlockState"
---| "BlockTask"
---| "ClickAction"
---| "ClientAPI"
---| "EntityAPI"
---| "EntityNameplateCustomization"
---| "Event"
---| "EventsAPI"
---| "HostAPI"
---| "ItemStack"
---| "ItemTask"
---| "Keybind"
---| "KeybindAPI"
---| "LivingEntityAPI"
---| "MatricesAPI"
---| "Matrix2"
---| "Matrix3"
---| "Matrix4"
---| "ModelPart"
---| "NameplateAPI"
---| "NameplateCustomization"
---| "NameplateCustomizationGroup"
---| "Page"
---| "ParticleAPI"
---| "PingAPI"
---| "PingFunction"
---| "PlayerAPI"
---| "RenderTask"
---| "RendererAPI"
---| "ScrollAction"
---| "Sound"
---| "SoundAPI"
---| "TextTask"
---| "ToggleAction"
---| "VanillaModelAPI"
---| "VanillaModelGroup"
---| "VanillaModelPart"
---| "Vector2"
---| "Vector3"
---| "Vector4"
---| "Vector5"
---| "Vector6"
---| "VectorsAPI"
---| "WorldAPI"


---Returns the type of its only argument, coded as a string.  
---If the metatable of `v` has a `__type` index, this function will return that instead.
---
---~~[View documents](command:extension.lua.doc?["en-us/52/manual.html/pdf-type"])~~  
---This function has been modified by Figura and does not work how it does in normal Lua 5.2.
---@param v any
---@return type.type type
---@nodiscard
function type(v) end
