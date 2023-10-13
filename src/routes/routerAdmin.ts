import "dotenv/config";
import express from "express";
import basicAuth from "express-basic-auth";
import ControllerAdmin from "../controllers/controllerAdmin";

const routerAdmin = express.Router();

const userAdmin: Record<string, string> = {
  admin: "1234",
};

routerAdmin.use(
  basicAuth({
    users: userAdmin,
    unauthorizedResponse: "Unauthorized",
    challenge: true,
  })
);

routerAdmin
  .get("/", ControllerAdmin.showBooksAdmin)
  .get("/logout", ControllerAdmin.logout)
  .post("/add", ControllerAdmin.addNewBook)
  .post("/delete/:id", ControllerAdmin.markBookAsDeleted)
  .post("/cancelDeleting/:id", ControllerAdmin.cancelDeletingBook);

export default routerAdmin;
