import {OJSONType} from "./ojson.mjs";

const reg_jsonreplace = /(["\\])/g;
const reg_bbcode = /\[([np])\/?\]|\[([a-z])\](.*?)\[\/\2\]|\[\/?[a-z]\]/g;
const reg_letter = /[A-Za-z]/g;
const reg_dupeicase = /(\[[A-Z][a-z]\])\1/;
const reg_isstring = /^".*?"$/;

function bbcode_md(_, scode, code, text) {
  switch(scode ?? code) {
    case "b": return `**${text}**`;
    case "i": return `*${text}*`;
    case "s": return `***${text}***`;
    case "c": return `\`${text}\``;
    case "k": return `<kbd>${text}</kbd>`;

    case "n": return "  ";
    case "p": return "\n";

    default: return text ?? "";
  }
}

function bbcode_plain(_, scode, code, text) {
  switch(scode ?? code) {
    case "c":
    case "k":
      return reg_isstring.test(text) ? text : `"${text}"`;

    default:
      return text ?? "";
  }
}

function toICase(char) {
  return `[${char.toUpperCase()}${char.toLowerCase()}]`;
}

/**
 * @param {number | undefined} id
 * @param {string | string[] | undefined} extra
 * @returns {string}
**/
export function placeholder(id = 0, extra) {
  if (extra == null)
    return `$${id}`;

  if (typeof extra === "string")
    return `\${${id}:${extra.replace(reg_jsonreplace, "\\$1")}}`;

  if (extra instanceof Array)
    return `\${${id}|${extra.join(",").replace(reg_jsonreplace, "\\$1")}}`;

  return "";
}

/**
 * @overload
 * @param {string} desc
 * @param {false | undefined} single
 * @param {OJSONType | [string, string | OJSONType] | undefined} type
 * @returns {[[string, string], [string, string]]}
**//**
 * @overload
 * @param {string} desc
 * @param {true} single
 * @param {OJSONType | [string, string | OJSONType] | undefined} type
 * @returns {[string, string]}
**//**
 * @param {string} desc
 * @param {boolean | undefined} single
 * @param {OJSONType | [string, string | OJSONType] | undefined} type
 * @returns {[[string, string], [string, string]] | [string, string]}
**/
export function mdDescription(desc, single, type) {
  const plain_desc = single
    ? undefined
    : ["description", desc.replace(reg_bbcode, bbcode_plain)];

  const md_desc = [
    "markdownDescription",
    type
      ? `\`\`\`ts\n${
        (type instanceof OJSONType)
          ? type.stringify()
          : `${type[0]}: ${(type[1] instanceof OJSONType) ? type[1].stringify() : type[1]}`
      }\n\`\`\`\n***\n${desc.replace(reg_bbcode, bbcode_md)}`
      : desc.replace(reg_bbcode, bbcode_md)
  ];

  return single ? md_desc : [plain_desc, md_desc];
}

/** @param {string[]} value */
export function enumToRegex(value) {
  return `^(${value.join("|")})$`;
}

/** @param {string[]} value */
export function enumToIRegex(value) {
  return `^(${
    value.join("|")
      .replace(reg_letter, toICase)
      .replace(reg_dupeicase, "$1{2}")
  })$`;
}
