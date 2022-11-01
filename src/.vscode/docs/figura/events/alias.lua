---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  EVENT.GENERIC extends EVENT                                                                 ---
---==============================================================================================---

---A function used by generic events.
---@alias Event.Generic.func fun()


---==============================================================================================---
---  EVENT.RENDER extends EVENT                                                                 ---
---==============================================================================================---

---A function used by `RENDER` events.
---@alias Event.Render.func fun(delta: number)


---==============================================================================================---
---  EVENT.PREVIEWRENDER extends EVENT                                                           ---
---==============================================================================================---

---A valid preview context.
---@alias Event.PreviewRender.context
---| "FIGURA_GUI" # A Figura GUI is rendering this preview.
---| "MINECRAFT_GUI" # A Minecraft GUI is rendering this preview.
---| "PAPERDOLL" # The Figura paper doll is rendering this preview.

---A function used by `RENDER` events.
---@alias Event.PreviewRender.func fun(delta: number, ctx: Event.PreviewRender.context)


---==============================================================================================---
---  EVENT.SKULLRENDER extends EVENT                                                             ---
---==============================================================================================---

---A function used by the `SKULL_RENDER` event.
---@alias Event.SkullRender.func fun(delta: number, pos: Vector3)


---==============================================================================================---
---  EVENT.MOUSESCROLL extends EVENT                                                             ---
---==============================================================================================---

---A function used by the `MOUSE_SCROLL` event.
---@alias Event.MouseScroll.func fun(dir: integer)


---==============================================================================================---
---  EVENT.SENDMESSAGE extends EVENT                                                             ---
---==============================================================================================---

---A function used by the `CHAT_SEND_MESSAGE` event.
---@alias Event.SendMessage.func fun(message?: string): string?


---==============================================================================================---
---  EVENT.RECEIVEMESSAGE extends EVENT                                                          ---
---==============================================================================================---

---A function used by the `CHAT_RECEIVE_MESSAGE` event.
---@alias Event.ReceiveMessage.func fun(message: string)
