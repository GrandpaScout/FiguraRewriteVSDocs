---@meta


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

---@type table
figuraMetatables = {}

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
---@type {[string]?: function}
pings = {}

---The Minecraft player the current avatar is attached to.
---<!--
---@type PlayerAPI
player = {}

---@type RendererAPI
renderer = {}

---@type SoundAPI
sounds = {}

---@type TextureAPI
textures = {}

---The Minecraft entity the current avatar is attached to.
---<!--
---@type EntityAPI
user = {}

---@type VanillaModelAPI
vanilla_model = {}

---@type VectorAPI
vectors = {}

---@type WorldAPI
world = {}


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
function listFiles(dir, recursive) end

---Alias of `print`.
---> ***
---> Receives any number of arguments and prints them to chat.
--->
---> If a string value is given, it will be printed as-is with no formatting.
--->
---> If a non-string value is given, the value will be formatted in a readable manner and given a
---> special color depending on the type.
---> * `nil`: Red,
---> * `boolean`: Purple,
---> * `number`: Cyan,
---> * `function`: Green,
---> * `table`: Pink,
---> * `userdata`: Yellow.
---> ***
---@param ... any
---@return string
function log(...) end

---Alias of `printJson`.
---> ***
---> Prints a Raw Json Text component to chat, similar to the `/tellraw` command.
---> ***
---@param json? string
---@return string
function logJson(json) end

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

---Prints a Raw Json Text component to chat, similar to the `/tellraw` command.
---@param json? string
---@return string
function printJson(json) end

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

---Alias of `<VectorsAPI>.vec`.
---> ***
---> Creates a vector out of the given numbers.
---> ***
---@*vmerror `x` == `nil` && `y` == `<number>`
---@param x number
---@param y number
---@return Vector2
function vec(x, y) end

---@*vmerror (`x`|`y`) == `nil` && `z` == `<number>`
---@param x number
---@param y number
---@param z number
---@return Vector3
function vec(x, y, z) end

---@*vmerror (`x`|`y`|`z`) == `nil` && `w` == `<number>`
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vector4
function vec(x, y, z, w) end

---@*vmerror (`x`|`y`|`z`|`w`) == `nil` && `t` == `<number>`
---@param x number
---@param y number
---@param z number
---@param w number
---@param t number
---@return Vector5
function vec(x, y, z, w, t) end

---@*vmerror (`x`|`y`|`z`|`w`|`t`) == `nil` && `h` == `<number>`
---@param x number
---@param y number
---@param z number
---@param w number
---@param t number
---@param h number
---@return Vector6
function vec(x, y, z, w, t, h) end
