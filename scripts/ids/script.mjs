import { mkdirSync } from "fs";
import { readFile, writeFile } from "fs/promises";
import { resolve } from "path";

const cwd = process.cwd();

mkdirSync(resolve(cwd, "./out"), {recursive: true});

const UA = "FiguraRewriteVSDocs_BuildScript/1.0 (@GrandpaScout/FiguraRewriteVSDocs)";
const reg_removecomments = /(?<=^|\n)(?:|\s*?(?:#|\/\/).*?)(?:\n|$)/g;
const reg_lineendings = /\r\n/g;
const reg_firstchar = /(?<=^|[_.])./g;
const reg_seprchars = /[_.]/g;
const reg_multispace = / {2,}/g;

async function inFile(path) {
  console.log(`\x1b[94mReading file data from [./${path}]...\x1b[0m`);
  return (await readFile(resolve(cwd, path)))
    .toString("utf8")
    .replace(reg_lineendings, "\n")
    .replace(reg_removecomments, "");
}

/** @returns {Promise<string>} */
async function inWiki(page) {
  const link = `https://minecraft.wiki/api.php?action=parse&format=json&page=${page}&prop=wikitext&formatversion=2`;
  console.log(`\x1b[96mReading wiki data from [https://minecraft.wiki/w/${page.replace(/&section=(\d+)/, " (§$1)")}]...\x1b[0m`);
  const res = await fetch(link, {headers:{"User-Agent": UA}});
  return (await res.json()).parse.wikitext;
}

async function outFile(path, data) {
  await writeFile(resolve(cwd, "out", path), data, "utf8");
  console.log(`\x1b[92mOutput written to [./out/${path}]...\x1b[0m`);
}

function namespace_sort(a, b) {
  return a.ns === b.ns
    ? (a.id > b.id ? 1 : -1)
    : (a.ns > b.ns ? 1 : -1);
}

/** @returns {Promise<void>} */
async function wait(time) {
  const promise = new Promise(resolve => setTimeout(resolve, time));
  return void await promise;
}

function toUpperCase(str) {return str.toUpperCase()}

const start_time = process.hrtime.bigint();
const outfiles = [];


//================================================= BIOME COLLECTOR ==================================================//

const biomes = [];
let longestBiomeID = 0;

biomes: {
  const alias = "Minecraft.biomeID";
  const inwiki = "Biome/ID";
  const infile = "biomes.txt";
  const outfile = "biomes.lua";

  const regv = /^\|-\s*?\n\|\s*{{.*?}} \[\[(?:[^\|]*\|)?(?<name>.*?)\]\][^\n]*\n\|\s*<code>(?<id>.*?)(?:<\/code>)?\s*?$/gm;
  const regm = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/gm;

  const reg_removebedrock = /{{el\|be}}.*$/s;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);
  const delay = wait(1333);

  for (const match of wiki_contents.replace(reg_removebedrock, "").matchAll(regv)) {
    const name = match.groups.name.replace(reg_multispace, " ");
    const id = "minecraft:" + match.groups.id;

    biomes.push({ns: "", id, name});
    longestBiomeID = Math.max(longestBiomeID, id.length);
  }

  for (const match of file_contents.matchAll(regm)) {
    const {name, ns} = match.groups;
    const id = ns + ":" + match.groups.id;

    biomes.push({ns, id, name});
    longestBiomeID = Math.max(longestBiomeID, id.length);
  }

  biomes.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  biomes.forEach((biome) => {
    lines.push(`---| "${biome.id}" ${" ".repeat(longestBiomeID - biome.id.length)}# ${biome.name}\n`)
  });

  outfiles.push(outFile(outfile, lines.join("")));
  await delay;
}


//================================================= BLOCK COLLECTOR ==================================================//

const blocks = [];
let longestBlockID = 0;

// For block-items
const items = [];
let longestItemID = 0;

blocks: {
  const alias = "Minecraft.blockID";
  const inwiki = "Java_Edition_data_values/Blocks";
  const infile = "blocks.txt";
  const outfile = "blocks.lua";

  const regv = /^\|-\s*?\n\|\s*\[\[.*?\]\]\s*\|\|\s*<code>(?<id>.*?)(?:<\/code>)?\s*\|\|\s*(?<name>.*?)\s*?(?:\|\|\s*(?<item>.*?)\s*)?$/gm;
  const regm = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)\s*?(?:\|\s*(?:(?<item>item|identical|true|yes|y|t)|.*?))?$/gmi;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);
  const delay = wait(1333);

  for (const match of wiki_contents.matchAll(regv)) {
    const {name, item} = match.groups;
    const id = "minecraft:" + match.groups.id;

    blocks.push({ns: "", id, name: name.replace(reg_multispace, " ")});
    longestBlockID = Math.max(longestBlockID, id.length);

    if (item === "Identical") {
      items.push({ns: "", id, name});
      longestItemID = Math.max(longestItemID, id.length);
    }
  }

  for (const match of file_contents.matchAll(regm)) {
    const {name, item, ns} = match.groups;
    const id = ns + ":" + match.groups.id;

    blocks.push({ns, id, name});
    longestBlockID = Math.max(longestBlockID, id.length);

    if (item) {
      items.push({ns, id, name});
      longestItemID = Math.max(longestItemID, id.length);
    }
  }

  blocks.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  blocks.forEach((block) => {
    lines.push(`---| "${block.id}" ${" ".repeat(longestBlockID - block.id.length)}# ${block.name}\n`);
  });

  outfiles.push(outFile(outfile, lines.join("")));
  await delay;
}


//================================================= BIOME COLLECTOR ==================================================//

const dimensions = [];
let longestDimensionID = 0;

dimensions: {
  const alias = "Minecraft.dimensionID";
  const inwiki = "Java_Edition_data_values&section=4";
  const infile = "dimensions.txt";
  const outfile = "dimensions.lua";

  const regv = /^\|-\s*?\n\|\s*{{.*?}}\s*\[\[(?:[^\|]*\|)?(?<name>.*?)\]\][^\n]*\n\|\s*{{(?:code|cd)\|(?<id>.*?)}}\s*?$/gm;
  const regm = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/gm;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);
  const delay = wait(1333);

  for (const match of wiki_contents.matchAll(regv)) {
    const name = match.groups.name.replace(reg_multispace, " ");
    const id = "minecraft:" + match.groups.id;

    dimensions.push({ns: "", id, name});
    longestDimensionID = Math.max(longestDimensionID, id.length);
  }

  for (const match of file_contents.matchAll(regm)) {
    const {name, ns} = match.groups;
    const id = ns + ":" + match.groups.id;

    dimensions.push({ns, id, name});
    longestDimensionID = Math.max(longestDimensionID, id.length);
  }

  dimensions.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  dimensions.forEach((dim) => {
    lines.push(`---| "${dim.id}" ${" ".repeat(longestDimensionID - dim.id.length)}# ${dim.name}\n`);
  });

  outfiles.push(outFile(outfile, lines.join("")));
  await delay;
}


//================================================= EFFECT COLLECTOR =================================================//

const effects = [];
let longestEffectID = 0;

effects: {
  const alias = "Minecraft.effectID";
  const inwiki = "Java_Edition_data_values/Effects";
  const infile = "effects.txt";
  const outfile = "effects.lua";

  const regv = /^\|-\s*?\n\|\s*{{EffectLink\|(?<name>.*?)}}\s*?\n\|\s*{{(?:code|cd)\|(?<id>.*?)}}\s*?$/gm;
  const regm = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/gm;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);
  const delay = wait(1333);

  for (const match of wiki_contents.matchAll(regv)) {
    const name = match.groups.name.replace(reg_multispace, " ");
    const id = "effect.minecraft." + match.groups.id;

    effects.push({ns: "", id, name});
    longestEffectID = Math.max(longestEffectID, id.length);
  }

  for (const match of file_contents.matchAll(regm)) {
    const {name, ns} = match.groups;
    const id = "effect." + ns + "." + match.groups.id;

    effects.push({ns, id, name});
    longestEffectID = Math.max(longestEffectID, id.length);
  }

  effects.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  effects.forEach((effect) => {
    lines.push(`---| "${effect.id}" ${" ".repeat(longestEffectID - effect.id.length)}# ${effect.name}\n`);
  });

  outfiles.push(outFile(outfile, lines.join("")));
  await delay;
}


//=============================================== ENCHANTMENT COLLECTOR ==============================================//

const enchantments = []
let longestEnchantmentID = 0

enchantments: {
  const alias = "Minecraft.enchantmentID";
  const inwiki = "Java_Edition_data_values&section=3";
  const infile = "enchantments.txt";
  const outfile = "enchantments.lua";

  const regv = /^\|-\s*?\n\|\s*\[\[(?:[^\|]*\|)?(?<name>.*?)\]\][^\n]*\n\|\s*{{(?:code|cd)\|(?<id>.*?)}}\s*?$/gm;
  const regm = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/gm;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);
  const delay = wait(1333);

  for (const match of wiki_contents.matchAll(regv)) {
    const name = match.groups.name.replace(reg_multispace, " ");
    const id = "minecraft:" + match.groups.id;

    enchantments.push({ns: "", id, name});
    longestEnchantmentID = Math.max(longestEnchantmentID, id.length);
  }

  for (const match of file_contents.matchAll(regm)) {
    const {name, ns} = match.groups;
    const id = ns + ":" + match.groups.id;

    enchantments.push({ns, id, name});
    longestEnchantmentID = Math.max(longestEnchantmentID, id.length);
  }

  enchantments.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  enchantments.forEach((ench) => {
    lines.push(`---| "${ench.id}" ${" ".repeat(longestEnchantmentID - ench.id.length)}# ${ench.name}\n`);
  });

  outfiles.push(outFile(outfile, lines.join("")));
  await delay;
}


//================================================= ENTITY COLLECTOR =================================================//

const entities = []
let longestEntityID = 0

entities: {
  const alias = "Minecraft.entityID";
  const inwiki = "Java_Edition_data_values/Entities";
  const infile = "entities.txt";
  const outfile = "entities.lua";

  const regv = /^\|-\s*?\n\|\s*{{.*?}}\s*?\[\[(?:[^\|]*\|)?(?<name>.*?)\]\][^\n]*\n\|\s*{{(?:code|cd)\|(?<id>.*?)}}\s*?$/gm;
  const regm = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/gm;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);
  const delay = wait(1333);

  for (const match of wiki_contents.matchAll(regv)) {
    const name = match.groups.name.replace(reg_multispace, " ");
    const id = "minecraft:" + match.groups.id;

    entities.push({ns: "", id, name});
    longestEntityID = Math.max(longestEntityID, id.length);
  }

  for (const match of file_contents.matchAll(regm)) {
    const {name, ns} = match.groups;
    const id = ns + ":" + match.groups.id;

    entities.push({ns, id, name});
    longestEntityID = Math.max(longestEntityID, id.length);
  }

  entities.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  entities.forEach((entity) => {
    lines.push(`---| "${entity.id}" ${" ".repeat(longestEntityID - entity.id.length)}# ${entity.name}\n`);
  });

  outfiles.push(outFile(outfile, lines.join("")));
  await delay;
}


//================================================== ITEM COLLECTOR ==================================================//

// `items` and `longestItemID` are defined above in the BLOCK COLLECTOR.

items: {
  const alias = "Minecraft.itemID";
  const inwiki = "Java_Edition_data_values/Items";
  const infile = "items.txt";
  const outfile = "items.lua";

  const regv = /^\|-\s*?\n\|\s*{{.*?}}\s*?\[\[(?:[^\|]*\|)?(?<name>.*?)\]\]\s*?\|\|\s*<code>(?<id>.*?)(?:<\/code>)?\s*?$/gm;
  const regm = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/gm;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);
  const delay = wait(1333);

  for (const match of wiki_contents.matchAll(regv)) {
    const name = match.groups.name.replace(reg_multispace, " ");
    const id = "minecraft:" + match.groups.id;

    items.push({ns: "", id, name});
    longestItemID = Math.max(longestItemID, id.length);
  }

  for (const match of file_contents.matchAll(regm)) {
    const {name, ns} = match.groups;
    const id = ns + ":" + match.groups.id;

    items.push({ns, id, name});
    longestItemID = Math.max(longestItemID, id.length);
  }

  items.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  items.forEach((item) => {
    lines.push(`---| "${item.id}" ${" ".repeat(longestItemID - item.id.length)}# ${item.name}\n`);
  });

  outfiles.push(outFile(outfile, lines.join("")));
  await delay;
}


//================================================ PARTICLE COLLECTOR ================================================//

const particles = [];
let longestParticleID = 0;

particles: {
  const alias = "Minecraft.particleID";
  const inwiki = "Java_Edition_data_values/Particles";
  const infile = "particles.txt";
  const outfile = "particles.lua";

  const regv = /^\|-\s*?\n\|\s*{{(?:code|cd)\|(?<id>.*?)}}\s*?$/gm;
  const regm = /^(?<ns>.+?):(?<id>.+?)\s*\|\s*(?<name>.+?)$/gm;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);
  const delay = wait(1333);

  for (const match of wiki_contents.matchAll(regv)) {
    const id = "minecraft:" + match.groups.id.replace("sould", "soul"); // lmao wiki typo

    const name = match.groups.id
      .replace("sould", "soul")
      .replace(reg_firstchar, toUpperCase)
      .replace(reg_seprchars, " ");

    particles.push({ns: "", id, name});
    longestParticleID = Math.max(longestParticleID, id.length);
  }

  for (const match of file_contents.matchAll(regm)) {
    const {name, ns} = match.groups;
    const id = ns + ":" + match.groups.id;

    particles.push({ns, id, name});
    longestParticleID = Math.max(longestParticleID, id.length);
  }

  particles.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  particles.forEach((ptcl) => {
    lines.push(`---| "${ptcl.id}" ${" ".repeat(longestParticleID - ptcl.id.length)}# ${ptcl.name}\n`);
  });

  outfiles.push(outFile(outfile, lines.join("")));
  await delay;
}


//================================================= SOUNDS COLLECTOR =================================================//

const sounds = [];
let longestSoundID = 0;

sounds: {
  const alias = "Minecraft.soundID";
  const inwiki = "Sounds.json/Java_Edition_values";
  const infile = "sounds.json";
  const outfile = "sounds.lua";

  const regv = /^\|-\s*?\n\|\s*(?<id>[a-z0-9:._]*).*?\s*\|\|/gm;
  const reg_namesplit = /^([^.]+)\.(.*)$/;

  const [wiki_contents, file_contents] = await Promise.all([inWiki(inwiki), inFile(infile)]);

  for (const match of wiki_contents.matchAll(regv)) {
    const id = "minecraft:" + match.groups.id;
    const [, name_1, name_2] = match.groups.id.match(reg_namesplit);
    const name = name_1
      ? `${name_1.replace(reg_firstchar, toUpperCase)}: ${name_2.replace(reg_firstchar, toUpperCase).replace(reg_seprchars, " ")}`
      : `<${match.groups.id}>`;
    sounds.push({ns: "", id, name});
    longestSoundID = Math.max(longestSoundID, id.length);
  }

  for (const [ns, mod] of Object.entries(JSON.parse(file_contents.replace(reg_removecomments, "")))) {
    for (const key of Object.keys(mod)) {
      sounds.push({ns, id: ns + ":" + key, name: "[Modded Sound]"})
      longestSoundID = Math.max(longestSoundID, id.length)
    }
  }

  sounds.sort(namespace_sort);

  const lines = [`---@meta _\n\n---@alias ${alias} string\n`];
  sounds.forEach((sound) => {
    lines.push(`---| "${sound.id}" ${" ".repeat(longestSoundID - sound.id.length)}# ${sound.name}\n`);
  });

  outfiles.push(outFile(outfile, lines.join("")));

  await Promise.all(outfiles);

  const time = Number(process.hrtime.bigint() - start_time);
  console.log(`\n\x1b[93mAlias files built in ${Math.ceil(time / 1000000)}ms\x1b[0m`);
  await wait(2000);
}
