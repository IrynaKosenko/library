/**
 * This file describes the methods used to access
 * and manipulate the database and send a response to the user.
 */
import { Response } from "express";
import pool from "../configurations/configConnectMySQL";
import { IBook } from "../interfaces";
import queryString from "../queryStringSQL";
import { getCountAllBooks } from "../services";

export async function getSearchedBooksFromDB(
  search: any,
  offset: any,
  count: any,
  res: Response
) {
  pool.query<IBook[]>(
    queryString.getSearchedBooks,
    ["%" + search + "%", "%" + search + "%", +count],
    (err, books) => {
      if (err) {
        console.log(err.message);
      } else {
        res.render("books-page", {
          books: books,
          offset: offset,
          totalBooks: books.length,
          count: books.length,
          startCountBooks: books.length,
          search: search,
          host: process.env.HOME_HOST,
          title: "SHPP-library",
        });
      }
    }
  );
}

export async function getCountBooksFromDB(count: any, res: Response) {
  let totalBooks = await getCountAllBooks();
  pool.query<IBook[]>(
    queryString.getCountBooksAndAuthors,
    [+count],
    (err, books) => {
      if (err) {
        console.log(err.message);
      } else {
        res.render("books-page", {
          books: books,
          offset: 0,
          count: count,
          startCountBooks: 20,
          step: 10,
          totalBooks: totalBooks,
          search: "",
          host: process.env.HOME_HOST,
          title: "SHPP-library",
        });
      }
    }
  );
}

export async function getBookByIdFromDB(bookId: string, res: Response) {
  pool.query(queryString.incrementBookViews, bookId, (err, row) => {
    if (err) console.log(err);
    else {
      pool.query(
        queryString.getBookByIdWithDescription,
        [bookId],
        (err, book) => {
          if (err) {
            console.log(err.message);
          } else {
            res.render("book-page", {
              book: book,
              title: "Book Page",
              search: "",
              host: process.env.HOME_HOST,
            });
          }
        }
      );
    }
  });
}
export async function setIncreaseClicksWanted(bookId: string, res: Response) {
  pool.query(queryString.incrementClicksWanted, bookId, (err, row) => {
    if (err) console.log(err);
    else {
      res.status(200).json("Successfully increasing the number of clicks!");
    }
  });
}
