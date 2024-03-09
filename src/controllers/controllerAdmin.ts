import { Request, Response } from "express";
import { getCountAllBooks } from "../services";
import {
  marksAsDeleted,
  insertNewBook,
  cancelDeleting,
  getSearchedBooksFromDB,
  getBooksForAdminPage,
} from "../models/modelAdmin";

class ControllerAdmin {
  async showBooksAdmin(req: Request, res: Response) {
    let countOnPage = 6;
    let { search } = req.query;

    const currentPage = !req.query.page ? 1 : req.query.page;
    let offset = (+currentPage - 1) * countOnPage;

    const totalBooks = await getCountAllBooks();
    const numberOfPages = Math.ceil(totalBooks / countOnPage);

    if (+currentPage >= numberOfPages) {
      countOnPage = totalBooks - countOnPage * (numberOfPages - 1);
    }

    try {
      if (search) {
        let checkedSearch: string = search.toString().replace(/<\/*.*?>/gi, "");
        await getSearchedBooksFromDB(
          checkedSearch,
          countOnPage,
          numberOfPages,
          currentPage,
          res
        );
      } else {
        await getBooksForAdminPage(
          offset,
          countOnPage,
          totalBooks,
          numberOfPages,
          currentPage,
          res
        );
      }
    } catch (error) {
      console.log("Error database: " + error);
    }
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
