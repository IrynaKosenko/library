CREATE TABLE IF NOT EXISTS books(
    id integer not null AUTO_INCREMENT primary key,
    title varchar(100) not null,
    deleted timestamp(1) default 0
);

CREATE TABLE IF NOT EXISTS authors(
    id integer not null AUTO_INCREMENT primary key,
    author varchar(100) not null
);

CREATE TABLE IF NOT EXISTS book_author(
    book_id integer NOT NULL,
    author_id integer NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (author_id) REFERENCES authors(id)
);

CREATE TABLE IF NOT EXISTS description_book (
    book_id integer NOT NULL primary key,
    year_book varchar(4) NOT NULL,
    pages integer NOT NULL,
    description varchar(2000),
    isbn varchar(20),
    views integer NOT null default 0,
    clicks_wanted integer NOT NULL default 0,
    image varchar(100)
);