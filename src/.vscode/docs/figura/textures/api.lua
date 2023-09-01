---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  TEXTUREAPI-INTERNAL                                                                                             ---
---==================================================================================================================---

---**INTERNAL CLASS**&emsp;*Do not use this!*
---
---Contains generic string field for indexing.
---@class TextureAPI.*INTERNAL*
---@field [string]? Texture


---==================================================================================================================---
---  TEXTUREAPI                                                                                                      ---
---==================================================================================================================---

---An API for handling textures used by the avatar.
---
---Indexing this API with a string that does not result in a method may return a `Texture` object.
---@class TextureAPI: TextureAPI.*INTERNAL*
local TextureAPI


---===== METHODS =====---

---Creates a copy of the given texture under a new name.
---@param name string
---@param tex Texture
---@return Texture
function TextureAPI:copy(name, tex) end

---Creates a new texture object from a texture resource.
---
---Despite this function's name, it can get textures from mods and resource packs.
---@param name string
---@param path string
---@return Texture
function TextureAPI:fromVanilla(name, path) end

---Gets a script-generated texture by name.
---
---This *cannot* get textures that are initally part of the avatar, use `textures["texture.name"]` for those.
---@param name string
---@return Texture?
---@nodiscard
function TextureAPI:get(name) end

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

---Gets a list of all textures that are initally part of the avatar.
---@return Texture[]
---@nodiscard
function TextureAPI:getTextures() end
