---@meta


---==============================================================================================---
---  APIS                                                                                        ---
---==============================================================================================---

---@type ActionWheelAPI
action_wheel = {}

---A table containing all of the avatar's animations.
---
---> ***
---
---To access the animations of an avatar, use:
---```lua
---models.<bbmodel_name>.<animation_name>
---```
---&emsp;  
---Be careful when naming animations, an animation name that contains dots (`.`), is not a valid
---identifier, or matches a Lua keyword requires an alternate way of accessing the animation.
---
---If an animation is named `and`, it will conflict with the Lua keyword `and`.
---```lua
---animations.MyModel.and    -- Causes an error, Lua did not expect a keyword here.
---animations.MyModel["and"] -- Does not error, the keyword is contained in a string.
---```
---If an animation name contains special symbols, it will fail due to Lua trying to read the symbol.
---```lua
---animations.MyModel.some-animation    -- Causes an error, Lua did not expect a minus here.
---animations.MyModel["some-animation"] -- Does not error, the minus is contained in a string.
---```
---If an animation name starts with a number, it will fail due to Lua trying to read the number.
---```lua
---animations.MyModel.42bottles    -- Causes an error, Lua did not expect a number here.
---animations.MyModel["42bottles"] -- Does not error, the number is contained in a string.
---```
---If an animation contains periods in its name, it will fail due to how Lua treats them.
---```lua
---animations.MyModel.anim.with.dots    -- Causes an error, attempts to read `.with` in `.anim`.
---animations.MyModel["anim.with.dots"] -- Does not error, the periods are contained in a string.
---
---animations.MyModel.anim_with_no_dots -- Remove the periods instead. This is preferred!
---```
---@type {[string]: {[string]: Animation}}
animations = {}

---@type AvatarAPI
avatar = {}

---@type ClientAPI
client = {}

---@type EventsAPI
events = {}

---@type table
figuraMetatables = {}

---@type HostAPI
host = {}

---@type KeybindAPI
keybind = {}

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

---@type PingAPI
pings = {}

---The Minecraft player the current avatar is attached to.
---<!--
---@type PlayerAPI
player = {}

---@type RendererAPI
renderer = {}

---@type SoundAPI
sounds = {}

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
function log(...) end

---Alias of `printJson`.
---> ***
---> Prints a Raw Json Text component to chat, similar to the `/tellraw` command.
---> ***
---@param json string
function logJson(json) end

---Alias of `printTable`.
---> ***
---> Prints the contents of the given table or userdata object to chat down to the specified depth.\
---> If a userdata object is given, every default Figura method and field on it is printed.
--->
---> If a non-table value is given, it is printed similar to `print`. (Except for strings, which get
---> double quotes around them.)
---> ***
---
---If `depth` is `nil`, it will default to `1`.
---@param t any
---@param depth integer
function logTable(t, depth) end

---Prints a Raw Json Text component to chat, similar to the `/tellraw` command.
---@param json string
function printJson(json) end

---Prints the contents of the given table or userdata object to chat down to the specified depth.  
---If a userdata object is given, every default Figura method and field on it is printed.
---
---If a non-table value is given, it is printed similar to `print`. (Except for strings, which get
---double quotes around them.)
---
---If `depth` is `nil`, it will default to `1`.
---@param t any
---@param depth integer
function printTable(t, depth) end

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
