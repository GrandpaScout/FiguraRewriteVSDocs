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

---A valid render context.
---@alias Event.Render.context
---| "FIGURA_GUI"    # A Figura GUI is rendering the avatar.
---| "MINECRAFT_GUI" # A Minecraft GUI is rendering the avatar.
---| "PAPERDOLL"     # The Figura paper doll is rendering the avatar.
---| "FIRST_PERSON"  # The first-person view is rendering the avatar.
---| "RENDER"        # The third-person view is rendering the avatar.
---| "OTHER"         # Some other view is rendering the avatar.

---A function used by the `RENDER` event.
---@alias Event.Render.func fun(delta?: number, ctx?: Event.Render.context)


---==============================================================================================---
---  EVENT.WORLDRENDER extends EVENT                                                             ---
---==============================================================================================---

---A function used by `RENDER` events.
---@alias Event.WorldRender.func fun(delta?: number)

---==============================================================================================---
---  EVENT.SKULLRENDER extends EVENT                                                             ---
---==============================================================================================---

---A function used by the `SKULL_RENDER` event.
---@alias Event.SkullRender.func
---| fun(delta?: number, block?: BlockState | nil, item?: ItemStack): boolean?

---==============================================================================================---
---  EVENT.MOUSEMOVE extends EVENT                                                               ---
---==============================================================================================---

---A function used by the `MOUSE_MOVE` event.
---@alias Event.MouseMove.func fun(x?: integer, y?: integer)


---==============================================================================================---
---  EVENT.MOUSESCROLL extends EVENT                                                             ---
---==============================================================================================---

---A function used by the `MOUSE_SCROLL` event.
---@alias Event.MouseScroll.func fun(dir?: integer)


---==============================================================================================---
---  EVENT.SENDMESSAGE extends EVENT                                                             ---
---==============================================================================================---

---A function used by the `CHAT_SEND_MESSAGE` event.
---@alias Event.SendMessage.func fun(message?: string): string?


---==============================================================================================---
---  EVENT.RECEIVEMESSAGE extends EVENT                                                          ---
---==============================================================================================---

---A function used by the `CHAT_RECEIVE_MESSAGE` event.
---@alias Event.ReceiveMessage.func fun(message?: string)


---==============================================================================================---
---  EVENT.USEITEM extends EVENT                                                                 ---
---==============================================================================================---

---A function used by the `CHAT_RECEIVE_MESSAGE` event.
---@alias Event.UseItem.func fun(item?: ItemStack, anim?: ItemStack.useAction, ptc_count?: integer)
