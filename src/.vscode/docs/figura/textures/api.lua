---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  TEXTUREAPI-INTERNAL                                                                         ---
---==============================================================================================---

---**INTERNAL CLASS**&emsp;*Do not use this!*
---
---Contains generic string field for indexing.
---@class TextureAPI.*INTERNAL*
---@field [string]? Texture


---==============================================================================================---
---  TEXTUREAPI                                                                                  ---
---==============================================================================================---

---An API for handling textures used by the avatar.
---
---Indexing this API with a string that does not result in a method may return a `Texture` object.
---@class TextureAPI: TextureAPI.*INTERNAL*
local TextureAPI


---===== METHODS =====---

---Creates a texture from a base64 string or byte array.
---@param name string
---@param data string | integer[]
---@return Texture
function TextureAPI:read(name, data) end

---Create a new blank texture filled with `#FF72AD`.
---@param name string
---@param width integer
---@param height integer
---@return Texture
function TextureAPI:newTexture(name, width, height) end


---===== GETTERS =====---

---Gets a texture by name.
---@param name string
---@return Texture?
function TextureAPI:get(name) end

---Gets a list of all textures used by the avatar.
---@return Texture[]
function TextureAPI:getTextures() end
