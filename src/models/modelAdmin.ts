/**
 * This file describes the methods used to access
 * and manipulate the database and send a response to the admin.
 */
import { Response } from "express";
import pool from "../configurations/configConnectMySQL";
import { IBook } from "../interfaces";
import queryString from "../queryStringSQL";
import fileUpload from "express-fileupload";
import path from "path";

export async function marksAsDeleted(id: string, res: Response) {
  pool.query(queryString.markAsDeleted, id, (err, row) => {
    if (err) console.log(err);
    else {
      pool.query<IBook[]>(queryString.getDeletedBookById, id, (err, book) => {
        res.send(book[0]);
      });
    }
  });
}

export async function insertNewBook(
  title: string,
  authors: string | string[],
  yearBook: string,
  pages: number,
  description: string,
  isbn: string,
  files: any,
  res: Response
) {
  if (Array.isArray(authors)) {
    pool.query(queryString.insertNewBook, title, async () => {
      let maxBookId = await getMaxBookId();
      addCountAuthors(authors, maxBookId);
      insertDescription(maxBookId, yearBook, pages, description, isbn);
      downloadImage(files, res, maxBookId);
    });
  } else {
    pool.query(
      queryString.insertNewBookAndAuthor,
      [title, authors],
      async (err, books) => {
        if (err) {
          console.log(err.message);
        } else {
          let maxBookId = await getMaxBookId();
          let maxAuthorId = await getMaxAuthorId();
          addRelations(maxBookId, maxAuthorId);
          insertDescription(maxBookId, yearBook, pages, description, isbn);
          downloadImage(files, res, maxBookId);
        }
      }
    );
  }
}

async function addCountAuthors(authors: string | string[], maxBookId: number) {
  for (let i = 0; i < authors.length; i++) {
    pool.query<IBook[]>(
      queryString.insertNewAuthor,
      [authors[i]],
      async (err, row) => {
        if (err) console.log(err);
        let maxAuthorId = row[0]["insertId"];
        addRelations(maxBookId, maxAuthorId);
      }
    );
  }
}

async function insertDescription(
  maxBookId: number,
  yearBook: string,
  pages: number,
  description: string,
  isbn: string
) {
  const dataFromQuery = [maxBookId, yearBook, pages, description, isbn];
  pool.query(queryString.insertNewDescription, dataFromQuery);
}

async function getMaxBookId() {
  const lastBookId = await pool.promise().query(queryString.selectMaxBookId);
  let maxBookId = JSON.parse(JSON.stringify(lastBookId))[0][0].max_book_id;
  return maxBookId;
}

async function getMaxAuthorId() {
  const lastAuthorId = await pool
    .promise()
    .query(queryString.selectMaxAuthorId);
  let maxAuthorId = JSON.parse(JSON.stringify(lastAuthorId))[0][0]
    .max_author_id;
  return maxAuthorId;
}
async function addRelations(maxBookId: number, maxAuthorId: number) {
  pool.query(queryString.addBookAuthorRelation, [maxBookId, maxAuthorId]);
}

async function downloadImage(files: any, res: Response, maxBookId: number) {
  let file;
  let uploadPath;

  if (!files || Object.keys(files).length === 0) {
    console.error("No files");
    return;
  }

  // input field 'name' in form is 'imageInput'
  file = files.imageInput as fileUpload.UploadedFile;
  const nameFile = file.name;
  let index = nameFile.lastIndexOf(".");
  const fileExtension = nameFile.slice(index);
  const newNameFile = maxBookId + fileExtension;

  uploadPath = path.join(__dirname, "../../static/images/") + newNameFile;

  // Use the mv() method to place the file somewhere on your server
  file.mv(uploadPath, function (err) {
    if (err) {
      console.log(err);
      return res.status(500);
    } else {
      pool.query(queryString.addImageToTable, [newNameFile, maxBookId]);
    }
  });
}
export async function cancelDeleting(id: string) {
  pool.query(queryString.cancelDeletingBook, id, (err, row) => {
    if (err) console.log(err);
  });
}
