import { Request, Response } from "express";
import pool from "../configurations/configConnectMySQL";
import { IBook } from "../interfaces";
import { getCountAllBooks } from "../services";
import queryString from "../queryStringSQL";
import {
  marksAsDeleted,
  insertNewBook,
  cancelDeleting,
} from "../models/modelAdmin";

class ControllerAdmin {
  async showBooksAdmin(req: Request, res: Response) {
    let countOnPage = 6;

    const currentPage = !req.query.page ? 1 : req.query.page;
    let offset = (+currentPage - 1) * countOnPage;

    const totalBooks = await getCountAllBooks();
    const numberOfPages = Math.ceil(totalBooks / countOnPage);

    if (+currentPage >= numberOfPages) {
      countOnPage = totalBooks - countOnPage * (numberOfPages - 1);
    }

    const books = await pool.query<IBook[]>(
      queryString.getBooksForAdminPage,
      [countOnPage, offset]
      // (err, books) => {
      //   if (err) {
      //     console.log(err.message);
      //   } else {
      //     res.render("admin", {
      //       books: books,
      //       offset: offset,
      //       limit: countOnPage,
      //       host: process.env.HOME_HOST,
      //       title: "Admin Page",
      //       totalBooks: totalBooks,
      //       numberOfPages: numberOfPages,
      //       currentPage: currentPage,
      //     });
      //   }
      // }
    );
    res.render("admin", {
      books: books,
      offset: offset,
      limit: countOnPage,
      host: process.env.HOME_HOST,
      title: "Admin Page",
      totalBooks: totalBooks,
      numberOfPages: numberOfPages,
      currentPage: currentPage,
    });
  }

  async addNewBook(req: Request, res: Response) {
    const { title, author, yearBook, pages, description, isbn } = req.body;
    let checkedTitle = title.toString().replace(/<\/*.*?>/gi, "");
    let arrayAuthors = author;
    if (author.toString().includes(",")) {
      arrayAuthors = author
        .split(",")
        .map((el: string) => el.replace(/<\/*.*?>|<*|>*/gim, ""));
    }
    let checkedDescription = description.toString().replace(/<\/*.*?>/gi, "");
    const files = req.files;
    console.log(arrayAuthors);
    await insertNewBook(
      checkedTitle,
      arrayAuthors,
      yearBook,
      pages,
      checkedDescription,
      isbn,
      files,
      res
    );
    res.status(200).redirect("./");
  }

  async logout(req: Request, res: Response) {
    res.status(401).json({ message: "Log Out successfully" });
  }

  async markBookAsDeleted(req: Request, res: Response) {
    const { id } = req.params;
    await marksAsDeleted(id, res);
  }

  async cancelDeletingBook(req: Request, res: Response) {
    const { id } = req.params;
    await cancelDeleting(id);
  }
}

export default new ControllerAdmin();
