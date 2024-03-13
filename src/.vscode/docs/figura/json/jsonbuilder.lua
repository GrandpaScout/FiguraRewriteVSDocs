---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  JSONBUILDER                                                                                                     ---
---==================================================================================================================---

---An object used to build a JSON serializer.
---@class JsonBuilder
---Determines if serializers built with this builder should should escape non-ascii characters.
---
---Defaults to `true`.
---@field htmlEscaping boolean
---Determines if serializers built with this builder should apply indentation to resulting JSON strings.
---
---Defaults to `false`.
---@field prettyPrinting boolean
---Determines if `nil` values should become `null` when serialized.
---
---Defaults to `false`.
---@field serializeNils boolean
local JsonBuilder


---===== METHODS =====---

---Builds a new serializer with the settings stored in this builder.
---@return JsonSerializer
---@nodiscard
function JsonBuilder:build() end
