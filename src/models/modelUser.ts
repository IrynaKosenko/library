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
  const books = await pool.query<IBook[]>(queryString.getSearchedBooks, [
    "%" + search + "%",
    "%" + search + "%",
    +count,
  ]);
  res.render("books-page", {
    books: books[0],
    offset: offset,
    totalBooks: books[0].length,
    count: books[0].length,
    startCountBooks: books[0].length,
    search: search,
    host: process.env.HOME_HOST,
    title: "SHPP-library",
  });
}

export async function getCountBooksFromDB(count: any, res: Response) {
  let totalBooks = await getCountAllBooks();
  //console.log(totalBooks);
  const books = await pool.query<IBook[]>(queryString.getCountBooksAndAuthors, [+count]);
  //console.log(books[0]);
  res.render("books-page", {
    books: books[0],
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

export async function getBookByIdFromDB(bookId: string, res: Response) {
  await pool.query(queryString.incrementBookViews, bookId);

  const book = await pool.query(queryString.getBookByIdWithDescription, [
    bookId,
  ]);
  res.render("book-page", {
    book: book[0],
    title: "Book Page",
    search: "",
    host: process.env.HOME_HOST,
  });
}
export async function setIncreaseClicksWanted(bookId: string, res: Response) {
  await pool.query(queryString.incrementClicksWanted, bookId);
  res.status(200).json("Successfully increasing the number of clicks!");
}
