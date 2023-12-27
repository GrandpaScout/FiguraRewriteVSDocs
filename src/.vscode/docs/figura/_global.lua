---@meta _
---@diagnostic disable


---==============================================================================================---
---  APIS                                                                                        ---
---==============================================================================================---

---@type ActionWheelAPI
action_wheel = {}

---@type AnimationAPI
animations = {}

---@type AvatarAPI
avatar = {}

---@type ClientAPI
client = {}

---@type ConfigAPI
config = {}

---@type EventsAPI
events = {}

---A table containing all metatables used by Figura.
---
---Metatables are tables that control how Lua handles other tables.  
---They define behaviors such as how mathematical operators should handle the object or what to do
---if the object is treated like a function.
---
---Metamethods are the functions that control the behaviors that Lua follows.  
---A list of metamethods is given below:
---***
---> ```lua
---> (field) __index: table
---> function __index(self: table, key: any)
--->   -> value: any
---> ```
---> ***
---> This metamethod runs when the given `key` is requested from a table but does not exist in the
---> table.  
---> *This metamethod can be skipped with `rawget(table, key)`.*
--->
---> If `__index` is a table, that table is searched for the key instead. This allows tables to
---> have *prototype inheritance*.  
---> If it is a function, the function is given the table that was being searched and the key that
---> was used and is expected to return a value that would be at that key.
--->
---> If `__index` is a table and that table also doesn't have the given `key` *and* has a metatable
---> with an `__index` metamethod, the process repeats.
--->
---> An example of a valid `__index` metamethod that causes a table to return the negative of any
---> number key put into it.
---> ```lua
---> local Object = {}
---> setmetatable(Object, {
--->   __index(self, key)
--->     if type(key) == "number" then return -key end
--->   end
---> })
--->
---> print(Object[2])    --> -2
---> print(Object[1.24]) --> -1.24
---> print(Object[-6])   --> 6
---> ```
---> An example of prototype inheritance with metatables.
---> > ```lua
---> > local FirstClass = {SayHi = function() print("Hi!") end}
---> >
---> > local SecondClass = {SayBye = function() print("Bye!") end}
---> > setmetatable(SecondClass, {__index = FirstClass})
---> >
---> > local ThirdClass = {SayFoo = function() print("foo") end}
---> > setmetatable(ThirdClass, {__index = SecondClass})
---> >
---> > ThirdClass.SayHi()  --> Hi!
---> > ThirdClass.SayBye() --> Bye!
---> > ThirdClass.SayFoo() --> foo
---> ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __newindex(self: table, key: any, value: any)
---> ```
---> ***
---> This metamethod runs when the given `key` is being set in a table but does not already exist in
---> the table.  
---> *This metamethod can be skipped with `rawset(table, key, value)`.*
--->
---> If this metamethod exists, it will override the default behavior of creating the `key` in the
---> table with the given `value`. To return this behavior, a `rawset()` must exist in the metamethod
---> that adds the key to the table. (An example of this is given further down.)
--->
---> An example of a valid `__newindex` metamethod that causes all string keys to be prefixed with a
---> `_`.
---> > ```lua
---> > local Object = {}
---> > setmetatable(Object, {
---> >   __newindex = function(self, key, value)
---> >     if type(key) == "string" then
---> >       rawset(self, "_" .. key, value)
---> >     else
---> >       rawset(self, key, value)
---> >     end
---> >   end
---> > })
---> >
---> > Object.foo = 5
---> > print(Object.foo)  --> nil
---> > print(Object._foo) --> 5
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __call(self: <self>, ...any)
--->   -> ...any
---> ```
---> ***
---> This metamethod runs when a table is being called like a function.
--->
---> Where calling a table like a function would normally error, this metamethod stops that error and
---> instead calls itself in place of the table. The first argument passed into the metamethod is the
---> table that was called and the rest of the arguments are taken from the original call.
--->
---> An example of a valid `__call` metamethod that causes a counter object to count up and return
---> its new value.
---> > ```lua
---> > local Counter = {value = 0}
---> > setmetatable(Counter, {
---> >   __call = function(self, n)
---> >     self.value = self.value + (n or 1)
---> >     return self.value
---> >   end
---> > })
---> >
---> > print(Counter())  --> 1
---> > print(Counter(5)) --> 6
---> > print(Counter())  --> 7
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> (field) __mode: "k" | "v" | "kv"
---> ```
---> ***
---> This metamethod controls which parts of a table are considered "weak references".
--->
---> If `"k"` exists in the `__mode` string, keys are considered weak.  
---> If `"v"` exists in the `__mode` string, values are considered weak.
--->
---> Weak references do not contribute to the amount of active references a value has which means
---> they cannot stop a value from being garbage collected.
--->
---> When the value a weak reference points to is collected by the garbage collector, the entry in
---> the table that contains the weak reference is completely removed.
--->
---> > ***Note:** Due to LuaJ using Java's garbage collector, this might not actually work as
---> > intended.*
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> (field) __metatable: any
---> ```
---> ***
---> This metamethod controls access to the metatable of a table.
--->
---> If this is set to anything other than `nil`, any attempt to use `getmetatable()` on the table
---> will instead return the value in the `__metatable` metamethod.  
---> Attempting to use `setmetatable()` on the table will also throw an error.
--->
---> An example of hiding the metatable of a table.
---> > ```lua
---> > local Object = {}
---> > setmetatable(Object, {__metatable = false})
---> >
---> > print(getmetatable(Object)) --> false
---> > setmetatable(Object, {})    --> [error] cannot change a protected metatable
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __tostring(self: <self>)
--->   -> string: string
---> ```
---> ***
---> This metamethod controls the result of using `tostring()` on a table.
--->
---> While this metamethod can return any value, it is recommended to return a string in all cases.
--->
---> > ***Note:** `print()` and `error()` in Figura do **not** respect this metamethod and will not
---> > use it when getting the string representation of the table.*
--->
---> An example of a valid `__tostring` metamethod that gives a table a more descriptive name.
---> > ```lua
---> > local MyClass = {}
---> > setmetatable(MyClass, {
---> >   __tostring = function() return "MyClass" end
---> > })
---> >
---> > local mytable = {}
---> >
---> > print(tostring(mytable))) --> table: 54bb368a
---> > print(tostring(MyClass))) --> MyClass
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __pairs(self: <self>)
--->   -> iterator: fun(tbl: table, key: any): (next_key: any), (next_value: any)
--->   2. tbl: table
--->   2. starting_key: any
---> ```
---> ***
---> This metamethod controls how `pairs()` iterates over a table.
--->
---> The metamethod must return 3 values:
---> * **`iterator`**  
--->   The function that the `for of` loop will run when it loops.  
--->   The first parameter is the object to iterate over. The iterator is not required to use it.  
--->   The second parameter is the key that was previously iterated over.  
--->   The iterator should return a key and value which are passed into the `for of` loop.  
--->   The iterator should return nothing if there is no next key or value.
---> * **`tbl`**  
--->   The object that should be iterated over. This is passed as the first parameter of `iterator`.  
--->   This object doesn't actually have to be iterated over. The iterator can choose to ignore it.
---> * **`starting_key`**  
--->   The first key the iterator should receive. By default this is `nil`.
--->
---> An example iterator that loops over a contained "data" folder instead of itself.
---> > ```lua
---> > local DataContainer = {
---> >   data = {
---> >     hello = "world",
---> >     foo = "bar",
---> >     abc = "xyz"
---> >   }
---> > }
---> > setmetatable(DataContainer, {
---> >   __pairs = function(self)
---> >     local function iter(_, key)
---> >       local k, v = next(self.data, key)
---> >       if k then return k, v end
---> >     end
---> >
---> >     return iter, self, nil
---> >   end
---> > })
---> >
---> > for k, v in pairs(DataContainer) do
---> >   print(k, v) --> hello  world
---> >               --> foo  bar
---> >               --> abc  xyz
---> > end
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __ipairs(self: <self>)
--->   -> iterator: fun(tbl: table, key: integer): (next_key: integer), (next_value: any)
--->   2. tbl: table
--->   2. starting_key: integer
---> ```
---> ***
---> This metamethod controls how `ipairs()` iterates over a table.
--->
---> This metamethod behaves almost exactly like `__pairs` but affects `ipairs()` instead.  
---> Refer to the info on `__pairs` to learn more.
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> (field) __type: string
---> ```
---> ***
---> ### *Non-standard*
---> This metamethod controls what `type()` returns when used on a table.
--->
---> By default, `type()` will return `"table"` when used on a table. This metamethod allows
---> changing that to any string to allow the table to have a "custom" type.
--->
---> An example of a valid `__type` metamethod that adds a custom type to a table.
---> > ```lua
---> > local MyClass = {}
---> > setmetatable(MyClass, {__type = "MyClass"})
---> >
---> > print(type(MyClass)) --> MyClass
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __len(self: <self>)
--->   -> length: integer
---> ```
---> ***
---> This metamethod controls what the `#` operator returns when used on a table.
--->
---> An example of a valid `__len` metamethod that gets the size of a range.
---> > ```lua
---> > local Range = {min = 5, max = 13}
---> > setmetatable(Range, {
---> >   __len = function(self)
---> >     return self.max - self.min + 1
---> >   end
---> > })
---> >
---> > print(#Range) --> 9
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __unm(self: <self>)
--->   -> inverse: any
---> ```
---> ***
---> This metamethod controls what the unary `-` operator returns when used on a table.
--->
---> An example of a valid `__unm` metamethod that flips a position coordinate.
---> > ```lua
---> > local Position = {x = 25, y = 13, z = -64}
---> > setmetatable(Position, {
---> >   __unm = function(self)
---> >     return setmetatable({x = -self.x, y = -self.y, z = -self.z}, getmetatable(self))
---> >   end
---> > })
---> >
---> > print(Position)  --> {x = 25, y = 13, z = -64}
---> > print(-Position) --> {x = -25, y = -13, z = 64}
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __add(left: any, right: any)
--->   -> sum: any
---> ```
---> ***
---> This metamethod controls what the `+` operator returns when used on a table.
--->
---> If two tables are being added, the metamethod of the left table is used if it exists. The right
---> table's metamethod is used otherwise.
--->
---> As the names of the parameters suggest, the first parameter isn't always the table that
---> contains the metamethod. Instead, it is always the *left-hand side* of the operation.
--->
---> An example of a valid `__add` metamethod that combines two complex numbers.
---> > ```lua
---> > local ComplexMT = {
---> >   __add = function(l, r)
---> >     return setmetatable({n = l.n + r.n, i = l.i + r.i}, getmetatable(l))
---> >   end
---> > }
---> > local Complex1 = setmetatable({n = 2, i = 3}, ComplexMT)
---> > local Complex2 = setmetatable({n = 1, i = 5}, ComplexMT)
---> >
---> > print(Complex1)            --> (2+3i)
---> > print(Complex1 + Complex2) --> (3+8i)
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __sub(left: any, right: any)
--->   -> difference: any
---> ```
---> ***
---> This metamethod controls what the binary `-` operator returns when used on a table.
--->
---> The same rules as `__add` are followed.
--->
---> An example of a valid `__sub` metamethod that subtracts substrings from a bigger string.
---> > ```lua
---> > local CustomString = {value = "hello world"}
---> > setmetatable(CustomString, {
---> >   __sub = function(l, r)
---> >     return setmetatable({value = l.value:gsub(r, "")}, getmetatable(l))
---> >   end
---> > })
---> >
---> > print(CustomString)               --> {"hello world"}
---> > print(CustomString - "o")         --> {"hell wrld"}
---> > print(CustomString - "he" - "or") --> {"llo wld"}
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __mul(left: any, right: any)
--->   -> product: any
---> ```
---> ***
---> This metamethod controls what the `*` operator returns when used on a table.
--->
---> The same rules as `__add` are followed.
--->
---> An example of a valid `__mul` metamethod that repeats a string.
---> > ```lua
---> > local CustomString = {value = "foo"}
---> > setmetatable(CustomString, {
---> >   __mul = function(l, r)
---> >     if type(l) == "number" then l, r = r, l end
---> >     return setmetatable({value = l.value:rep(r)}, getmetatable(l))
---> >   end
---> > })
---> >
---> > print(CustomString)     --> {"foo"}
---> > print(CustomString * 5) --> {"foofoofoofoofoo"}
---> > print(2 * CustomString) --> {"foofoo"}
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __div(left: any, right: any)
--->   -> quotient: any
---> ```
---> ***
---> This metamethod controls what the `/` operator returns when used on a table.
--->
---> The same rules as `__add` are followed.
--->
---> An example of a valid `__div` metamethod that concatenates paths together.
---> > ```lua
---> > local PathMT = {
---> >   __div = function(l, r)
---> >     return setmetatable({path = l.path .. "/" .. r.path:gsub("^/", "")}, getmetatable(l))
---> >   end
---> > }
---> > local Path1 = setmetatable({path = "/foo/bar"}, PathMT)
---> > local Path2 = setmetatable({path = "/hello/world"}, PathMT)
---> >
---> > print(Path1)       --> /foo/bar
---> > print(Path2)       --> /hello/world
---> > print(Path1/Path2) --> /foo/bar/hello/world
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __mod(left: any, right: any)
--->   -> remainder: any
---> ```
---> ***
---> This metamethod controls what the `%` operator returns when used on a table.
--->
---> The same rules as `__add` are followed.
--->
---> An example of a valid `__mod` metamethod that causes an action to have a chance of running.
---> > ```lua
---> > local Action = {chance = 1, action = function() print("hi!") end}
---> > setmetatable(Action, {
---> >   __mod = function(l, r)
---> >     if type(l) == "number" then l, r = r, l end
---> >     return setmetatable({chance = l.chance * (r / 100), action = l.action}, getmetatable(l))
---> >   end,
---> >   __call = function(self, ...)
---> >     if math.random() <= self.chance then self.action(...) end
---> >   end
---> > })
---> >
---> > Action()         --> hi!
---> >
---> > local RareAction = 20 % Action
---> > RareAction()     --> [20% chance to print "hi!", 80% chance to print nothing]
---> >
---> > local LessRareAction = 200% RareAction
---> > LessRareAction() --> [40% chance to print "hi!", 60% chance to print nothing]
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __pow(left: any, right: any)
--->   -> power: any
---> ```
---> ***
---> This metamethod controls what the `^` operator returns when used on a table.
--->
---> The same rules as `__add` are followed.
--->
---> An example of a valid `__pow` metamethod that adds superscript text to a string.
---> > ```lua
---> > local CustomString = {value = "e = mc"}
---> >
---> > local supers = {
---> >   ["1"] = "¹", ["2"] = "²", ["3"] = "³", ["4"] = "⁴", ["5"] = "⁵", ["6"] = "⁶", ["7"] = "⁷",
---> >   ["8"] = "⁸", ["9"] = "⁹", ["0"] = "⁰", ["+"] = "⁺", ["n"] = "ⁿ"
---> > }
---> >
---> > setmetatable(CustomString, {
---> >   __pow = function(l, r)
---> >     return setmetatable({value = l.value .. r:gsub(".", supers)}, getmetatable(l))
---> >   end
---> > })
---> >
---> > print(CustomString)       --> {"e = mc"}
---> > print(CustomString ^ "2") --> {"e = mc²"}
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __concat(left: any, right: any)
--->   -> merged: any
---> ```
---> ***
---> This metamethod controls what the `..` operator returns when used on a table.
--->
---> Similar rules as `__add` are followed. However, the order that tables are checked for a
---> metamethod is reversed. The right side is checked first, and then the left is checked.
--->
---> An example of a valid `__concat` metamethod that creates a range from two other ranges.
---> > ```lua
---> > local RangeMT = {
---> >   __concat = function(left, right)
---> >     return setmetatable({
---> >       min = math.min(l.min, r.min),
---> >       max = math.max(l.max, r.max)
---> >     }, getmetatable(l))
---> >   end
---> > }
---> > local Range1 = setmetatable({min = 2, max = 15}, RangeMT)
---> > local Range2 = setmetatable({min = 12, max = 22}, RangeMT)
---> >
---> > print(Range1)           --> [2 .. 15]
---> > print(Range2)           --> [12 .. 22]
---> > print(Range1 .. Range2) --> [2 .. 22]
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __eq(left: any, right: any)
--->   -> result: any
---> ```
---> ***
---> This metamethod controls what the `==` operator returns when used on a table.
--->
---> Similar rules as `__add` are followed. However, *both* tables must use the same exact `__eq`
---> metamethod for it to work, otherwise the default equality check is done.  
---> (Note that even if two functions have the same body contents, they are *not* equal. A function
---> is only ever equal to itself.)
--->
---> If both tables are the same exact table, the metamethod is ignored in favor of always returning
---> `true`.
--->
---> An example of a valid `__eq` metamethod that checks if two complex objects are equal.
---> > ```lua
---> > local ObjectMT = {
---> >   __eq = function(left, right)
---> >     return left.foo == right.foo and left.bar == right.bar
---> >   end
---> > }
---> > local Object1 = setmetatable({foo = 1, bar = 2}, ObjectMT)
---> > local Object2 = setmetatable({foo = 1, bar = 5}, ObjectMT)
---> >
---> > print(Object1 == Object2) --> false
---> >
---> > Object2.bar = 2
---> > print(Object1 == Object2) --> true
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __lt(left: any, right: any)
--->   -> result: any
---> ```
---> ***
---> This metamethod controls what the `<` and `>` operators return when used on a table.
--->
---> The same rules as `__add` are followed.
--->
---> If doing a greater-than comparison, the left and right values switch sides before being sent to
---> this metamethod.
--->
---> An example of a valid `__lt` metamethod that checks if all of the values in the table are
---> smaller than the values of the other table.
---> > ```lua
---> > local CompareAllMT = {
---> >   __lt = function(l, r)
---> >     for k of pairs(l) do
---> >       if l[k] >= (r[k] or 0) then return false end
---> >     end
---> >     return true
---> >   end
---> > }
---> > local CompareAll1 = setmetatable({hello = 7, world = 1, foo = -5, bar = -0.2}, CompareAllMT)
---> > local CompareAll2 = setmetatable({hello = 1, world = 7, foo = -4}, CompareAllMT)
---> >
---> > print(CompareAll1 < CompareAll2) --> false
---> >
---> > CompareAll2.hello = 9
---> > print(CompareAll1 < CompareAll2) --> true
---> > ```
---***
---&nbsp;  
---&nbsp;
---***
---> ```lua
---> function __lt(left: any, right: any)
--->   -> result: any
---> ```
---> ***
---> This metamethod controls what the `<=` and `>=` operators return when used on a table.
--->
---> The same rules as `__add` are followed.
--->
---> If doing a greater-than-or-equal-to comparison, the left and right values switch sides before
---> being sent to this metamethod.
--->
---> An example of a valid `__le` metamethod that checks if all of the values in the table are
---> smaller than or equal to the values of the other table.
---> > ```lua
---> > local CompareAllMT = {
---> >   __le = function(l, r)
---> >     for k of pairs(l) do
---> >       if l[k] > (r[k] or 0) then return false end
---> >     end
---> >     return true
---> >   end
---> > }
---> > local CompareAll1 = setmetatable({hello = 7, world = 1, foo = -5, bar = 0}, CompareAllMT)
---> > local CompareAll2 = setmetatable({hello = 1, world = 7, foo = -5}, CompareAllMT)
---> >
---> > print(CompareAll1 <= CompareAll2) --> false
---> >
---> > CompareAll2.hello = 7
---> > print(CompareAll1 <= CompareAll2) --> true
---> > ```
figuraMetatables = {
  ---The metatable for `Action`.
  Action = {
    ---@param self Action
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Action
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Action
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `ActionWheelAPI`.
  ActionWheelAPI = {
    ---@param self ActionWheelAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self ActionWheelAPI
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self ActionWheelAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Animation`.
  Animation = {
    ---@param self Animation
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Animation
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `AnimationAPI`.
  AnimationAPI = {
    ---@param self AnimationAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self AnimationAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `AvatarAPI`.
  AvatarAPI = {
    ---@type AvatarAPI
    __index = {},

    ---@param self AvatarAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Biome`.
  Biome = {
    ---@param self Biome
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Biome
    ---@return string string
    __tostring = function(self) end,

    ---@param left Biome
    ---@param right Biome
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `BlockState`.
  BlockState = {
    ---@param self BlockState
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self BlockState
    ---@return string string
    __tostring = function(self) end,

    ---@param left BlockState
    ---@param right BlockState
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `BlockTask`.
  BlockTask = {
    ---@type BlockTask
    __index = {},

    ---@param self BlockTask
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `ClientAPI`.
  ClientAPI = {
    ---@type ClientAPI
    __index = {},

    ---@param self ClientAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `ConfigAPI`.
  ConfigAPI = {
    ---@type ConfigAPI
    __index = {},

    ---@param self ConfigAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Entity`.
  EntityAPI = {
    ---@type Entity
    __index = {},

    ---@param self Entity
    ---@return string string
    __tostring = function(self) end,

    ---@param left Entity
    ---@param right Entity
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `EntityNameplate`.
  EntityNameplateCustomization = {
    ---@type EntityNameplate
    __index = {},

    ---@param self EntityNameplate
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Event`.
  Event = {
    ---@type Event
    __index = {},

    ---@param self Event
    ---@return string string
    __tostring = function(self) end,

    ---@param self Event
    ---@return number length
    __len = function(self) end
  },

  ---The metatable for `EventsAPI`.
  EventsAPI = {
    ---@param self EventsAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self EventsAPI
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self EventsAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `EventsAPI`.
  HostAPI = {
    ---@type HostAPI
    __index = {},

    ---@param self HostAPI
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self HostAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `ItemStack`.
  ItemStack = {
    ---@param self ItemStack
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self ItemStack
    ---@return string string
    __tostring = function(self) end,

    ---@param left ItemStack
    ---@param right ItemStack
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `ItemTask`.
  ItemTask = {
    ---@type ItemTask
    __index = {},

    ---@param self ItemTask
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Keybind`.
  Keybind = {
    ---@type Keybind
    __index = {},

    ---@param self Keybind
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Keybind
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `KeybindAPI`.
  KeybindAPI = {
    ---@type KeybindAPI
    __index = {},

    ---@param self KeybindAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `LivingEntity`.
  LivingEntityAPI = {
    ---@type LivingEntity
    __index = {},

    ---@param self LivingEntity
    ---@return string string
    __tostring = function(self) end,

    ---@param left LivingEntity
    ---@param right LivingEntity
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `MatricesAPI`.
  MatricesAPI = {
    ---@type MatricesAPI
    __index = {},

    ---@param self MatricesAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Matrix2`.
  Matrix2 = {
    ---@param self Matrix2
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Matrix2
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Matrix2
    ---@return string string
    __tostring = function(self) end,

    ---@param self Matrix2
    ---@return number length
    __len = function(self) end,

    ---@param left any
    ---@param right any
    ---@return Matrix2 sum
    __add = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Matrix2 difference
    __sub = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Matrix2 | Vector2 product
    __mul = function(left, right) end,

    ---@param left Matrix2
    ---@param right Matrix2
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `Matrix3`.
  Matrix3 = {
    ---@param self Matrix3
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Matrix3
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Matrix3
    ---@return string string
    __tostring = function(self) end,

    ---@param self Matrix3
    ---@return number length
    __len = function(self) end,

    ---@param left any
    ---@param right any
    ---@return Matrix3 sum
    __add = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Matrix3 difference
    __sub = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Matrix3 | Vector3 product
    __mul = function(left, right) end,

    ---@param left Matrix3
    ---@param right Matrix3
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `Matrix4`.
  Matrix4 = {
    ---@param self Matrix4
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Matrix4
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Matrix4
    ---@return string string
    __tostring = function(self) end,

    ---@param self Matrix4
    ---@return number length
    __len = function(self) end,

    ---@param left any
    ---@param right any
    ---@return Matrix4 sum
    __add = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Matrix4 difference
    __sub = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Matrix4 | Vector4 product
    __mul = function(left, right) end,

    ---@param left Matrix4
    ---@param right Matrix4
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `ModelPart`.
  ModelPart = {
    ---@param self ModelPart
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self ModelPart
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self ModelPart
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `NameplateAPI`.
  NameplateAPI = {
    ---@param self NameplateAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self NameplateAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Nameplate`.
  NameplateCustomization = {
    ---@type Nameplate
    __index = {},

    ---@param self Nameplate
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `NameplateGroup`.
  NameplateCustomizationGroup = {
    ---@type NameplateGroup
    __index = {},

    ---@param self NameplateGroup
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for the null `Entity`.
  NullEntity = {
    ---@param self Entity
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Entity
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Page`.
  Page = {
    ---@param self Page
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Page
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Page
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Particle`.
  Particle = {
    ---@type Particle
    __index = {},

    ---@param self Particle
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `ParticleAPI`.
  ParticleAPI = {
    ---@param self ParticleAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self ParticleAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for the `ping` table.
  PingAPI = {
    ---@param self userdata
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self userdata
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self userdata
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `PingFunction`.
  PingFunction = {
    ---@type table
    __index = {},

    ---@param self userdata
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Player`.
  PlayerAPI = {
    ---@type Player
    __index = {},

    ---@param self Player
    ---@return string string
    __tostring = function(self) end,

    ---@param left Player
    ---@param right Player
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `RenderTask`.
  RenderTask = {
    ---@type RenderTask
    __index = {},

    ---@param self RenderTask
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `RendererAPI`.
  RendererAPI = {
    ---@param self RendererAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self RendererAPI
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self RendererAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Sound`.
  Sound = {
    ---@type Sound
    __index = {},

    ---@param self Sound
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `SoundAPI`.
  SoundAPI = {
    ---@param self SoundAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self SoundAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `SpriteTask`.
  SpriteTask = {
    ---@type SpriteTask
    __index = {},

    ---@param self SpriteTask
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `TextTask`.
  TextTask = {
    ---@type TextTask
    __index = {},

    ---@param self TextTask
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Texture`.
  Texture = {
    ---@param self Texture
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Texture
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `TextureAPI`.
  TextureAPI = {
    ---@param self TextureAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self TextureAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `TextureAtlas`.
  TextureAtlas = {
    ---@type TextureAtlas
    __index = {},

    ---@param self TextureAtlas
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `VanillaModelAPI`.
  VanillaModelAPI = {
    ---@param self VanillaModelAPI
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self VanillaModelAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `VanillaModelGroup`.
  VanillaModelGroup = {
    ---@param self VanillaModelGroup
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self VanillaModelGroup
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `VanillaModelPart`.
  VanillaModelPart = {
    ---@type VanillaModelPart
    __index = {},

    ---@param self VanillaModelPart
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `VanillaPart`.
  VanillaPart = {
    ---@type VanillaPart
    __index = {},

    ---@param self VanillaPart
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Vector2`.
  Vector2 = {
    ---@param self Vector2
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Vector2
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Vector2
    ---@return string string
    __tostring = function(self) end,

    ---@param self Vector2
    ---@return number length
    __len = function(self) end,

    ---@param self Vector2
    ---@return Vector2 inverse
    __unm = function(self) end,

    ---@param left any
    ---@param right any
    ---@return Vector2 sum
    __add = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector2 difference
    __sub = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector2 product
    __mul = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector2 quotient
    __div = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector2 remainder
    __mod = function(left, right) end,

    ---@param left Vector2
    ---@param right Vector2
    ---@return boolean result
    __eq = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return boolean result
    __lt = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return boolean result
    __le = function(left, right) end
  },

  ---The metatable for `Vector3`.
  Vector3 = {
    ---@param self Vector3
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Vector3
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Vector3
    ---@return string string
    __tostring = function(self) end,

    ---@param self Vector3
    ---@return number length
    __len = function(self) end,

    ---@param self Vector3
    ---@return Vector3 inverse
    __unm = function(self) end,

    ---@param left any
    ---@param right any
    ---@return Vector3 sum
    __add = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector3 difference
    __sub = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector3 product
    __mul = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector3 quotient
    __div = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector3 remainder
    __mod = function(left, right) end,

    ---@param left Vector3
    ---@param right Vector3
    ---@return boolean result
    __eq = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return boolean result
    __lt = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return boolean result
    __le = function(left, right) end
  },

  ---The metatable for `Vector4`.
  Vector4 = {
    ---@param self Vector4
    ---@param key any
    ---@return any value
    __index = function(self, key) end,

    ---@param self Vector4
    ---@param key any
    ---@param value any
    __newindex = function(self, key, value) end,

    ---@param self Vector4
    ---@return string string
    __tostring = function(self) end,

    ---@param self Vector4
    ---@return number length
    __len = function(self) end,

    ---@param self Vector4
    ---@return Vector4 inverse
    __unm = function(self) end,

    ---@param left any
    ---@param right any
    ---@return Vector4 sum
    __add = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector4 difference
    __sub = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector4 product
    __mul = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector4 quotient
    __div = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return Vector4 remainder
    __mod = function(left, right) end,

    ---@param left Vector4
    ---@param right Vector4
    ---@return boolean result
    __eq = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return boolean result
    __lt = function(left, right) end,

    ---@param left any
    ---@param right any
    ---@return boolean result
    __le = function(left, right) end
  },

  ---The metatable for `VectorAPI`.
  VectorsAPI = {
    ---@type VectorAPI
    __index = {},

    ---@param self VectorAPI
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Vertex`.
  Vertex = {
    ---@type Vertex
    __index = {},

    ---@param self Vertex
    ---@return string string
    __tostring = function(self) end
  },

  ---The metatable for `Viewer`.
  ViewerAPI = {
    ---@type Viewer
    __index = {},

    ---@param self Viewer
    ---@return string string
    __tostring = function(self) end,

    ---@param left Viewer
    ---@param right Viewer
    ---@return boolean result
    __eq = function(left, right) end
  },

  ---The metatable for `WorldAPI`.
  WorldAPI = {
    ---@type WorldAPI
    __index = {},

    ---@param self WorldAPI
    ---@return string string
    __tostring = function(self) end
  }
}

---@type HostAPI
host = {}

---@type KeybindAPI
keybinds = {}

---@type MatricesAPI
matrices = {}

---A part of the avatar's model.  
---This can be a group, cube, or mesh.
---
---> ***
---
---To access the parts of an avatar, start with:
---```lua
---models.<bbmodel_name>.<path.to.part.here>
---```
---then start making a path to the target part.
---
---As an example, to target the part path shown below...  
---> 📄 `MyModel.bbmodel`  
---> &emsp;📁 `Head`  
---> &emsp;&emsp;📁 `Hat`  
---> &emsp;&emsp;&emsp;⬛ `Brim`
---
---use the following:
---```lua
---models.MyModel.Head.Hat.Brim
---```
---&emsp;  
---When naming model parts, a part name that is not a valid identifier or matches a Lua keyword
---requires an alternate way of accessing the part.
---
---If a part is named `and`, it will conflict with the Lua keyword `and`.
---```lua
---models.MyModel.and    -- Causes an error, Lua did not expect a keyword here.
---models.MyModel["and"] -- Does not error, the keyword is contained in a string.
---```
---If a part starts with a number, it will fail due to Lua trying to read the number first.
---```lua
---models.MyModel.42bottles    -- Causes an error, Lua did not expect a number here.
---models.MyModel["42bottles"] -- Does not error, the number is contained in a string.
---```
---<!--
---@type ModelPart
models = {}

---@type NameplateAPI
nameplate = {}

---@type ParticleAPI
particles = {}

---A table containing an avatar's ping functions.
---
---> ***
---
---Ping functions allow sending information that other clients may not have access to.  
---Things such as:
---* Worn equipment
---* Player health
---* Changing model UV
---* Playing a sound
---
---do not need to be pinged as all clients can understand these functions or objects.
---
---Things such as:
---* Clicking or scrolling the action wheel
---* Pressing a keybind
---* Player inventory contents
---* Host checks
---
---*do* need to be pinged as other clients do not understand these functions or objects.
---
---Consider the following code:
---```lua
---if myKey:isPressed() then
---  print("Hello world!")
---else
---  print("Goodbye world!")
---end
---```
---Since other clients don't know when a keybind is pressed, they will never run the `if` block.
---```lua
---<HOST>                       <CLIENT>
---├•if myKey:isPressed() then  │ if myKey:isPressed() then
---├•  print("Hello world!")    │   print("Hello world!")
---│ else                       ├•else
---│   print("Goodbye world!")  ├•  print("Goodbye world!")
---└•end                        └•end
---```
---&emsp;  
---Pings allow other clients to run code that would normally be unreachable for them.
---```lua
---function pings.coolPing(x)
---  if x then
---    print("Hello world!")
---  else
---    print("Goodbye world!")
---  end
---end
---
---if host:isHost() then
---  if myKey:isPressed() then
---    pings.coolPing(true)
---  else
---    pings.coolPing(false)
---  end
---end
---```
---The ping will resync the host and client when it is reached. Allowing other clients to know when
---a keybind is pressed, for example.
---```lua
---<HOST>                         <CLIENT>
---├•if host:isHost() then        │ if host:isHost() then
---├•  if myKey:isPressed() then  │   if myKey:isPressed() then
---├¶    pings.coolPing(true)     │     pings.coolPing(true)
---│   else                       │   else
---│     pings.coolPing(false)    │     pings.coolPing(false)
---├•  end                        │   end
---└•end                          ╵ end
---
---¶                              ¶
---├•function pings.coolPing(x)   ├•function pings.coolPing(x)
---├•  if x then                  ├•  if x then
---├•    print("Hello world!")    ├•    print("Hello world!")
---│   else                       │   else
---│     print("Goodbye world!")  │     print("Goodbye world!")
---├•  end                        ├•  end
---└•end                          └•end
---```
---&emsp;  
---Custom-made functions are not an exception. If a ping contains one, it will run its entire
---contents like normal.
---```lua
---<HOST>                                     <CLIENT>
---├• function pings.coolPing()               ├•function pings.coolPing()
---├•   print("Hello World!")                 ├•  print("Hello World!")
---├¹   myFunction()                          ├²  myFunction()
---└• end                                     └•end
---
---1                                          2
---├• function myFunction()                   ├•function myFunction()
---├•   models.MyModel.Head:setVisible(false) ├•  models.MyModel.Head:setVisible(false)
---└• end                                     └•end
---```
---&emsp;  
---Pings do have limits. They do not cause clients to magically think they are the host. They are
---still limited by what they know.
---```lua
---function pings.coolPing()
---  print("Hello World!")
---  models.MyModel.Head:setVisible(false)
---  myCoolFunction()
---
---  if host:isHost() then
---    print("Top Secret!")
---  end
---end
---```
---In the above example, the client will still not run the `if host:isHost() then` block because the
---client does not pass the host check even though it is in a ping.
---```lua
---<HOST>                                    <CLIENT>
---├•function pings.coolPing()               ├•function pings.coolPing()
---├•  print("Hello World!")                 ├•  print("Hello World!")
---├•  models.MyModel.Head:setVisible(false) ├•  models.MyModel.Head:setVisible(false)
---├•  myCoolFunction()                      ├•  myCoolFunction()
---│                                         │
---├•  if host:isHost() then                 │   if host:isHost() then
---├•    print("Top Secret!")                │     print("Top Secret!")
---├•  end                                   │   end
---└•end                                     └•end
---```
pings = {}

---The Minecraft player the current avatar is attached to.
---<!--
---@type Player
player = {}

---@type RendererAPI
renderer = {}

---@type SoundAPI
sounds = {}

---@type TextureAPI
textures = {}

---The Minecraft entity the current avatar is attached to.
---<!--
---@type Entity
user = {}

---@type VanillaModelAPI
vanilla_model = {}

---@type VectorAPI
vectors = {}

---@type WorldAPI
world = {}

_GS = _G


---==============================================================================================---
---  FUNCTIONS                                                                                   ---
---==============================================================================================---

---Gets a list of all script files in the given directory.  
---Searches the avatar root if no dir is given.
---
---If `recursive` is set, files in subdirectories will be listed.
---@param dir? string
---@param recursive? boolean
---@return string[]
---@nodiscard
function listFiles(dir, recursive) end

---Alias of `print`.
---> ***
---> Receives any number of arguments and prints them to chat seperated by two spaces.  
---> If a string value is given, it will be printed as-is with no formatting.
--->
---> If a non-string value is given, the value will be formatted in a readable manner and given a
---> special color depending on the type.
---> * `nil`: Red,
---> * `boolean`: Purple,
---> * `number`: Cyan,
---> * `function`: Green,
---> * `table`: Blue,
---> * `userdata`: Yellow.
---> ***
---@param ... any
---@return string
function log(...) end

---Alias of `printJson`.
---> ***
---> Receives any number of arguments and prints them to chat without a seperator.  
---> If a string value is given, it will be parsed as a Raw JSON Text component.
--->
---> This function does not print the standard log prefix.
---> ***
---@param ... any
---@return string
function logJson(...) end

---Alias of `printTable`.
---> ***
---> Prints the contents of the given table or userdata object to chat down to the specified depth.\
---> If a userdata object is given, every default Figura method and field on it is printed.
--->
---> If a non-table value is given, it is printed similar to `print`. (Except for strings, which get
---> double quotes around them.)
--->
---> If `silent` is set, the table will not be printed to chat, but will still be returned as a
---> string.
---> ***
---
---If `depth` is `nil`, it will default to `1`.  
---If `silent` is `nil`, it will default to `false`.
---@param t any
---@param depth? integer
---@param silent? boolean
---@return string
function logTable(t, depth, silent) end

---Converts a JSON string into the appropriate Lua value.
---@*error arrays with nulls in them do not parse correctly.
---@*vmerror on JSON parsing error
---@param json string
---@return (boolean | number | string | table)?
---@nodiscard
function parseJson(json) end

---Receives any number of arguments and prints them to chat without a seperator.  
---If a string value is given, it will be parsed as a Raw JSON Text component.
---
---This function does not print the standard log prefix.
---@param ... any
---@return string
function printJson(...) end

---Prints the contents of the given table or userdata object to chat down to the specified depth.  
---If a userdata object is given, every default Figura method and field on it is printed.
---
---If a non-table value is given, it is printed similar to `print`. (Except for strings, which get
---double quotes around them.)
---
---If `depth` is `nil`, it will default to `1`.  
---If `silent` is `nil`, it will default to `false`.
---@param t any
---@param depth? integer
---@param silent? boolean
---@return string
function printTable(t, depth, silent) end

---Converts a Lua value into a JSON string.
---
---Any value that is not a boolean, number, string, or table will become a `null`.
---@*error array-like tables with nils in the middle of them do not convert correctly.
---@param value any
---@return string
---@nodiscard
function toJson(value) end

---Alias of `<VectorsAPI>.vec`.
---> ***
---> Creates a vector out of the given numbers.
---> ***
---@*vmerror `x` == `nil` && `y` == `<number>`
---@param x number
---@param y number
---@return Vector2
---@nodiscard
function vec(x, y) end

---Alias of `<VectorsAPI>.vec`.
---> ***
---> Creates a vector out of the given numbers.
---> ***
---@*vmerror (`x`|`y`) == `nil` && `z` == `<number>`
---@param x number
---@param y number
---@param z number
---@return Vector3
---@nodiscard
function vec(x, y, z) end

---Alias of `<VectorsAPI>.vec`.
---> ***
---> Creates a vector out of the given numbers.
---> ***
---@*vmerror (`x`|`y`|`z`) == `nil` && `w` == `<number>`
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vector4
---@nodiscard
function vec(x, y, z, w) end
