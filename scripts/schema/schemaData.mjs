import {OJSONType, OJSONMerged, OJSONObject, OJSONArray, OJSON_EMPTYTYPE} from "./ojson.mjs";

import {
  placeholder as $P, mdDescription as mdD,
  enumToRegex as enumRegex, enumToIRegex as enumIRegex
} from "./util.mjs";

/** @typedef {import("./ojson.mjs").OJSONAny} OJSONAny */

/** @param {([string, OJSONAny] | null)[]} v  @param {boolean | undefined} m */
function Obj(v, m) {return new OJSONObject(v, m)}
/** @param {(OJSONAny | null)[]} v  @param {boolean | undefined} m */
function Arr(v, m) {return new OJSONArray(v, m)}
/** @param {[string, string | OJSONType][]} v */
function Typ(v) {return new OJSONType(v)}
/** @param {(OJSONAny | [string, OJSONAny] | null)[]} v */
function Mrg(v) {return new OJSONMerged(v)}

const type = {
  name: ["name", "string"],
  desc: ["description", "string"],
  author: ["author", "string"],
  authors: ["authors", "string[]"],
  author_or: ["author", "string <OR> authors: string[]"], // Cheeky hack, m8.
  version: ["version", "string"],
  color: ["color", "string"],
  bg: ["background", "unknown"], // Technically it is "string" but it does not do anything.
  id: ["id", "unknown"], // Technically it is "string" but it does not do anything.
  ascripts: ["autoScripts", "string[]"],
  aanims: ["autoAnims", "string[]"],
  igtex: ["ignoredTextures", "string[]"],
  c_remove: ["remove", "boolean"],
  c_visible: ["visible", "boolean"],
  c_ptype: ["parentType", "string"],
  c_moveto: ["moveTo", "string"],
  c_prender: ["primaryRenderType", "string"],
  c_srender: ["secondaryRenderType", "string"],
  c_smooth: ["smooth", "boolean"],

  custom: undefined,
  c_modelpart: undefined,
  custom_dot: ["customizations", "{...}"]
};

type.custom = ["customizations", Typ([
  type.c_modelpart = ["[partPath]", Typ([
    type.c_remove,
    type.c_visible,
    type.c_ptype,
    type.c_moveto,
    type.c_prender,
    type.c_srender,
    type.c_smooth
  ])]
])];

const snippet = {
  name: ["name", $P(1, "My Avatar")],
  desc: ["description", $P(2, "A very descriptive description.")],
  author: ["author", $P(3, "Username")],
  authors: ["authors", Arr([$P(3, "Username")], true)],
  version: ["version", $P(4, [
    "0.1.2", "0.1.1", "0.1.0",
    "0.1.0-rc.14", "0.1.0-rc.13", "0.1.0-rc.12", "0.1.0-rc.11", "0.1.0-rc.10", "0.1.0-rc.9",
    "0.1.0-rc.8", "0.1.0-rc.7", "0.1.0-rc.6", "0.1.0-rc.5", "0.1.0-rc.4", "0.1.0-rc.3", "0.1.0-rc.2", "0.1.0-rc.1",
    "0.1.0-pre.6", "0.1.0-pre.5"
  ])],
  color: ["color", $P(5, "#RRGGBB")],
  ascripts: ["autoScripts", Arr(["^$6"], true)],
  aanims: ["autoAnims", Arr(["^$7"], true)],
  igtex: ["ignoredTextures", Arr(["^$8"], true)],
  custom: ["customizations", "^{$9}"]
};

const TYPE_ALL = Typ([
  type.name, type.desc, type.author_or,
  type.version, type.color, type.bg, type.id,
  type.ascripts, type.aanims, type.igtex, type.custom
]);

const TYPE_ALL_AUTHOR = Typ([
  type.name, type.desc, type.author,
  type.version, type.color,
  type.ascripts, type.aanims, type.igtex, type.custom
])
const TYPE_ALL_AUTHORS = Typ([
  type.name, type.desc, type.authors,
  type.version, type.color,
  type.ascripts, type.aanims, type.igtex, type.custom
])

const SNIPPET_ALL_AUTHOR = Obj([
  snippet.name, snippet.desc, snippet.author,
  snippet.version, snippet.color,
  snippet.ascripts, snippet.aanims, snippet.igtex, snippet.custom
]);
const SNIPPET_ALL_AUTHORS = Obj([
  snippet.name,
  snippet.desc,
  snippet.authors,
  snippet.version,
  snippet.color,
  snippet.ascripts,
  snippet.aanims,
  snippet.igtex,
  snippet.custom
]);

const common = {
  t_boolean: ["type", "boolean"],
  t_number: ["type", "number"],
  t_string: ["type", "string"],
  t_array: ["type", "array"],
  t_object: ["type", "object"],

  pr_genericstring: [
    ["type", "string"],
    null,
    ["defaultSnippets", Arr([Obj([["body", "$1"]], true)], true)],
    null,
    ["minLength", 1],
    ["pattern", /[^ \f\n\r\t]/]
  ],

  ds_emptystring: Obj([["body", "$1"]])
};

const struct = {
  renderTypes: Arr([
    "NONE",
    Mrg(["CUTOUT", "CUTOUT_CULL", "TRANSLUCENT", "TRANSLUCENT_CULL"]),
    Mrg(["EMISSIVE", "EMISSIVE_SOLID", "EYES"]),
    Mrg(["END_PORTAL", "END_GATEWAY", "TEXTURED_PORTAL"]),
    Mrg(["GLINT", "GLINT2", "TEXTURED_GLINT"]),
    Mrg(["LINES", "LINES_STRIP"]),
    "SOLID",
    "BLURRY"
  ])
};


export default Obj([
  ["$schema", "http://json-schema.org/draft-07/schema"],
  null,
  ...mdD(
    "An avatar metadata object. Holds extra information about an avatar such as its name, author(s), color, and more.",
    false,
    TYPE_ALL
  ),
  null,
  common.t_object,
  null,
  ["defaultSnippets", Arr([
    Obj([
      ["label", "\u200B\u200B\u200B{}"],
      ["body", "^{$1}"],
      mdD("Start from scratch.", true, OJSON_EMPTYTYPE)
    ], true),
    Obj([
      ["label", "No metadata"],
      ["body", "^"],
      mdD("This file can be completely blank, it will treat it as if you don't want any data set.", true)
    ], true),
    Obj([
      ["label", "\u200BMinimum metadata, One author"],
      ["body", Obj([
        snippet.name,
        snippet.desc,
        snippet.author
      ])],
      mdD("Includes only the \"necessary\" data.", true, Typ([
        type.name,
        type.desc,
        type.author
      ]))
    ], true),
    Obj([
      ["label", "\u200BMinimum metadata, Several authors"],
      ["body", Obj([
        snippet.name,
        snippet.desc,
        snippet.authors
      ])],
      mdD("Includes only the \"necessary\" data.", true, Typ([
        type.name,
        type.desc,
        type.authors
      ]))
    ], true),
    Obj([
      ["label", "\u200B\u200BBasic metadata, One author"],
      ["body", Obj([
        snippet.name,
        snippet.desc,
        snippet.author,
        snippet.version,
        snippet.color
      ])],
      mdD("Includes some basic data such as the name, author, Figura version, and theme color.", true, Typ([
        type.name,
        type.desc,
        type.author,
        type.version,
        type.color
      ]))
    ], true),
    Obj([
      ["label", "\u200B\u200BBasic metadata, Several authors"],
      ["body", Obj([
        snippet.name,
        snippet.desc,
        snippet.authors,
        snippet.version,
        snippet.color
      ])],
      mdD("Includes some basic data such as the name, authors, Figura version, and theme color.", true, Typ([
        type.name,
        type.desc,
        type.authors,
        type.version,
        type.color
      ]))
    ], true),
    Obj([
      ["label", "\u200B\u200BFull metadata, One author"],
      ["body", SNIPPET_ALL_AUTHOR],
      mdD("Includes all possible data an avatar can have.", true, TYPE_ALL_AUTHOR)
    ], true),
    Obj([
      ["label", "\u200B\u200BFull metadata, Several authors"],
      ["body", SNIPPET_ALL_AUTHORS],
      mdD("Includes all possible data an avatar can have.", true, TYPE_ALL_AUTHORS)
    ], true)
  ])],
  null,
  ["definitions", Obj([
    ["customization", Obj([
      ...mdD("A customized part.", false, type.c_modelpart),
      null,
      common.t_object,
      null,
      ["properties", Obj([
        ["remove", Obj([
          ...mdD("Sets if this model part should be deleted before the avatar is created.", false, type.c_remove),
          null,
          common.t_boolean
        ])],
        null,
        ["visible", Obj([
          ...mdD(
            "Sets if this model part is visible by default.[p]\n" +
            "This is usually set by Blockbench, but can also be set here if you wish.",
            false, type.c_visible
          ),
          null,
          common.t_boolean
        ])],
        null,
        ["parentType", Obj([
          ...mdD(
            "The \"parent\" of this model part.[p]\n" +
            "This is usually set by keywords, but can also be set here if you wish.",
            false, type.c_ptype
          ),
          null,
          common.t_string,
          null,
          ["anyOf", Arr([
            Obj([["enum", Arr([
              "None",
              Mrg(["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"]),
              Mrg(["HelmetPivot", "ChestplatePivot", "LeftShoulderPivot", "RightShoulderPivot"]),
              Mrg(["LeggingsPivot", "LeftLeggingPivot", "RightLeggingPivot", "LeftBootPivot", "RightBootPivot"]),
              Mrg(["Cape", "LeftElytra", "RightElytra"]),
              Mrg(["LeftItemPivot", "RightItemPivot", "HelmetItemPivot"]),
              Mrg(["LeftSpyglassPivot", "RightSpyglassPivot"]),
              Mrg(["LeftParrotPivot", "RightParrotPivot"]),
              Mrg(["World", "Camera", "Hud"]),
              Mrg(["Skull", "Portrait"]),
              Mrg(["Arrow", "Item"])

            ])]], true),
            Obj([["pattern", enumRegex([
              "None", "NONE", "Model", "MODEL",
              "Head", "HEAD", "Body", "BODY", "LeftArm", "LEFT_ARM", "RightArm", "RIGHT_ARM", "LeftLeg", "LEFT_LEG",
              "RightLeg", "RIGHT_LEG",
              "HelmetPivot", "HELMET_PIVOT", "ChestplatePivot", "CHESTPLATE_PIVOT",
              "LeftShoulderPivot", "LEFT_SHOULDER_PIVOT", "RightShoulderPivot", "RIGHT_SHOULDER_PIVOT",
              "LeggingsPivot", "LEGGINGS_PIVOT", "LeftLeggingPivot", "LEFT_LEGGING_PIVOT",
              "RightLeggingPivot", "RIGHT_LEGGING_PIVOT", "LeftBootPivot", "LEFT_BOOT_PIVOT",
              "RightBootPivot", "RIGHT_BOOT_PIVOT",
              "Cape", "CAPE", "LeftElytra", "LEFT_ELYTRA", "LeftElytron", "LEFT_ELYTRON", "RightElytra", "RIGHT_ELYTRA",
              "RightElytron", "RIGHT_ELYTRON",
              "LeftItemPivot", "LEFT_ITEM_PIVOT", "RightItemPivot", "RIGHT_ITEM_PIVOT",
              "HelmetItemPivot", "HELMET_ITEM_PIVOT",
              "LeftSpyglassPivot", "LEFT_SPYGLASS_PIVOT", "RightSpyglassPivot", "RIGHT_SPYGLASS_PIVOT",
              "LeftParrotPivot", "LEFT_PARROT_PIVOT", "RightParrotPivot", "RIGHT_PARROT_PIVOT",
              "World", "WORLD", "Camera", "CAMERA", "Billboard", "BILLBOARD",
              "Hud", "HUD", "HeadsUpDisplay", "Gui", "GUI", "GraphicalUserInterface", "JraphicalUserInterface",
              "Skull", "SKULL", "☠️", "Portrait", "PORTRAIT",
              "Arrow", "ARROW", "Item", "ITEM"
            ])]], true)
          ])]
        ])],
        null,
        ["moveTo", Obj([
          ...mdD("Changes the parent model part of this model part.", false, type.c_moveto),
          null,
          common.t_string
        ])],
        null,
        ["primaryRenderType", Obj([
          ...mdD("The render type of the primary layer of this part."),
          null,
          common.t_string,
          null,
          ["enum", struct.renderTypes]
        ])],
        null,
        ["secondaryRenderType", Obj([
          ...mdD("The render type of the secondary (emissive) layer of this part."),
          null,
          common.t_string,
          null,
          ["enum", struct.renderTypes]
        ])]
      ])]
    ])]
  ])],
  null,
  ["properties", Obj([
    ["name", Obj([
      ...mdD(
        "The name of this avatar.[n]\n" +
        "If this does not exist, the folder's name is used as the avatar name.",
        false, type.name
      ),
      null,
      ...common.pr_genericstring
    ])],
    null,
    ["description", Obj([
      ...mdD("The description of this avatar. Appears under the avatar's name in the wardrobe.", false, type.desc),
      null,
      ...common.pr_genericstring
    ])],
    null,
    ["author", Obj([
      ...mdD(
        "The sole author of this avatar.[p]\n" +
        "If you wish to add multiple authors, see [c]authors[/c] instead.",
        false, type.author
      ),
      null,
      ...common.pr_genericstring
    ])],
    ["authors", Obj([
      ...mdD(
        "A list of this avatar's authors.[p]\n" +
        "If this avatar only has one author, you can also use [c]author[/c] instead.",
        false, type.authors
      ),
      null,
      common.t_array,
      null,
      ["minItems", 1],
      ["items", Obj(common.pr_genericstring)]
    ])],
    ["version", Obj([
      ...mdD(
        "The version of Figura this avatar is made for.[n]\n" +
        "If this does not exist, no version checking will be done.[p]\n" +
        "The version must be a valid semantic version.",
        false, type.version
      ),
      null,
      common.t_string,
      null,
      ["defaultSnippets", Arr([
        common.ds_emptystring,
        Obj([["label", "Figura 0.1.2                       (0.1.2)"      ], ["body", "0.1.2"      ]], true),
        Obj([["label", "Figura 0.1.1                       (0.1.1)"      ], ["body", "0.1.1"      ]], true),
        Obj([["label", "Figura 0.1.0                       (0.1.0)"      ], ["body", "0.1.0"      ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 14 (0.1.0-rc.14)"], ["body", "0.1.0-rc.14"]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 13 (0.1.0-rc.13)"], ["body", "0.1.0-rc.13"]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 12 (0.1.0-rc.12)"], ["body", "0.1.0-rc.12"]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 11 (0.1.0-rc.11)"], ["body", "0.1.0-rc.11"]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 10 (0.1.0-rc.10)"], ["body", "0.1.0-rc.10"]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 9  (0.1.0-rc.9)" ], ["body", "0.1.0-rc.9" ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 8  (0.1.0-rc.8)" ], ["body", "0.1.0-rc.8" ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 7  (0.1.0-rc.7)" ], ["body", "0.1.0-rc.7" ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 6  (0.1.0-rc.6)" ], ["body", "0.1.0-rc.6" ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 5  (0.1.0-rc.5)" ], ["body", "0.1.0-rc.5" ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 4  (0.1.0-rc.4)" ], ["body", "0.1.0-rc.4" ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 3  (0.1.0-rc.3)" ], ["body", "0.1.0-rc.3" ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 2  (0.1.0-rc.2)" ], ["body", "0.1.0-rc.2" ]], true),
        Obj([["label", "Figura 0.1.0, Release Candidate 1  (0.1.0-rc.1)" ], ["body", "0.1.0-rc.1" ]], true),
        Obj([["label", "Figura 0.1.0, Prerelease 6         (0.1.0-pre.6)"], ["body", "0.1.0-pre.6"]], true),
        Obj([["label", "Figura 0.1.0, Prerelease 5         (0.1.0-pre.5)"], ["body", "0.1.0-pre.5"]], true),
        Obj([["label", "Figura 0.1.0, Prerelease 4         (0.1.0-pre.4)"], ["body", "0.1.0-pre.4"]], true),
        Obj([["label", "Figura 0.1.0, Prerelease 3         (0.1.0-pre.3)"], ["body", "0.1.0-pre.3"]], true),
        Obj([["label", "Figura 0.1.0, Prerelease 2         (0.1.0-pre.2)"], ["body", "0.1.0-pre.2"]], true),
        Obj([["label", "Figura 0.1.0, Prerelease 1         (0.1.0-pre.1)"], ["body", "0.1.0-pre.1"]], true)
      ])],
      null,
      ["pattern", /^(0|[1-9]\d*)(\.(0|[1-9]\\d*)){0,2}(-(pre|rc)\.[1-9]\\d*)?(\+.+)?$/]
    ])],
    null,
    ["color", Obj([
      ...mdD(
        "The primary color of this avatar.[n]\n" +
        "Controls the color of the nameplate mark and the avatar info text color.[p]\n" +
        "Color can either be a special named color or a hex value. (The `#` is optional.)",
        false, type.color
      ),
      null,
      common.t_string,
      null,
      ["defaultSnippets", Arr([
        Obj([["label", "\"#...\""                    ], ["body", `#${$P(1, "RRGGBB")}`]], true),
        Obj([["label", "\"AWESOME_BLUE\" (#5EA5FF)"], ["body", "AWESOME_BLUE"                ]], true),
        Obj([["label", "\"PURPLE\"       (#A672EF)"], ["body", "PURPLE"                      ]], true),
        Obj([["label", "\"BLUE\"         (#00F0FF)"], ["body", "BLUE"                        ]], true),
        Obj([["label", "\"SOFT_BLUE\"    (#99BBEE)"], ["body", "SOFT_BLUE"                   ]], true),
        Obj([["label", "\"RED\"          (#FF2400)"], ["body", "RED"                         ]], true),
        Obj([["label", "\"ORANGE\"       (#FFC400)"], ["body", "ORANGE"                      ]], true),
        Obj([["label", "\"CHEESE\"       (#F8C53A)"], ["body", "CHEESE"                      ]], true),
        Obj([["label", "\"LUA_LOG\"      (#5555FF)"], ["body", "LUA_LOG"                     ]], true),
        Obj([["label", "\"LUA_ERROR\"    (#FF5555)"], ["body", "LUA_ERROR"                   ]], true),
        Obj([["label", "\"LUA_PING\"     (#A155DA)"], ["body", "LUA_PING"                    ]], true),
        Obj([["label", "\"DEFAULT\"      (#5AAAFF)"], ["body", "DEFAULT"                     ]], true),
        Obj([["label", "\"DISCORD\"      (#5865F2)"], ["body", "DISCORD"                     ]], true),
        Obj([["label", "\"KOFI\"         (#27AAE0)"], ["body", "KOFI"                        ]], true),
        Obj([["label", "\"GITHUB\"       (#FFFFFF)"], ["body", "GITHUB"                      ]], true),
        Obj([["label", "\"MODRINTH\"     (#1BD96A)"], ["body", "MODRINTH"                    ]], true),
        Obj([["label", "\"CURSEFORGE\"   (#F16436)"], ["body", "CURSEFORGE"                  ]], true),
        null,
        Obj([["label", "\"black\"        (#000000)"], ["body", "black"                       ]], true),
        Obj([["label", "\"dark_blue\"    (#0000AA)"], ["body", "dark_blue"                   ]], true),
        Obj([["label", "\"dark_green\"   (#00AA00)"], ["body", "dark_green"                  ]], true),
        Obj([["label", "\"dark_aqua\"    (#00AAAA)"], ["body", "dark_aqua"                   ]], true),
        Obj([["label", "\"dark_red\"     (#AA0000)"], ["body", "dark_red"                    ]], true),
        Obj([["label", "\"dark_purple\"  (#AA00AA)"], ["body", "dark_purple"                 ]], true),
        Obj([["label", "\"gold\"         (#FFAA00)"], ["body", "gold"                        ]], true),
        Obj([["label", "\"gray\"         (#AAAAAA)"], ["body", "gray"                        ]], true),
        Obj([["label", "\"dark_gray\"    (#555555)"], ["body", "dark_gray"                   ]], true),
        // Obj([["label", "\"blue\"         (#5555FF)"], ["body", "blue"                        ]], true),
        Obj([["label", "\"green\"        (#55FF55)"], ["body", "green"                       ]], true),
        Obj([["label", "\"aqua\"         (#55FFFF)"], ["body", "aqua"                        ]], true),
        // Obj([["label", "\"red\"          (#FF5555)"], ["body", "red"                         ]], true),
        Obj([["label", "\"light_purple\" (#FF55FF)"], ["body", "light_purple"                ]], true),
        Obj([["label", "\"yellow\"       (#FFFF55)"], ["body", "yellow"                      ]], true),
        Obj([["label", "\"white\"        (#FFFFFF)"], ["body", "white"                       ]], true)
      ])],
      null,
      ["anyOf", Arr([
        Obj([["pattern", /^#?[0-9A-Fa-f]{1,6}$$/]], true),
        Obj([["pattern", enumIRegex([
          "AWESOME_BLUE", "PURPLE", "BLUE", "SOFT_BLUE", "RED", "ORANGE", "CHEESE", "LUA_LOG", "LUA_ERROR", "LUA_PING",
          "DEFAULT", "DISCORD", "KOFI", "GITHUB", "MODRINTH", "CURSEFORGE",
          "black", "dark_blue", "dark_green", "dark_aqua", "dark_red", "dark_purple", "gold", "gray", "dark_gray",
          "green", "aqua", "light_purple", "yellow", "white"
        ])]], true)
      ])]
    ])],
    null,
    ["background", Obj([
      ...mdD("Does nothing... Yet.", false, type.bg),
      null,
      common.t_string,
      null,
      ["anyOf", Arr([
        Obj([["enum", Arr(["DEFAULT", "CHEESE", "CLOUDS", "COOKIE", "RAINBOW", "INSCRYPTION", "SPACE", "FADE"], true)]], true),
        Obj([["pattern", enumIRegex([
          "DEFAULT", "CHEESE", "CLOUDS", "COOKIE", "RAINBOW", "INSCRYPTION", "SPACE", "FADE"
        ])]], true)
      ])]
    ])],
    null,
    ["id", Obj([
      ...mdD("Does nothing... Yet.", false, type.id),
      null,
      common.t_string
    ])],
    null,
    ["autoScripts", Obj([
      ...mdD(
        "A list of relative paths to scripts the avatar should automatically execute.[n]\n" +
        "The scripts are executed in the order given.\n\n" +
        "If empty, no scripts are automatically executed.[n]\n" +
        "If this does not exist, all scripts are automatically executed in alphanumeric order.",
        false, type.ascripts
      ),
      null,
      common.t_array,
      null,
      ["uniqueItems", true],
      ["items", Obj(common.pr_genericstring)]
    ])],
    null,
    ["autoAnims", Obj([
      ...mdD(
        "A list of animations the avatar should automatically play.\n\n" +
        "If this is empty or does not exist, no animations are automatically played.",
        false, type.aanims
      ),
      null,
      common.t_array,
      null,
      ["uniqueItems", true],
      ["items", Obj(common.pr_genericstring)]
    ])],
    null,
    ["ignoredTextures", Obj([
      ...mdD(
        "A list of textures that should not be loaded by Figura.\n\n" +
        "Mainly used for special textures such as templates or guides.",
        false, type.igtex
      ),
      null,
      common.t_array,
      null,
      ["uniqueItems", true],
      ["items", Obj(common.pr_genericstring)]
    ])],
    null,
    ["customizations", Obj([
      ...mdD(
        "Contains a list of key-value pairs where the keys are paths to model parts (minus the starting " +
        "[c]models.[/c]) and the values are the starting customizations for that part.",
        false, type.custom
      ),
      null,
      common.t_object,
      null,
      ["defaultSnippets", Arr([
        Obj([["label", "{}"], ["body", "^{$1}"]], true),
        Obj([["label", "{...}"], ["body", Obj([
          [$P(1, "bbmodel_name.path.to.part"), "^$2"]
        ])]], true)
      ])],
      null,
      ["properties", Obj([
        ["bbmodel_name.path.to.part", Obj([["$ref", "#/definitions/customization"]], true)]
      ])],
      null,
      ["additionalProperties", Obj([["$ref", "#/definitions/customization"]], true)]
    ])]
  ])],
  null,
  ["anyOf", Arr([
    Obj([["not", Obj([["required", Arr(["author", "authors"], true)]], true)]], true),
    Obj([["oneOf", Arr([
      Obj([
        ["required", Arr(["author"], true)],
        ["not", Obj([["required", Arr(["authors"], true)]], true)]
      ], true),
      Obj([
        ["required", Arr(["authors"], true)],
        ["not", Obj([["required", Arr(["author"], true)]], true)]
      ], true),
    ])]], true)
  ])]
])
