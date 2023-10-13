/**
 * Object 'queryString' is created to pass field values 
 ​* ​to methods for database manipulation.  
 */

const queryString = {
  getAllBooksAndAuthors: `SELECT books.*, GROUP_CONCAT(authors.author SEPARATOR ', ') as authorsNames 
    FROM book_author
    INNER JOIN books on book_author.book_id=books.id
    INNER JOIN authors on book_author.author_id=authors.id
    where books.deleted=0
    GROUP BY books.id;`,

  getCountBooksAndAuthors: `SELECT books.*, description_book.image, 
  GROUP_CONCAT(authors.author SEPARATOR ', ') as authorsNames
    FROM book_author
    INNER JOIN books on book_author.book_id=books.id
    INNER JOIN authors on book_author.author_id=authors.id
    INNER JOIN description_book on book_author.book_id=description_book.book_id
    where books.deleted=0
    GROUP BY books.id
    limit ? OFFSET 0;`,

  getBookByIdWithDescription: `SELECT books.*, 
    description_book.year_book, 
    description_book.pages,
    description_book.description,
    description_book.isbn,
    description_book.image,
    GROUP_CONCAT(authors.author SEPARATOR ', ') as authorsNames
    FROM book_author 
    INNER JOIN books on book_author.book_id=books.id
    INNER JOIN authors on book_author.author_id=authors.id
    INNER JOIN description_book on book_author.book_id=description_book.book_id
    where books.deleted=0 AND books.id=?;`,

  getDeletedBookById: `SELECT books.*, GROUP_CONCAT(authors.author SEPARATOR ', ') as authorsNames 
    FROM book_author
    INNER JOIN books on book_author.book_id=books.id
    INNER JOIN authors on book_author.author_id=authors.id
    where books.id=?;`,

  getBookById: `SELECT books.*, GROUP_CONCAT(authors.author SEPARATOR ', ') as authorsNames 
    FROM book_author
    INNER JOIN books on book_author.book_id=books.id
    INNER JOIN authors on book_author.author_id=authors.id
    where books.id=? and books.deleted=0;`,

  getSearchedBooks: `SELECT books.id, books.title, 
   description_book.image, 
  GROUP_CONCAT(authors.author SEPARATOR ', ')
    as authorsNames
    FROM book_author
    INNER JOIN books on book_author.book_id=books.id
    INNER JOIN authors on book_author.author_id=authors.id
    INNER JOIN description_book on book_author.book_id=description_book.book_id
    WHERE books.deleted=0 AND (books.title LIKE ? OR authors.author LIKE ?)
    GROUP BY books.id
    limit ? OFFSET 0;`,

  getBooksForAdminPage: `SELECT books.*, 
  description_book.year_book,
  description_book.clicks_wanted,
  description_book.image,
  GROUP_CONCAT(authors.author SEPARATOR ', ') as authorsNames
  FROM book_author
  INNER JOIN books on book_author.book_id=books.id
  INNER JOIN authors on book_author.author_id=authors.id
  INNER JOIN description_book on book_author.book_id=description_book.book_id
  where books.deleted=0
  GROUP BY books.id
  limit ? OFFSET ?;`,

  insertNewBookAndAuthor: `INSERT INTO books (title) VALUES (?);
  INSERT INTO authors (author) VALUES (?);`,

  insertNewAuthor: `INSERT INTO authors (author) VALUES (?);
  SELECT MAX(id) as max_author_id FROM authors;`,

  insertNewBook: `INSERT INTO books (title) VALUES (?)`,

  insertNewDescription: `INSERT INTO description_book 
  (book_id, year_book, pages, description, isbn)
  VALUES  (?, ?, ?, ?, ?);`,

  addBookAuthorRelation: `insert into book_author (book_id, author_id) 
  values (?, ?);`,

  selectMaxBookId: `SELECT MAX(id) as max_book_id FROM books;`,

  selectMaxAuthorId: `SELECT MAX(id) as max_author_id FROM authors;`,

  insertImage: `INSERT INTO description_book (image) VALUES (?)`,

  addImageToTable: `UPDATE description_book SET image=? WHERE book_id=?;`,

  markAsDeleted: `UPDATE books SET deleted=CURRENT_TIMESTAMP where id=?;`,

  cancelDeletingBook: `UPDATE books SET deleted=0 where id=?;`,

  incrementBookViews: `UPDATE description_book SET views = views + 1 WHERE book_id=?`,

  incrementClicksWanted: `UPDATE description_book SET clicks_wanted = clicks_wanted + 1 WHERE book_id=?`,

  selectBooksMarksAsDeleted: `SELECT * FROM books WHERE deleted!=0;`,

  deleteBooksMarksAsDeleted: `DELETE FROM description_book WHERE book_id=?; DELETE FROM book_author WHERE book_id=?; DELETE FROM books WHERE id=?;`,
};

export default queryString;
