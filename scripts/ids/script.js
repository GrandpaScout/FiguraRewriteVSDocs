const {mkdirSync} = require("fs");
const {resolve} = require("path");
const collector = require("../collector");

const cwd = process.cwd();

mkdirSync(resolve(cwd, "./out"), {recursive: true})


//======================================= BIOME COLLECTOR ========================================//

const biomes = []
let longestBiomeID = 0

const biomesMatch = /^ ?(?<name>.+?)\t(?:minecraft:)?(?<id>.+?)\t\d+$/i
const biomesModdedMatch = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/i

collector(resolve(cwd, "out/biomes.lua"), "Minecraft.biomeID string", [
  {
    tns(line) {
      const match = line.match(biomesMatch)
      if (match) {
        const name = match.groups.name
        const id = "minecraft:" + match.groups.id

        biomes.push({ns: "", id, name})
        longestBiomeID = Math.max(longestBiomeID, id.length)
      }
    },
    file: resolve(cwd, "biomes.txt")
  },
  {
    tns(line) {
      const match = line.match(biomesModdedMatch)
      if (match) {
        const {name, ns} = match.groups
        const id = ns + ":" + match.groups.id

        biomes.push({ns, id, name})
        longestBiomeID = Math.max(longestBiomeID, id.length)
      }
    },
    file: resolve(cwd, "biomes.modded.txt")
  },
  function() {
    biomes.sort((a, b) => {
      return a.ns === b.ns
      ? (a.id > b.id ? 1 : -1)
      : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    biomes.forEach((bme) => {
      lines.push(
        `---| "${bme.id}" ${" ".repeat(longestBiomeID - bme.id.length)}# ${bme.name}\n`
      )
    })

    return lines
  }
])


//======================================= BLOCK COLLECTOR ========================================//

const blocks = []
let longestBlockID = 0
const blocksMatch = /^.+?\t(?:minecraft:)?(?<id>.+?)\t(?<name>.+?)\t(?<item>.+?)$/i
const blocksModdedMatch = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)(?:\s*\|\s*(?:(?<item>identical|true|yes|y|t)|.*?))?$/i

// For block-items
const items = []
let longestItemID = 0

collector(resolve(cwd, "out/blocks.lua"), "Minecraft.blockID string", [
  {
    tns(line) {
      const match = line.match(blocksMatch)
      if (match) {
        const {name, item} = match.groups
        const id = "minecraft:" + match.groups.id

        blocks.push({ns: "", id, name})
        longestBlockID = Math.max(longestBlockID, id.length)

        if (item === "Identical") {
          items.push({ns: "", id, name})
          longestItemID = Math.max(longestItemID, id.length)
        }
      }
    },
    file: resolve(cwd, "blocks.txt")
  },
  {
    tns(line) {
      const match = line.match(blocksModdedMatch)
      if (match) {
        const {name, item, ns} = match.groups
        const id = ns + ":" + match.groups.id

        blocks.push({ns, id, name})
        longestBlockID = Math.max(longestBlockID, id.length)

        if (item) {
          items.push({ns, id, name})
          longestItemID = Math.max(longestItemID, id.length)
        }
      }
    },
    file: resolve(cwd, "blocks.modded.txt")
  },
  function() {
    blocks.sort((a, b) => {
      return a.ns === b.ns
      ? (a.id > b.id ? 1 : -1)
      : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    blocks.forEach((blk) => {
      lines.push(
        `---| "${blk.id}" ${" ".repeat(longestBlockID - blk.id.length)}# ${blk.name}\n`
      )
    })

    return lines
  }
])


//======================================= BIOME COLLECTOR ========================================//

const dimensions = []
let longestDimensionID = 0

const dimensionsMatch = /^ ?(?<name>.+?)\t(?:minecraft:)?(?<id>.+?)\t-?\d+$/i
const dimensionsModdedMatch = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/i

collector(resolve(cwd, "out/dimensions.lua"), "Minecraft.dimensionID string", [
  {
    tns(line) {
      const match = line.match(dimensionsMatch)
      if (match) {
        const name = match.groups.name
        const id = "minecraft:" + match.groups.id

        dimensions.push({ns: "", id, name})
        longestDimensionID = Math.max(longestDimensionID, id.length)
      }
    },
    file: resolve(cwd, "dimensions.txt")
  },
  {
    tns(line) {
      const match = line.match(dimensionsModdedMatch)
      if (match) {
        const {name, ns} = match.groups
        const id = ns + ":" + match.groups.id

        dimensions.push({ns, id, name})
        longestDimensionID = Math.max(longestDimensionID, id.length)
      }
    },
    file: resolve(cwd, "dimensions.modded.txt")
  },
  function() {
    dimensions.sort((a, b) => {
      return a.ns === b.ns
      ? (a.id > b.id ? 1 : -1)
      : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    dimensions.forEach((dim) => {
      lines.push(
        `---| "${dim.id}" ${" ".repeat(longestDimensionID - dim.id.length)}# ${dim.name}\n`
      )
    })

    return lines
  }
])


//======================================= EFFECT COLLECTOR =======================================//

const effects = []
let longestEffectID = 0

const effectsMatch = /^(?<name>.+?)\t(?:minecraft:)?(?<id>.+?)\t\d*\t?$/i
const effectsModdedMatch = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/i

collector(resolve(cwd, "out/effects.lua"), "Minecraft.effectID string", [
  {
    tns(line) {
      const match = line.match(effectsMatch)
      if (match) {
        const name = match.groups.name
        const id = "effect.minecraft." + match.groups.id

        effects.push({ns: "", id, name})
        longestEffectID = Math.max(longestEffectID, id.length)
      }
    },
    file: resolve(cwd, "effects.txt")
  },
  {
    tns(line) {
      const match = line.match(effectsModdedMatch)
      if (match) {
        const {name, ns} = match.groups
        const id = "effect." + ns + "." + match.groups.id

        effects.push({ns, id, name})
        longestEffectID = Math.max(longestEffectID, id.length)
      }
    },
    file: resolve(cwd, "effects.modded.txt")
  },
  function() {
    effects.sort((a, b) => {
      return a.ns === b.ns
      ? (a.id > b.id ? 1 : -1)
      : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    effects.forEach((eff) => {
      lines.push(
        `---| "${eff.id}" ${" ".repeat(longestEffectID - eff.id.length)}# ${eff.name}\n`
      )
    })

    return lines
  }
])


//===================================== ENCHANTMENT COLLECTOR ====================================//

const enchantments = []
let longestEnchantmentID = 0

const enchantmentsMatch = /^(?<name>.+?)\t(?:minecraft:)?(?<id>.+?)$/i
const enchantmentsModdedMatch = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/i

collector(resolve(cwd, "out/enchantments.lua"), "Minecraft.enchantmentID string", [
  {
    tns(line) {
      const match = line.match(enchantmentsMatch)
      if (match) {
        const name = match.groups.name
        const id = "minecraft:" + match.groups.id

        enchantments.push({ns: "", id, name})
        longestEnchantmentID = Math.max(longestEnchantmentID, id.length)
      }
    },
    file: resolve(cwd, "enchantments.txt")
  },
  {
    tns(line) {
      const match = line.match(enchantmentsModdedMatch)
      if (match) {
        const {name, ns} = match.groups
        const id = ns + ":" + match.groups.id

        enchantments.push({ns, id, name})
        longestEnchantmentID = Math.max(longestEnchantmentID, id.length)
      }
    },
    file: resolve(cwd, "enchantments.modded.txt")
  },
  function() {
    enchantments.sort((a, b) => {
      return a.ns === b.ns
      ? (a.id > b.id ? 1 : -1)
      : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    enchantments.forEach((enc) => {
      lines.push(
        `---| "${enc.id}" ${" ".repeat(longestEnchantmentID - enc.id.length)}# ${enc.name}\n`
      )
    })

    return lines
  }
])


//======================================= ENTITY COLLECTOR =======================================//

const entities = []
let longestEntityID = 0

const entitiesMatch = /^ ?(?<name>.+?)(?:\t(?:minecraft:)?(?<id>.+?))?$/i
const entitiesModdedMatch = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/i

let entityHalf = null

const entityBannedLines = [
  "Entity\tResource location",
  "Mobs",
  "Miscellaneous",
  "Projectiles",
  "Vehicles",
  "Blocks",
  "Items"
]

collector(resolve(cwd, "out/entities.lua"), "Minecraft.entityID string", [
  {
    tns(line) {
      if (entityBannedLines.includes(line)) return;

      const match = line.match(entitiesMatch)
      if (match) {
        const {name, id: _id} = match.groups
        if (name === "Entity" && _id === "Resource location") {
          return;
        } else if (!_id) {
          if (entityHalf) {
            const id = entityHalf.id = "minecraft:" + name
            entities.push(entityHalf)
            longestEntityID = Math.max(longestEntityID, id.length)
            entityHalf = null
          } else {
            entityHalf = {ns: "", name}
          }
          return;
        }
        const id = "minecraft:" + _id

        entities.push({ns: "", id, name})
        longestEntityID = Math.max(longestEntityID, id.length)
      }
    },
    file: resolve(cwd, "entities.txt")
  },
  {
    tns(line) {
      const match = line.match(entitiesModdedMatch)
      if (match) {
        const {name, ns} = match.groups
        const id = ns + ":" + match.groups.id

        entities.push({ns, id, name})
        longestEntityID = Math.max(longestEntityID, id.length)
      }
    },
    file: resolve(cwd, "entities.modded.txt")
  },
  function() {
    entities.sort((a, b) => {
      return a.ns === b.ns
        ? (a.id > b.id ? 1 : -1)
        : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    entities.forEach((ent) => {
      lines.push(
        `---| "${ent.id}" ${" ".repeat(longestEntityID - ent.id.length)}# ${ent.name}\n`
      )
    })

    return lines
  }
])


//======================================== ITEM COLLECTOR ========================================//

const itemsMatch = /^ ?(?<name>.+?)\t(?:minecraft:)?(?<id>.+?)$/i
const itemsModdedMatch = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/i

collector(resolve(cwd, "out/items.lua"), "Minecraft.itemID string", [
  {
    tns(line) {
      const match = line.match(itemsMatch)
      if (match) {
        const name = match.groups.name
        const id = "minecraft:" + match.groups.id

        items.push({ns: "", id, name})
        longestItemID = Math.max(longestItemID, id.length)
      }
    },
    file: resolve(cwd, "items.txt")
  },
  {
    tns(line) {
      const match = line.match(itemsModdedMatch)
      if (match) {
        const {name, ns} = match.groups
        const id = ns + ":" + match.groups.id

        items.push({ns, id, name})
        longestItemID = Math.max(longestItemID, id.length)
      }
    },
    file: resolve(cwd, "items.modded.txt")
  },
  function() {
    items.sort((a, b) => {
      return a.ns === b.ns
      ? (a.id > b.id ? 1 : -1)
      : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    items.forEach((itm) => {
      lines.push(
        `---| "${itm.id}" ${" ".repeat(longestItemID - itm.id.length)}# ${itm.name}\n`
      )
    })

    return lines
  }
])


//====================================== PARTICLE COLLECTOR ======================================//

const particles = []
let longestParticleID = 0

const particlesMatch = /^ ?(?:minecraft:)?(?<id>.+?)(?:\t.+?)?$/i
const particlesModdedMatch = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/i

collector(resolve(cwd, "out/particles.lua"), "Minecraft.particleID string", [
  {
    tns(line) {
      const match = line.match(particlesMatch)
      if (match) {
        const id = "minecraft:" + match.groups.id

        const name = match.groups.id
          .replace(/(?<![a-z])./gi, function(str) {return str.toUpperCase()})
          .replace(/_/g, " ")

        particles.push({ns: "", id, name})
        longestParticleID = Math.max(longestParticleID, id.length)
      }
    },
    file: resolve(cwd, "particles.txt")
  },
  {
    tns(line) {
      const match = line.match(particlesModdedMatch)
      if (match) {
        const {name, ns} = match.groups
        const id = ns + ":" + match.groups.id

        particles.push({ns, id, name})
        longestParticleID = Math.max(longestParticleID, id.length)
      }
    },
    file: resolve(cwd, "particles.modded.txt")
  },
  function() {
    particles.sort((a, b) => {
      return a.ns === b.ns
      ? (a.id > b.id ? 1 : -1)
      : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    particles.forEach((pcl) => {
      lines.push(
        `---| "${pcl.id}" ${" ".repeat(longestParticleID - pcl.id.length)}# ${pcl.name}\n`
      )
    })

    return lines
  }
])


//======================================= SOUNDS COLLECTOR =======================================//

const sounds = []
let longestSoundID = 0

collector(resolve(cwd, "out/sounds.lua"), "Minecraft.soundID string", [
  {
    tns() {
      const vanilla = require("./sounds.json")

      Object.keys(vanilla).forEach((key) => {
        const id = "minecraft:" + key
        sounds.push({ns: "", id})
        longestSoundID = Math.max(longestSoundID, id.length)
      })
    },
    file: false
  },
  {
    tns() {
      const modded = require("./sounds.modded.json")

      for (const [ns, mod] of Object.entries(modded)) {
        Object.keys(mod).forEach((key) => {
          sounds.push({ns, id: ns + ":" + key})
          longestSoundID = Math.max(longestSoundID, id.length)
        })
      }
    },
    file: false
  },
  function() {
    sounds.sort((a, b) => {
      return a.ns === b.ns
      ? (a.id > b.id ? 1 : -1)
      : (a.ns > b.ns ? 1 : -1)
    })

    const lines = []
    sounds.forEach((snd) => {
      lines.push(
        `---| "${snd.id}" ${" ".repeat(longestSoundID - snd.id.length)}#\n`
      )
    })

    return lines
  }
])
