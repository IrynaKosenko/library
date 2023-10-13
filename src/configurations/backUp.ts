import mysqldump from "mysqldump";
import path from "path";
import { getCurrentTime } from "../services";
import { configDB } from "./configConnectMySQL";

export default function backupDatabase() {
  mysqldump({
    connection: configDB,
    dumpToFile: path.resolve(
      __dirname,
      `../../mySQL/backUp/${getCurrentTime()}.sql`
    ),
  });
}
mysqldump;
