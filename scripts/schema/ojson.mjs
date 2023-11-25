/** @typedef {OJSONNull | boolean | number | string | RegExp | OJSONObject | OJSONArray} OJSONAny */

const reg_lastcomma = /,?\s*$/

export class OJSONType {
  /** @type {[string, string | OJSONType][]} */
  #value;

  /**
   * @param {[string, string | OJSONType][]} contents
  **/
  constructor(contents) {
    this.#value = contents;
  }

  /** @returns {string} */
  stringify(indent = 0) {
    return this.#value.length
      ? `{\n${
        this.#value.map((v) => {
          return v
            ? `${" ".repeat(indent + 2)}${v[0]}: ${(v[1] instanceof OJSONType) ? v[1].stringify(indent + 2) : v[1]},\n`
            : "\n"
        }).join("").replace(reg_lastcomma, "")
      }\n${" ".repeat(indent)}}`
      : "{}"
  }
}

export class OJSONValue {}

class OJSONNull extends OJSONValue {
  stringify(indent = 0) {return "null"}
}

export class OJSONMerged extends OJSONValue {
  /** @type {([string, OJSONAny] | OJSONAny | null)[]} */
  #value;

  /**
   * @param {([string, OJSONAny] | OJSONAny | null)[]} contents
  **/
  constructor(contents) {
    super();
    this.#value = contents;
  }

  stringify(indent = 0) {
    return this.#value.map((v) => {
      if (v == null) return "";
      return (v instanceof Array)
        ? `${JSON.stringify(v[0])}: ${
          (v[1] instanceof OJSONValue)
            ? v[1].stringify(indent)
            : JSON.stringify((v[1] instanceof RegExp) ? v[1].source : v[1])
        }`
        : (v instanceof OJSONValue)
          ? v.stringify(indent)
          : JSON.stringify((v instanceof RegExp) ? v.source : v)
    }).join(", ")
  }
}

export class OJSONObject extends OJSONValue {
  /** @type {boolean} */
  #minified;
  /** @type {([string, OJSONAny] | null)[]} */
  #value;

  /**
   * @param {([string, OJSONAny] | null)[]} contents
   * @param {boolean | undefined} minified
  **/
  constructor(contents, minified) {
    super();
    this.#minified = minified ?? false;
    this.#value = contents;
  }

  at(index) {
    const value = this.#value.at(index);
    return value ? [...value] : value;
  }

  get(key) {
    const value = this.#value.find(
      (v) => v?.[0] === key
    );
    return value ? value[1] : value;
  }

  /** @returns {string} */
  stringify(indent = 0) {
    return this.#minified
      ? `{${
        this.#value.map((v) => {
          if (v == null) return "";
          return `${JSON.stringify(v[0])}: ${
            (v[1] instanceof OJSONValue)
              ? v[1].stringify(indent)
              : JSON.stringify((v[1] instanceof RegExp) ? v[1].source : v[1])
          }, `
        }).join("").replace(reg_lastcomma, "")
      }}`
      : `{\n${
        this.#value.map((v) => {
          return v
            ? `${" ".repeat(indent + 2)}${JSON.stringify(v[0])}: ${
              (v[1] instanceof OJSONValue)
                ? v[1].stringify(indent + 2)
                : JSON.stringify((v[1] instanceof RegExp) ? v[1].source : v[1])
            },\n`
            : "\n"
        }).join("").replace(reg_lastcomma, "")
      }\n${" ".repeat(indent)}}`
  }
}

export class OJSONArray extends OJSONValue {
  /** @type {boolean} */
  #minified;
  /** @type {(OJSONAny | null)[]} */
  #value;

  /**
   * @param {(OJSONAny | null)[]} contents
   * @param {boolean | undefined} minified
  **/
  constructor(contents, minified) {
    super();
    this.#minified = minified ?? false;
    this.#value = contents;
  }

  at(index) {
    return this.#value.at(index);
  }

  /** @returns {string} */
  stringify(indent = 0) {
    return (this.#minified | !this.#value.length)
      ? `[${
        this.#value.map((v) => {
          if (v == null) return "";
          return `${
            (v instanceof OJSONValue)
              ? v.stringify(indent)
              : JSON.stringify((v instanceof RegExp) ? v.source : v)
          }, `
        }).join("").replace(reg_lastcomma, "")
      }]`
      : `[\n${
        this.#value.map((v) => {
          return v
            ? `${" ".repeat(indent + 2)}${
              (v instanceof OJSONValue)
                ? v.stringify(indent + 2)
                : JSON.stringify((v instanceof RegExp) ? v.source : v)
            },\n`
            : "\n"
        }).join("").replace(reg_lastcomma, "")
      }\n${" ".repeat(indent)}]`
  }
}

export const OJSON_NULL = new OJSONNull;
export const OJSON_EMPTYOBJ = new OJSONObject([], true);
export const OJSON_EMPTYARR = new OJSONArray([], true);
export const OJSON_EMPTYTYPE = new OJSONType([])
