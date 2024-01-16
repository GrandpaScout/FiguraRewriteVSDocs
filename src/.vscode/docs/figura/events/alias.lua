---@meta _
---@diagnostic disable: duplicate-set-field


---==================================================================================================================---
---  EVENT.GENERIC extends EVENT                                                                                     ---
---==================================================================================================================---

---@alias Event.Generic.func fun()


---==================================================================================================================---
---  EVENT.ARROWRENDER extends EVENT                                                                                 ---
---==================================================================================================================---

---@alias Event.ArrowRender.func fun(delta?: number, entity?: Entity): (hide: boolean?)


---==================================================================================================================---
---  EVENT.CHARTYPED extends EVENT                                                                                   ---
---==================================================================================================================---

---@alias Event.CharTyped.func fun(char?: string, modifiers?: Event.Press.modifiers, codepoint?: integer)


---==================================================================================================================---
---  EVENT.CHATRECEIVEMESSAGE extends EVENT                                                                          ---
---==================================================================================================================---

---@alias Event.ChatReceiveMessage.func
---| fun(message?: string, json?: string): (replace: string|false?, bgcolor: Vector3?)


---==================================================================================================================---
---  EVENT.CHATSENDMESSAGE extends EVENT                                                                             ---
---==================================================================================================================---

---@alias Event.ChatSendMessage.func fun(message?: string): (replace: string?)


---==================================================================================================================---
---  EVENT.ITEMRENDER extends EVENT                                                                                  ---
---==================================================================================================================---

---@alias Event.ItemRender.renderType
---| "FIRST_PERSON_LEFT_HAND"  # First-person, left hand.
---| "FIRST_PERSON_RIGHT_HAND" # First-person, right hand.
---| "THIRD_PERSON_LEFT_HAND"  # Third-person, left hand.
---| "THIRD_PERSON_RIGHT_HAND" # Third-person, right hand.
---| "HEAD"                    # Wearing on head.

---@alias Event.ItemRender.func
---| fun(item?: ItemStack, mode?: Event.ItemRender.renderType, pos?: Vector3, rot?: Vector3, scale?: Vector3, lefthanded?: boolean): (replace: ModelPart?)


---==================================================================================================================---
---  EVENT.PRESS extends EVENT                                                                                       ---
---==================================================================================================================---

---@alias Event.Press.state
---| 0 # Released
---| 1 # Pressed
---| 2 # Held

---@alias Event.Press.modifiers
---| 0  # No modifiers
---| 1  # `⇧ Shift`
---| 2  # `✲ Ctrl`
---| 3  # `✲ Ctrl` **+** `⇧ Shift`
---| 4  # `⎇ Alt`
---| 5  # `⎇ Alt` **+** `⇧ Shift`
---| 6  # `✲ Ctrl` **+** `⎇ Alt`
---| 7  # `✲ Ctrl` **+** `⎇ Alt` **+** `⇧ Shift`
---| 8  # `❖ Super`
---| 9  # `⇧ Shift` **+** `❖ Super`
---| 10 # `✲ Ctrl` **+** `❖ Super`
---| 11 # `✲ Ctrl` **+** `⇧ Shift` **+** `❖ Super`
---| 12 # `⎇ Alt` **+** `❖ Super`
---| 13 # `⎇ Alt` **+** `⇧ Shift` **+** `❖ Super`
---| 14 # `✲ Ctrl` **+** `⎇ Alt` **+** `❖ Super`
---| 15 # `✲ Ctrl` **+** `⎇ Alt` **+** `⇧ Shift` **+** `❖ Super`


---==================================================================================================================---
---  EVENT.KEYPRESS extends EVENT                                                                                    ---
---==================================================================================================================---

---@alias Event.KeyPress.func
---| fun(key?: Minecraft.keyID, state?: Event.Press.state, modifiers?: Event.Press.modifiers): (cancel: boolean?)


---==================================================================================================================---
---  EVENT.MOUSEMOVE extends EVENT                                                                                   ---
---==================================================================================================================---

---@alias Event.MouseMove.func fun(x?: integer, y?: integer): boolean?


---==================================================================================================================---
---  EVENT.MOUSEPRESS extends EVENT                                                                                  ---
---==================================================================================================================---

---@alias Event.MousePress.func
---| fun(button?: Minecraft.mouseID, state?: Event.Press.state, modifiers?: Event.Press.modifiers): (cancel: boolean?)


---==================================================================================================================---
---  EVENT.MOUSESCROLL extends EVENT                                                                                 ---
---==================================================================================================================---

---@alias Event.MouseScroll.func fun(dir?: number): (cancel: boolean?)


---==================================================================================================================---
---  EVENT.ONPLAYSOUND extends EVENT                                                                                 ---
---==================================================================================================================---

---@alias Event.OnPlaySound.category
---| "MASTER"  # Master Volume
---| "MUSIC"   # Music
---| "RECORDS" # Jukebox/Note Blocks
---| "WEATHER" # Weather
---| "BLOCKS"  # Blocks
---| "HOSTILE" # Hostile Creatures
---| "NEUTRAL" # Friendly Creatures
---| "PLAYERS" # Players
---| "AMBIENT" # Ambient/Environment
---| "VOICE"   # Voice/Speech

---@alias Event.OnPlaySound.func
---| fun(id?: string, pos?: Vector3, volume?: number, pitch?: number, loop?: boolean, category?: Event.OnPlaySound.category, path?: string)


---==================================================================================================================---
---  EVENT.RENDER extends EVENT                                                                                      ---
---==================================================================================================================---

---@alias Event.Render.context
---| "FIGURA_GUI"    # A Figura GUI is rendering the avatar.
---| "MINECRAFT_GUI" # A Minecraft GUI is rendering the avatar.
---| "PAPERDOLL"     # The Figura paper doll is rendering the avatar.
---| "FIRST_PERSON"  # The first-person view is rendering the avatar.
---| "RENDER"        # The third-person view is rendering the avatar.
---| "OTHER"         # Some other view is rendering the avatar.

---@alias Event.Render.func fun(delta?: number, ctx?: Event.Render.context, matrix?: Matrix4)


---==================================================================================================================---
---  EVENT.WORLDRENDER extends EVENT                                                                                 ---
---==================================================================================================================---

---@alias Event.WorldRender.func fun(delta?: number)


---==================================================================================================================---
---  EVENT.SKULLRENDER extends EVENT                                                                                 ---
---==================================================================================================================---

---@alias Event.SkullRender.context
---| "HEAD"       # Worn on head.
---| "RIGHT_HAND" # Held in right hand.
---| "LEFT_HAND"  # Held in left hand.
---| "BLOCK"      # Placed as a block.
---| "OTHER"      # Some other context.

---@alias Event.SkullRender.func
---| fun(delta?: number, block?: BlockState, item?: ItemStack, entity?: Entity.any, ctx: Event.SkullRender.context): (hide: boolean?)


---==================================================================================================================---
---  EVENT.USEITEM extends EVENT                                                                                     ---
---==================================================================================================================---

---@alias Event.UseItem.func fun(item?: ItemStack, anim?: ItemStack.useAction, ptc_count?: integer)
