/**
 * Allows quick manual verification of these docs against the exported docs.
 * Put exported docs in `./docs_out.json` and start this script in this directory.
**/

// Typedefs here because I can't be bothered to compile TS.
// Should I be using Deno or Bun for this? Probably.

/** @typedef {{globals: Class, math: Class, lists: Enum[]}} Docs */

/**
 * @typedef {{
 *   name: string,
 *   description: string,
 *   methods: Method[],
 *   fields: Field[]
 * }} Class
**/

/**
 * @typedef {{
 *   name: string,
 *   description: string,
 *   type: string,
 *   editable: boolean,
 *   children: Class[]
 * }} Field
**/

/**
 * @typedef {{
 *   name: string,
 *   description: string,
 *   parameters: Parameter[][],
 *   returns: string[],
 *   aliases: string[],
 *   children: unknown[],
 *   static: boolean
 * }} Method
**/

/**
 * @typedef {{
 *   name: string,
 *   type: string
 * }} Parameter
**/

/**
 * @typedef {{
 *   name: string,
 *   description: string,
 *   entries: string[]
 * }} Enum
**/

/** @type {Docs} */
const docs = await import("./docs_out.json")

// Unfinished
