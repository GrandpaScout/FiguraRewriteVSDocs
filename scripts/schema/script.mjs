import {mkdirSync} from "fs";
import {resolve} from "path";
import {outFile} from "../common.mjs";

import schema from "./schemaData.mjs";

const cwd = process.cwd();

mkdirSync(resolve(cwd, "./out"), {recursive: true});

outFile("avatar.schema.json", schema.stringify());
