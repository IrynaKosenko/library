import { CronJob } from "cron";
import backupDatabase from "./backUp";
import { deleteBooksFinal, getCurrentTime } from "../services";
import fs from "fs";

export const jobBackup = new CronJob("00 00 22 * * *", function () {
  backupDatabase();
  fs.appendFile(
    "logs.txt",
    `Back up database: ${new Date()}   Path: ../../mySQL/backUp/${getCurrentTime()}.sql\n`,
    (err) => {
      if (err) {
        fs.appendFile(
          "logs.txt",
          `Backup error: ${err.message} ${new Date()}\n`,
          (err) => {}
        );
      }
    }
  );
});

export const jobDeleteBook = new CronJob("00 05 21 * * 1", function () {
  deleteBooksFinal();

  fs.appendFile("logs.txt", `Final delete books at ${new Date()}\n`, (err) => {
    if (err) {
      fs.appendFile(
        "logs.txt",
        `Deleted error: ${err.message} ${new Date()}\n`,
        (err) => {}
      );
    }
  });
  console.log("job delete book");
});
