import "dotenv/config";
import express from "express";
import path from "path";
import fileUpload from "express-fileupload";
import routerUser from "./routes/routerUser";
import routerAdmin from "./routes/routerAdmin";
import { createTables, fillTables } from "./services";
import { jobBackup, jobDeleteBook } from "./configurations/cron";
import pool from "./configurations/configConnectMySQL";

const app = express();

app.set("view engine", "ejs");

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "../static")));

app.use(fileUpload());

app.use(routerUser);
app.use("/admin", routerAdmin);

(async () => {
  try {
    await pool.getConnection();
    console.log("MySQL database is connected");
  } catch (error) {
    console.log("Error connecting to the MYSQL server: ", error);
  }
})();

(function startWork() {
  createTables();
  fillTables();

  jobBackup.start();
  jobDeleteBook.start();
})();

app.listen(process.env.PORT, () => {
  console.log("Server started at " + process.env.PORT);
});
