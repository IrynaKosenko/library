import { Request, Response } from "express";
import {
  getSearchedBooksFromDB,
  getCountBooksFromDB,
  getBookByIdFromDB,
  setIncreaseClicksWanted,
} from "../models/modelUser";

class ControllerUser {
  async getBooksByLimit(req: Request, res: Response) {
    let { offset, count, search } = req.query;
    if (!offset) offset = "0";
    if (!count) count = "20";
    try {
      if (search) {
        let checkedSearch: string = search.toString().replace(/<\/*.*?>/gi, "");
        await getSearchedBooksFromDB(checkedSearch, offset, count, res);
      } else {
        await getCountBooksFromDB(count, res);
      }
    } catch (error) {
      res.status(500).send("Unexpected database error");
    }
  }

  async getBookById(req: Request, res: Response) {
    const bookId = req.params.id;
    let { offset, count, search } = req.query;
    if (!offset) offset = "0";
    if (!count) count = "20";
    try {
      if (search) {
        let checkedSearch: string = search.toString().replace(/<\/*.*?>/gi, "");
        await getSearchedBooksFromDB(checkedSearch, offset, count, res);
      } else {
        await getBookByIdFromDB(bookId, res);
      }
    } catch (error) {
      res.status(500).json({ error: "Error increasing the number of views" });
    }
  }

  async incrementClicksWanted(req: Request, res: Response) {
    const bookId = req.params.id;
    try {
      await setIncreaseClicksWanted(bookId, res);
    } catch (error) {
      res.status(500).json({ error: "Error increasing the number of clicks" });
    }
  }
}

export default new ControllerUser();
