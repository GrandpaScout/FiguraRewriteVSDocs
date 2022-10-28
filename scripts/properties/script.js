const {readFileSync, writeFileSync, appendFileSync, openSync, closeSync, mkdirSync} = require("fs")
const {resolve} = require("path")
const desc = require("./descriptions")
const hashmod = require("./hashmods")

const cwd = process.cwd()

const KEY = Symbol("BlockKey")

const lines = readFileSync(resolve(cwd, "properties.txt"))
  .toString()
  .split(/\r?\n|\|/)

/** @type {{[prop: string]: {range: {hash: string, value: string[]}, blocks: string[]}[], [KEY]: string[]}} */
const data = {
  [KEY]: []
}


/** @param {string} hash */
function getRange(hash) {
  if (hash === "^") {
    return ["true", "false"]
  } else if (hash.startsWith("#")) {
    const ret = []
    const range = hash
      .match(/^#(\d+),(\d+)$/)
      .slice(1)

    range.forEach((v, i, self) => {
      self[i] = Number(v)
    })

    for (i = range[0]; i <= range[1]; i++) ret.push(String(i));

    return ret
  } else if (hash.startsWith("$")) {
    return hash.substring(1).split(",")
  } else {
    throw Error("Invalid range hash.")
  }
}


for (const line of lines) {
  if (line.startsWith("%") && line.endsWith("%")) {
    data[KEY] = line
      .slice(1, -1)
      .replace(/:/g, "minecraft:")
      .split(",");

    continue;
  } else if (line.startsWith("#") || line.trim() == "") {
    continue
  }

  /** @type {string} */
  //console.dir(line)
  const [, paramName, paramGroups] = line.match(/^(.+?)~(.+)$/);
  const pdata = data[paramName] ??= [];

  const groups = paramGroups.split("+");

  for (const group of groups) {
    /** @type {string} */
    const [, range, blockList] = group.match(/^(.+?);(.+)$/);

    const hash = hashmod[range] ?? range

    const blocks = blockList
      .replace(/:/g, "minecraft:")
      .split(",");

    blocks.forEach((block, i) => {
      const n = Number(block);
      if (n === n) blocks[i] = data[KEY][n];
    })

    blocks.sort()

    pdata.push({
      blocks,
      range: {hash, value: getRange(hash)}
    })
  }
}

function docstr(prop) {
  const str = desc[prop] ?? desc.$none
  const rgx = RegExp(`\\r?\\n(?:${str.match(/^\r?\n(\s*)/)[1]})?(?! )`, "g")

  return str
    .replace(rgx, "\n---")
    .replace(/\r?\n\s*$/, "")
}

{
  const props = []
  for (const prop in data) props.push(prop);
  props.sort()

  mkdirSync(resolve(cwd, "./out"), {recursive: true})

  const file = openSync(resolve(cwd, "./out/properties.lua"), "w")
  const fileMin = openSync(resolve(cwd, "./out/properties.min.lua"), "w")
  writeFileSync(file, "---@class Minecraft.properties")
  writeFileSync(fileMin, "---@class Minecraft.properties.min")

  for (const prop of props) {
    const propData = data[prop];

    const groups = []
    const types = []
    for (const group of propData) {
      let values = ""
      if (group.range.hash == "^") {
        values = '`"true"` `"false"`'
      } else if (group.range.hash.startsWith("#")) {
        const [, min, max] = group.range.hash.match(/^#(\d+),(\d+)$/)
        if (min === max) {values = `\`"${min}"\``} else {values = `\`"${min}".."${max}"\``}
      } else {
        values = `\`"${group.range.value.join('"` `"')}"\``
      }

      //if (prop === "waterlogged") console.log(group.blocks);

      groups.push(`---> | ${values} | \`${group.blocks.join("` `")}\` |`)

      for (const type of group.range.value) {
        if (!types.includes(type)) types.push(type);
      }
    }

    const field = `---@field ${prop}? "${types.join('"|"')}"|string`

    const doc = docstr(prop)

    appendFileSync(file, `${
      doc
    }\n---> | State | Valid Blocks |\n---> | :---- | :----------- |\n${
      groups.join("\n")
    }\n${
      field
    }`)

    appendFileSync(fileMin, `${doc}\n${field}`)
  }

  closeSync(file)
  closeSync(fileMin)
}
