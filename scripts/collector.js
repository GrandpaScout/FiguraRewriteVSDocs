const {readFileSync, writeFileSync, openSync, appendFileSync, closeSync} = require("fs");
const {inspect} = require("util");

const chunkSize = 50


/**
 * @param {string} output
 * @param {string} alias
 * @param {
     (
       {
         tns?: ((line: string | null) => string | string[] | undefined),
         file?: string | false
       } | string | ((line: string | null) => string | string[] | undefined)
     )[]
   } inputs
 */
module.exports = function Collector(output, alias, inputs) {

  if (!(inputs instanceof Array)) inputs = [inputs];

  const fileOut = openSync(output, "w")
  writeFileSync(fileOut, `---@alias ${alias}\n`)

  let currentTransformer

  inputs.forEach((v) => {
    if (typeof v === "function") {
      currentTransformer = v;
      return;
    }
    const input = (typeof v === "string") ? {file: v} : v

    if (input.tns) currentTransformer = input.tns;

    if (input.file !== false) {
      const fileLines = readFileSync(input.file)
        .toString()
        .split(/\r?\n/)

      fileLines.forEach((line) => {
        if (line.startsWith("#") || !line.trim().length) return;
        currentTransformer(line)
      })
    } else {
      currentTransformer(null)
    }
  })
  const data = currentTransformer(null)

  if (data instanceof Array) {
    const chunks = Math.ceil(data.length / chunkSize)
    for (let i = 0; i < chunks; i++) {
      const x = i * chunkSize
      appendFileSync(fileOut, data.slice(x, x + chunkSize).join(""))
    }
  } else {
    appendFileSync(fileOut, data)
  }

  closeSync(fileOut)
}
