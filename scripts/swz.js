
const I_Understand_What_I_Am_Doing_Let_Me_Run_This_Plz = false

if (!I_Understand_What_I_Am_Doing_Let_Me_Run_This_Plz) {
  throw new Error(
    "attempt to run blocked script\n"
    + "For your safety, this script cannot be run unless given permission to.\n\n"

    + "If you wish to run this script, change the\n"
    + "[I_Understand_What_I_Am_Doing_Let_Me_Run_This_Plz]\n"
    + "variable at the top of the script to true.\n\n"

    + "This script is a relic of my absolute genius."
  )
}

var swzchars = [
  "xyzwth",
  "rgba",
  "123456"
]

var toMB = 1 / 1048576

/** @param {string} str */
function swzind(str) {
  return str
    .replace(/_/g, "0")
    .replace(/[r1]/g, "x")
    .replace(/[g2]/g, "y")
    .replace(/[b3]/g, "z")
    .replace(/[a4]/g, "w")
    .replace(/5/g, "t")
    .replace(/6/g, "h")
    .split("")
}

/**
 * @param {number} from
 * @param {number} to
 * @param {?string} str
 * @param {?string} base
 */
 function swizzleOf(from, to, str, base) {
  if (!str) {
    const strs = ["_"];
    swzchars.forEach((v) => {
      strs.push(v.substring(0, from));
    });
    str = strs.join("");
  }

  /** @type {string[]} */ const swizzles = [];
  const chars = str.split("");
  const main = !base;
  base ??= "";

  if (main) debugger;

  if (to > 1) {
    chars.forEach((v) => {
      swizzleOf(undefined, to - 1, str, base + v).forEach((v) => {
        swizzles.push(v)
      })
    })
    if (main) {
      const file = fs.openSync(path.resolve("./swizOut.lua"), "w");
      const len = (16 + (to * 2) + ((to - 1) * 5)) * 4096
      let amount = 0;
      let chunks = 0;
      const numLines = [];
      swizzles.forEach((v) => {
        const vals = swzind(v)
        amount++;
        if (amount >= 4096) {
          console.clear()
          amount = 0;
          chunks++;
          fs.fdatasync(file, (err) => {throw err});
          console.log(`Completed ${(chunks * 4096).toLocaleString()} lines so far...\nThat's about ${(len * chunks).toLocaleString()} bytes. (${(len * chunks * toMB)} MB)`)
        }
        fs.writeSync(file, `\n---@field ["${v}"] string`)
        console.log(`Writing line for swizzle ${v}`);
        if (Number(v)) {
          numLines.push(`\n---@field [${v}] string`)
        }
      })
      numLines.forEach((v) => {
        fs.writeSync(file, v);
        console.log(`Writing number line${v}`);
      })
      fs.closeSync(file);
      return "DONE"
    } else {
      return swizzles;
    }
  } else {
    chars.forEach((v) => {
      swizzles.push(base + v)
    })
    return swizzles;
  }
}
