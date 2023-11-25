import { readFile, writeFile } from "fs/promises";
import { resolve } from "path";

const cwd = process.cwd();
const UA = "FiguraRewriteVSDocs_BuildScript/1.0 (@GrandpaScout/FiguraRewriteVSDocs)";
const reg_removecomments = /(?<=^|\n)(?:|\s*?(?:#|\/\/).*?)(?:\n|$)/g;
const reg_lineendings = /\r\n/g;

export async function inFile(path) {
  console.log(`\x1b[93mReading file data from [./${path}]...\x1b[0m`);
  return (await readFile(resolve(cwd, path)))
    .toString("utf8")
    .replace(reg_lineendings, "\n")
    .replace(reg_removecomments, "");
}

export async function inJson(path) {
  console.log(`\x1b[93mReading json data from [./${path}]...\x1b[0m`);
  return JSON.parse(
    (await readFile(resolve(cwd, path)))
      .toString("utf8")
      .replace(reg_lineendings, "\n")
      .replace(reg_removecomments, "")
  );
}

/** @returns {Promise<string>} */
export async function inWiki(page) {
  const link = `https://minecraft.wiki/api.php?action=parse&format=json&page=${page}&prop=wikitext&formatversion=2`;
  console.log(`\x1b[96mReading wiki data from [https://minecraft.wiki/w/${page.replace(/&section=(\d+)/, " (§$1)")}]...\x1b[0m`);
  const res = await fetch(link, {headers:{"User-Agent": UA}});
  return (await res.json()).parse.wikitext;
}

export async function outFile(path, data) {
  await writeFile(resolve(cwd, "out", path), data, "utf8");
  console.log(`\x1b[95mOutput written to [./out/${path}]...\x1b[0m`);
}

/** @returns {Promise<void>} */
export async function wait(time) {
  const promise = new Promise(resolve => setTimeout(resolve, time));
  return void await promise;
}
