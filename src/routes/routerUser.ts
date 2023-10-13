import express from "express";
import ControllerUser from "../controllers/controllerUser";

const routerUser = express.Router();

routerUser
  .get("/", ControllerUser.getBooksByLimit)
  .get("/book/:id", ControllerUser.getBookById)
  .get("/book/wanted/:id", ControllerUser.incrementClicksWanted);

export default routerUser;
