---@meta

---@diagnostic disable: duplicate-set-field

--TODO: Review all descriptions to see if they fit the style guide.

---==============================================================================================---
---  MINECRAFT                                                                                   ---
---==============================================================================================---

---A valid Minecraft shader.
---@alias Minecraft.shader string
---| "notch"           # Halves resolution and adds dithering.
---| "fxaa"            # Adds a small amount of anti-aliasing.
---| "art"             # Pixels are blurred outwards.
---| "bumpy"           # Outlines color differences.
---| "blobs2"          # Similar to `art`, but less intensive.
---| "pencil"          # Gives everything a pencil-sketch look.
---| "color_convolve"  # Intensifies colors.
---| "deconverge"      # Offsets the color channels.
---| "flip"            # Flips the view vertically.
---| "invert"          # Inverts and desaturates colors. (Enderman)
---| "ntsc"            # Makes the view look like a CRT monitor.
---| "outline"         # A less complex `bumpy`. Might not work.
---| "phosphor"        # Pixels on the screen linger.
---| "scan_pincushion" # `ntsc` but without the blur and less intensive.
---| "sobel"           # Turns everything except for edges black.
---| "bits"            # 8-bit color with very low resolution.
---| "desaturate"      # Reduces intensity of colors drastically.
---| "green"           # `scan_pincushion` & `bits` with green overlay.
---| "blur"            # Blurs the screen.
---| "wobble"          # Colors cycle and pixels move up and down.
---| "blobs"           # `blobs2` and `art`, but stronger with distance.
---| "antialias"       # Adds anti-aliasing.
---| "creeper"         # Lowered resolution and green overlay. (Creeper)
---| "spider"          # Splits screen into "eyes" (Spider, Cave Spider)
