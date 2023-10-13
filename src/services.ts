import { IBook } from "./interfaces";
import queryString from "./queryStringSQL";
import pool from "./configurations/configConnectMySQL";
import fs from "fs";
import path from "path";

/* 
This method is designed to read .sql files 
and execute sql requests.
*/
export function readSqlFile(path: string): string {
  const queryStr: string = fs.readFileSync(path, "utf8");
  return queryStr;
}

/*
The method triggers the creating of tables for database
if they are not existed.
*/
export const createTables = async () => {
  const queryFromFile = readSqlFile(
    path.resolve(__dirname, "../mySQL/createTables.sql")
  );
  try {
    pool.query(queryFromFile, (err, rows) => {
      if (err) console.log(err.message);
    });
  } catch (error) {}
};
/*
The method triggers the filling of tables in the database
if they are not filled.
*/
export const fillTables = async () => {
  const queryFromFile = readSqlFile(
    path.resolve(__dirname, "../mySQL/fillTables.sql")
  );
  try {
    pool.query(queryFromFile, (err, rows) => {
      if (err) console.log(err.message);
    });
  } catch (error) {}
};
/** 
This method returns the total number of books in the database 
used to display page pagination.
*/
export const getCountAllBooks = async () => {
  const allBooks: Array<IBook> = await new Promise((resolve, reject) => {
    pool.query<IBook[]>(queryString.getAllBooksAndAuthors, (err, result) => {
      resolve(result);
    });
  });
  return allBooks.length;
};
/* 
This method returns the current time to generate the backup file name.
*/
export function getCurrentTime() {
  return new Date().getTime();
}

/* 
This method is designed to perform a final, 
complete removal of the book.
*/

export const deleteBooksFinal = async () => {
  const booksMarked = await pool
    .promise()
    .query(queryString.selectBooksMarksAsDeleted);

  const arrayBooksToDelete: IBook[] = JSON.parse(
    JSON.stringify(booksMarked)
  )[0];
  const arrayID: number[] = arrayBooksToDelete.map((elem) => elem.id);

  if (arrayID.length > 0) {
    arrayID.forEach((bookId) => {
      pool.query(
        queryString.deleteBooksMarksAsDeleted,
        [bookId, bookId, bookId],
        (err, row) => {
          if (err) console.log(err.message);
          console.log("deleted book: " + bookId);
        }
      );
    });
  } else {
    console.log("Nothing to delete.");
  }
};
