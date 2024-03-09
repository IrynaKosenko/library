/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: authors
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 130 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: book_author
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `book_author` (
  `book_id` int NOT NULL,
  `author_id` int NOT NULL,
  KEY `book_id` (`book_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: books
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `deleted` timestamp(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 104 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: description_book
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `description_book` (
  `book_id` int NOT NULL,
  `year_book` varchar(4) NOT NULL,
  `pages` int NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `views` int NOT NULL DEFAULT '0',
  `clicks_wanted` int NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: authors
# ------------------------------------------------------------

INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (1, 'З.Шпак');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (2, 'Марк Саммерфильд');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (3, 'M. Вильямс');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (4, 'Уэс Маккинни');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (5, 'Брюс Эккель');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (6, 'Томас Кормен');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (7, 'Чарльз Лейзерсон');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (8, 'Рональд Ривест');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (9, 'Клиффорд Штайн');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (10, 'Дэвид Флэнаган');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (11, 'Гэри Маклин Холл');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (12, 'Джеймс P. Грофф');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (13, 'Люк Веллинг');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (14, 'Джон Вудкок');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (15, 'Джереми Блум');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (16, 'А.Белов');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (17, 'Сэмюэл Грингард');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (18, 'Сет Гринберг');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (19, 'Александр Сераков');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (20, 'Пол Дейтел');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (21, 'Харви Дейтел');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (22, 'Роберт Мартин');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (23, 'Энтони Грей');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (24, 'Мартин Фаулер');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (25, 'Прамодкумар Дж. Садаладж');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (26, 'Джей Макгаврен');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (27, 'Дрю Нейл');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (28, 'Сергей Мастицкий');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (29, 'Тим Кедлек');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (30, 'Бріґґс Джейсон Р.');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (31, 'Олексій Васильєв');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (32, 'Кейт О Ніл');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (33, 'Пол Беррі');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (34, 'Кеті Сьєрра');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (35, 'Берт Бейтс');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (36, 'Johan Aludden');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (37, 'Federica Gambel');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (38, 'Viviana Figus');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (39, 'Federico Vagliasindi');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (40, 'Ерiк Фрiмен');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (41, 'Елiзабет Робсон');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (42, 'Nathan Clark');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (43, 'Jamie Chan');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (53, 'Evans Eric');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (55, 'Aurélien Géron');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (56, 'Ronald L. Rivest');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (57, 'Charles E. Leiserson');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (58, 'Clifford Stein');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (59, 'Thomas H. Cormen');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (127, 'James Clear');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (128, 'Gabriela Moya ');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (129, 'Wes McKinney ');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: book_author
# ------------------------------------------------------------

INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (22, 1);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (23, 2);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (26, 4);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (27, 5);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 6);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 7);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 8);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (29, 9);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (31, 10);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (32, 11);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (33, 12);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (34, 13);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (35, 28);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (36, 14);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (37, 15);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (38, 16);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (39, 17);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (41, 19);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (42, 29);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 20);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (43, 21);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (44, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (45, 23);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 24);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (46, 25);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (47, 26);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (48, 27);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (49, 30);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (50, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (51, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (52, 31);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (53, 32);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (54, 22);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (55, 33);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 35);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (56, 34);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 36);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 37);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 39);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (57, 38);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 40);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (58, 41);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (25, 3);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (40, 18);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (59, 42);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (60, 43);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (70, 53);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (71, 55);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 56);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 57);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 58);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (72, 59);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 127);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (102, 128);
INSERT INTO
  `book_author` (`book_id`, `author_id`)
VALUES
  (103, 129);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: books
# ------------------------------------------------------------

INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    22,
    'Книга Програмування мовою С',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    23,
    'Программирование на языке Go!',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    25,
    'Толковый словарь сетевых терминов и аббревиатур',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    26,
    'Python for Data Analysis',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    27,
    'Thinking in Java (4th Edition)',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    29,
    'Introduction to Algorithms',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    31,
    'JavaScript Pocket Reference',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    32,
    'Adaptive Code via C#: Class and Interface Design, Design Patterns, and SOLID Principles',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    33,
    'SQL: The Complete Reference',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    34,
    'PHP and MySQL Web Development',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    35,
    'Статистический анализ и визуализация данных с помощью R',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    36,
    'Computer Coding for Kid',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    37,
    'Exploring Arduino: Tools and Techniques for Engineering Wizardry',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    38,
    'Программирование микроконтроллеров для начинающих и не только',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    39,
    'The Internet of Things',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    40,
    'Sketching User Experiences: The Workbook',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (41, 'InDesign CS6', '0000-00-00 00:00:00.0');
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    42,
    'Адаптивный дизайн. Делаем сайты для любых устройств',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    43,
    'Android для разработчиков',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    44,
    'Clean Code: A Handbook of Agile Software Craftsmanship',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    45,
    'Swift Pocket Reference: Programming for iOS and OS X',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    46,
    'NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (47, 'Head First Ruby', '0000-00-00 00:00:00.0');
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (48, 'Practical Vim', '0000-00-00 00:00:00.0');
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    49,
    'PYTHON для дітей. Веселий вступ до програмування',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    50,
    'Програмування мовою Java',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    51,
    'Чистий AGILE. Назад до основ',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    52,
    'Програмування мовою Python',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    53,
    'BIG DATA. Зброя математичного знищення. Як великі дані збільшують нерівність і загрожують демократії',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (54, 'Чиста архітектура', '0000-00-00 00:00:00.0');
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    55,
    'Head First. Python. Легкий для сприйняття довідник',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (56, 'Head First. Java', '0000-00-00 00:00:00.0');
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    57,
    'Програмування для дітей: Створюй анімації за допомогою Скретч',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    58,
    'Head First. Патерни проєктування',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    59,
    'Computer Programming for Beginners: Fundamentals of Programming Terms and Concepts Kindle Edition',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    60,
    'C#: Learn C# in One Day and Learn It Well. C# for Beginners with Hands-on Project',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    70,
    'Domain-Driven Design: Tackling Complexity in the Heart of Software',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    71,
    'Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow ',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    72,
    'Introduction to Algorithms',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    102,
    'Hábitos atómicos: Cambios pequeños, resultados extraordinarios (Autoconocimiento) (Spanish Edition) ',
    '0000-00-00 00:00:00.0'
  );
INSERT INTO
  `books` (`id`, `title`, `deleted`)
VALUES
  (
    103,
    'Python for Data Analysis',
    '0000-00-00 00:00:00.0'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: description_book
# ------------------------------------------------------------

INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    22,
    '2011',
    436,
    'Навчальний посібник достатньо ґрунтовно охоплює різні аспекти програмування мовою С. У початкових розділах розглянуто синтаксис та семантику всіх конструктивних компонентів мови: лексем, виразів, операторів, функцій. Значну увагу приділено різновидам стандартних і користувацьких типів даних, зокрема опрацюванню масивів, символьних рядків, структур тощо. Другу половину посібника присвячено програмним реалізаціям практичних задач, серед яких створення і застосування лінійних динамічних списків і двійкових дерев, організація обміну даними з файлами і редагування їхнього вмісту, керування екранними зображеннями та інші. У додатках подано повні описи функцій з основних бібліотек С. Викладений матеріал базується на стандарті ANSI/ISO мови С, водночас зазначено зміни та доповнення, затверджені в стандарті С 1999 р. Наведено важливу для практичного програмування інформацію про додаткові можливості компілятора, середовища та бібліотек Borland С/C++. Для студентів, які вивчають програмування у межах різних навчальних дисциплін, а також для всіх, хто бажає глибоко опанувати мову С. Рекомендувало Міністерство освіти і науки України як навчальний посібник.',
    '978-617-607-104-4',
    0,
    0,
    '22.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    23,
    '2016',
    550,
    'Перед вами практическое руководство по Go, революционно новому языку программирования со встроенной поддержкой параллельного программирования, который упрощает разработку программ для многопроцессорных систем. На данный момент, Go – самый превосходный из новых языков программирования. Он изначально создавался, дабы помочь задействовать полную мощь современных многоядерных процессоров. В данном руководстве первопроходец языка Go Марк Саммерфильд расказывает, каким образом писать программы, в полной мере применяющие его революционные возможности и идиомы . Будучи в то же время и учебником, и справочником, книга «Программирование на языке Go» объединяет в себе все сведения, которые понадобятся, для того чтобы продолжить изучение Go, думать на Go и создавать высокопроизводительные программы на Go. Саммерфильд приводит массу сравнений идиом программирования, показывая преимущества Go перед более давними языками, уделяя особенное внимание ключевым инновациям. Заодно, начиная с самых начал, он объясняет все аспекты параллельного программирования на языке Go с использованием каналов и без применения блокировок, а также гибкость и необычность подхода к объектно-ориентированному программированию с использованием механизма динамической типизации.',
    '978-5-97060-338-3',
    0,
    0,
    '23.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    25,
    '2002',
    368,
    'Этот словарь представляет собой наиболее полное и свежее собрание терминов и аббревиатур, которые применяются в области сетевых технологий. В первой части собраны стандартные термины, широко используемые в области межсетевых взаимодействий, а во второй - специфические термины, характерные только для Cisco Systems и Cisco IOS. Он станет практичным и удобным справочником для всех специалистов в области сетевых технологий, который будет незаменим как при чтении вступительных обзоров общего характера, так и при изучении специализированных технических руководств.',
    '5-8459-0245-2',
    0,
    0,
    '25.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    26,
    '2012',
    432,
    'Python для аналізу даних займається маніпулюванням, обробкою, очищенням і обробкою даних у Python. Це також практичний, сучасний вступ до наукових обчислень на Python, розроблений для програм, що інтенсивно обробляють дані. Це книга про частини мови Python і бібліотеки, які знадобляться вам для ефективного вирішення широкого кола проблем аналізу даних. Ця книга не є викладом аналітичних методів, які використовують Python як мову реалізації.',
    '99781449319793',
    0,
    0,
    '26.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    27,
    '2022',
    1168,
    'Книга,яка витримала в оригіналі не одне перевидання, за повне і філософський виклад всіх аспектів мови Java вважається одним з найкращих посібників для програмістів. Для того щоб по-справжньому осягнути мову Java, потрібно розглядати його як комплект якихось команд і операторів, а осягнути його «філософію», підхід до вирішення завдань, в порівнянні з подібними в інших мовах програмування. На сторінках цього видання автор розповідає про головні проблеми написання коду: в чому їх єство і який підхід використовує Java у їх вирішенні . Тому риси мови які розглядаються в кожній главі нерозривно пов\'язані з тим, яким чином вони застосовуються для вирішення певних завдань.',
    '978-5-4461-1107-7',
    0,
    0,
    '27.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    29,
    '2019',
    1288,
    'Вступ до алгоритмів (англ. Introduction to Algorithms) — книга, яку написали Томас Кормен, Чарльз Лейзерсон, Рональд Рівест і Кліффорд Стайн. Її використовують як підручник для курсів з теорії алгоритмів у багатьох університетах і часто цитують в документах у цій галузі, наразі більше 6600 цитувань задокументованих на CiteSeerX. Продажі книги впродовж перших 20 років сягли півмільйона копій. Її слава призвела до появи позначення «CLRS» (Cormen, Leiserson, Rivest, Stein).\r\nДеякі книжки з алгоритмів строгі, але неповні, інші охоплюють масу матеріалу, але їм бракує строгості. «Вступ до алгоритмів» унікально поєднує строгість і всебічність. Книжка детально охоплює широкий спектр алгоритмів, при цьому їх побудова й аналіз доступні для читачів усіх рівнів. Кожен розділ відносно самодостатній і може бути осібною одиницею вивчення. Алгоритми описані звичайною мовою і псевдокодом, щоб міг читати будь-хто, хто хоч трохи програмує. Пояснення залишилися елементарними без шкоди для глибини охоплення чи математичної строгості.',
    '9786176842392',
    0,
    0,
    '29.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    31,
    '2015',
    320,
    'JavaScript - популярнейший язык программирования, который уже более 15 лет применяется для написания сценариев интерактивных веб-страниц. В книге представлены самые важные сведения о синтаксисе языка и показаны примеры его практического применения. Несмотря на малый объем карманного издания, в нем содержится все, что необходимо знать для разработки профессиональных веб-приложений. Главы 1-9 посвящены описанию синтаксиса последней версии языка JavaScript (спецификация ECMAScript 5).',
    '978-5-907144-34-7',
    0,
    0,
    '31.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    32,
    '2014',
    432,
    'Your process may be agile, but are you building agility directly into the code base? This book teaches .NET programmers how to give code the flexibility to adapt to changing requirements and customer demands by applying cutting-edge techniques, including SOLID principles, design patterns, and other industry best practices.',
    '9780735683204',
    0,
    0,
    '32.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    33,
    '2015',
    960,
    'Эта книга расскажет вам, как работать с командами и инструкциями SQL, создавать и настраивать реляционные базы данных, загружать и модифицировать объекты баз данных, выполнять мощные запросы, повышать производительность и выстраивать систему безопасности. Вы узнаете, как использовать инструкции DDL и применять API, интегрировать XML и сценарии Java, использовать объекты SQL, создавать веб-серверы, работать с удаленным доступом и выполнять распределенные транзакции. В этой книге вы найдете такие сведения, как описания работы с базами данных в памяти, потоковыми и встраиваемыми базами данных, базами данных для мобильных и наладонных устройств, и многое другое.',
    '978-0-07-159255-0',
    0,
    0,
    '33.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    34,
    '2017',
    768,
    'Исчерпывающее учебное пособие по разработке веб-приложений, управляемых базами данных, с использованием PHP и MySQL! Эта книга предназначена для тех, кто знаком с основами HTML и ранее разрабатывал программы на современных языках программирования, но, возможно, не занимался программированием для Веб или не использовал реляционные базы данных. В ней подробно описано применение последних версий PHP и MySQL для построения крупных коммерческих Web-сайтов. Основное внимание в книге уделено реальным приложениям. Здесь рассматриваются как простые интерактивные системы приема заказов, так и различные аспекты электронных систем продажи и безопасности во взаимосвязи с созданием реального Web-сайта. Подробно описаны все стадии разработки множества типовых проектов на PHP и MySQL, в числе которых служба веб-почты, приложение поддержки Web-форумов и электронный книжный магазин. Заслуживают особого внимания главы, посвященные объектно-ориентированному программированию на PHP, динамической генерации документов, доступу к веб-службам с помощью XML и SOAP и созданию приложений Web 2.0 с помощью Ajax.',
    '978-5-9908911-9-7',
    0,
    0,
    '34.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    35,
    '2014',
    496,
    'Сегодня язык R является безусловным лидером среди свободно распространяемых систем статистического анализа. Ведущие университеты мира, аналитики крупнейших компаний и исследовательских центров регулярно используют R при проведении научно-технических расчетов и создании крупных информационных проектов. Широкое преподавание статистики на базе этой системы и всемерная поддержка научным сообществом обусловили то, что приведение скриптов кода па языке R постепенно становится общепризнанным стандартом как в журнальных публикациях, так и при неформальном общении ученых всего мира.',
    '978-5-97060-301-7',
    0,
    0,
    '35.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    36,
    '2019',
    222,
    'If you like playing computer games, why not make your own? This book has all you need to build amazing games, including thrilling racing challenges, zany platform games, and fiendish puzzles.',
    '9780241317747',
    0,
    0,
    '36.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    37,
    '2013',
    384,
    'Learn to easily build gadgets, gizmos, robots, and more using Arduino Written by Arduino expert Jeremy Blum, this unique book uses the popular Arduino microcontroller platform as an instrument to teach you about topics in electrical engineering, programming, and human–computer interaction. Whether you′re a budding hobbyist or an engineer, you′ll benefit from the perfectly paced lessons that walk you through useful, artistic, and educational exercises that gradually get more advanced.',
    '9780241317747',
    0,
    0,
    '37.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    38,
    '2016',
    352,
    'Вы хотите научиться разрабатывать самостоятельно интересные устройства на микроконтроллерах? Хотите легко научиться придумывать схемы и писать программы? Тогда эта книга для вас! Новейший самоучитель позволит уверенно пройти путь от уровня, получившего меткое название чайник, до вполне готового специалиста, умеющего самостоятельно разрабатывать готовые работоспособные микроэлектронные устройства. Процесс освоения начинается с азов цифровой техники (базовые элементы цифровой логики, теория цифрового сигнала, основы Булевой Алгебры, системы исчисления и т.п.). Следуя постепенно от простого к сложному, вы изучите основы микропроцессорной техники, возможности семейства микроконтроллеров на примере AVR. Ну и, наконец, вы освоите основы схемотехники и конструирования микроэлектронных устройств. Книга позволит изучить сразу два языка программирования для микроконтроллеров (язык Ассемблера и язык СИ).',
    '978-5-94387-867-1',
    0,
    0,
    '38.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    39,
    '2018',
    176,
    'Уявіть собі світ, де завдяки спеціальним автоматизованим пристроям, що слідкують за безпекою на дорозі, більше немає автокатастроф. Уявіть, що відтепер порятунком людей займаються дрони, а найскладніші лікарські операції проводяться дистанційно. Усю рутинну роботу виконують роботи, а людина займається улюбленими справами. Фантастика? Ні, це реальність, яку пропонує нам Інтернет речей — тренд сучасності і перспектива найближчого майбутнього. У книжці автор знайомить читача зі світом технологій майбутнього, найновішими розробками й різноманітними ноу-хау, які зроблять життя максимально комфортним. Та паралельно Семюель Грінгард прораховує всі ризики й небезпеки цього ідеального техносвіту: комп’ютерні злочини, кібертероризм і мережева зброя, тотальний контроль та загроза приватному життю людини. Ця захоплива наукова розвідка — справжня подорож до майбутнього! А мріяти про нього чи боятися - віршувати вам. Джерело: https://nashformat.ua/products/internet-rechej-904794',
    '978-617-12-4657-7',
    0,
    0,
    '39.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    40,
    '2011',
    272,
    'Sketching Working Experience: The Workbook provides information about the step-by-step process of the different sketching techniques. It offers methods called design thinking, as a way to think as a user, and sketching, a way to think as a designer. User-experience designers are designers who sketch based on their actions, interactions, and experiences. The book discusses the differences between the normal ways to sketch and sketching used by user-experience designers. It also describes some motivation on why a person should sketch and introduces the sketchbook. The book reviews the different sketching methods and the modules that contain a particular sketching method. It also explains how the sketching methods are used.',
    '9780123819611',
    0,
    0,
    '40.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    41,
    '2013',
    208,
    'Новая версия программы InDesign CS6 принесла и новые возможности. Но ими, как и теми, что были в более ранних версиях программы, надо уметь пользоваться. И, прочтя эту книгу, вы сможете это делать в полной мере. Описанные в книге примеры и методы помогут вам решать свои собственные задачи, а опыт, накопленный авторами за долгие годы работы с InDesign, станет отличным подспорьем для достижения поставленных целей.',
    '978-5-699-57904-4',
    0,
    0,
    '41.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    42,
    '2013',
    288,
    'Новые устройства и платформы появляются каждый день. У разработчиков мобильных приложений и сайтов существует реальная проблема: как корректно и качественно отобразить весь контент на экране любого размера и соотношения сторон. Для решения этой задачи предназначен адаптивный веб-дизайн. Целью адаптивного веб-дизайна является создание универсальных веб-сайтов и приложений для различных устройств. Для того чтобы с веб-сайтом или приложением было удобно работать на устройствах с различным разрешением и различного формата, по технологии адаптивного дизайна не нужно создавать отдельные версии для каждого вида устройств. Неважно, что будет использоваться для просмотра сайта: смартфон, планшет, ноутбук или телевизор, подключенный к Интернету. Книга Тима Кедлека, известного специалиста в области веб-дизайна, рассказывает, как грамотно создать сайт с использованием «резиновой верстки» модулей media queries и fluid media, как с самого начала правильно организовать рабочий процесс создания сайта в адаптивном дизайне и как учитывать особенности различных устройств.',
    '785496006316',
    0,
    0,
    '42.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    43,
    '2017',
    512,
    'Добро пожаловать в динамичный мир разработки приложений для смартфонов и планшетов Android с использованием Android Software Development Kit (SDK), языка программирования Java™, а также новой и стремительно развивающейся среды разработки Android Studio. В основе книги лежит принцип разработки, ориентированной на приложения, — концепции показаны на примере полностью работоспособных приложений Android, а не фрагментов кода. Более миллиона человек уже воспользовались книгами Дейтелов, чтобы освоить Java, C#, C++, C, JavaScript, XML, Visual Basic, Visual C++, Perl, Python и другие языки программирования. Третье издание этой книги позволит вам не только приступить к разработке приложений для Android , но и быстро опубликовать их в Google Play. Третье издание книги было полностью обновлено и познакомит вас с возможностями Android 6 и Android Studio.',
    '978-5-496-02371-9',
    0,
    0,
    '43.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    44,
    '2008',
    464,
    'Clean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code. The second part consists of several case studies of increasing complexity. Each case study is an exercise in cleaning up code—of transforming a code base that has some problems into one that is sound and efficient. The third part is the payoff: a single chapter containing a list of heuristics and “smells” gathered while creating the case studies. The result is a knowledge base that describes the way we think when we write, read, and clean code.',
    '978-0132350884',
    0,
    0,
    '44.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    45,
    '2015',
    234,
    'Get quick answers for developing and debugging applications with Swift, Apple’s multi-paradigm programming language. Updated to cover the latest features in Swift 2.0, this pocket reference is the perfect on-the-job tool for learning Swift’s modern language features, including type safety, generics, type inference, closures, tuples, automatic memory management, and support for Unicode.Designed to work with Cocoa and Cocoa Touch, Swift can be used in tandem with Objective-C, and either language can call APIs implemented in the other. Swift is still evolving, but Apple clearly sees it as the future language of choice for iOS and OS X software development.',
    '978-1491940075',
    0,
    0,
    '45.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    46,
    '2012',
    192,
    'The need to handle increasingly larger data volumes is one factor driving the adoption of a new class of nonrelational “NoSQL” databases. Advocates of NoSQL databases claim they can be used to build systems that are more performant, scale better, and are easier to program. NoSQL Distilled is a concise but thorough introduction to this rapidly emerging technology. Pramod J. Sadalage and Martin Fowler explain how NoSQL databases work and the ways that they may be a superior alternative to a traditional RDBMS. The authors provide a fast-paced guide to the concepts you need to know in order to evaluate whether NoSQL databases are right for your needs and, if so, which technologies you should explore further.',
    '978-0321826626',
    0,
    0,
    '46.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    47,
    '2015',
    569,
    'What is all the buzz about this Ruby language? Is it right for you? Well, ask yourself: are you tired of all those extra declarations, keywords, and compilation steps in your other language? Do you want to be a more productive programmer? Then youâ??ll love Ruby. With this unique hands-on learning experience, youâ??ll discover how Ruby takes care of all the details for you, so you can simply have fun and get more done with less code. Based on the latest research in cognitive science and learning theory, Head First Ruby uses a visually rich format to engage your mind, rather than a text-heavy approach to put you to sleep. Why waste your time struggling with new concepts? This multi-sensory learning experience is designed for the way your brain really works.',
    '978-1449372651',
    0,
    0,
    '47.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    48,
    '2015',
    356,
    'Vim is a fast and efficient text editor that will make you a faster and more efficient developer. It\'s available on almost every OS, and if you master the techniques in this book, you\'ll never need another text editor. In more than 120 Vim tips, you\'ll quickly learn the editor\'s core functionality and tackle your trickiest editing and writing tasks. This beloved bestseller has been revised and updated to Vim 8 and includes three brand-new tips and five fully revised tips.',
    '978-1680501278',
    0,
    0,
    '48.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    49,
    '2017',
    400,
    'Тепер програмуванню можуть навчатися навіть діти, і все завдяки цій книзі. Крок за кроком читачі зможуть вивчати найпопулярнішу мову програмування – Python. Простий і зрозумілий синтаксис легко запам’ятовується навіть новачкам. У книзі тонкощі мови програмування пояснюються за допомогою цікавих прикладів. Основні елементи Python стануть для вас легкими і знайомими. Ви навчитесь малювати інструментами Python, створювати анімацію і навіть зможете написати декілька комп’ютерних ігор.',
    '978-617-679-396-0',
    0,
    0,
    '49.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    50,
    '2019',
    696,
    'Книга присвячена мові Java, яка на сьогодні є однією з найпопулярніших мов програмування. Це професійна мова, яка дозволяє створювати складні та ефективні програми. У книзі розглядаються всі основні теми, котрі формують парадигму мови програмування Java. Серед них, зокрема, базові прийоми створення програм, основні оператори та типи даних, керуючі інструкції, класи та об’єкти, спадкування, перевантаження та переозначення методів, інтерфейси (в тому числі функціональні), лямбда-вирази, обробка по',
    '978-966-10-5879-7',
    0,
    0,
    '50.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    51,
    '2021',
    224,
    'За майже 20 років, які минули від опублікування Маніфесту Agile, розуміння цієї методології стало суттєво відрізнятися від тих намірів, котрі було покладено в основу її творцями. Тож зараз саме час повернутися до оригінальної ідеї Agile: негроміздкого рішення маленького завдання, поставленого перед невеликими командами програмістів, які виконують дрібні завдання. А хто може допомогти в цьому краще за Дядька Боба — одного з авторів гнучкої розробки програмного забезпечення, відомого міжнародного ',
    '978-617-09-6760-2',
    0,
    0,
    '51.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    52,
    '2020',
    504,
    'Книга присвячена мові програмування Python. На сьогодні це одна з найпопулярніших та найперспективніших мов. Вона проста, ефективна і красива. Книга допоможе читачеві познайомитися з мовою Python і навчитися використовувати її для написання професійних програм. Книга містить інформацію про особливості мови Python та необхідне програмне забезпечення. Детально обговорюються основні програмні конструкції, які використовуються при написанні програм. Описуються базові оператори та керуючі інструкції,',
    '978-966-10-5611-3',
    0,
    0,
    '52.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    53,
    '2019',
    336,
    'Ми живемо в епоху алгоритмів. Рішення, які впливають на наше життя, дедалі частіше ухвалюють не люди, бо їх визначають математичні моделі. Це має забезпечити справедливість рішень, позаяк кожного судять за одними й тими самими правилами, і упередженість зводять нанівець. Проте Кейт О’Ніл розкриває в книзі інший бік Big Data і математичних алгоритмів ухвалення рішень. Моделі, які застосовують нині, є непрозорими, нерегульованими й беззаперечними, навіть коли явно помиляються. Вони здатні посилюва',
    '978-966-993-006-4',
    0,
    0,
    '53.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    54,
    '2019',
    416,
    'Користуючись універсальними правилами архітектури програмного забезпечення, можна значно підвищити продуктивність праці розробників протягом усього життєвого циклу будь-якої програмної системи. Легендарний майстер програмного забезпечення Роберт К. Мартін («Дядечко Боб») розкриває ці правила у своїй книжці «Чиста архітектура» і допомагає їх застосувати.',
    '978-617-09-5286-8',
    0,
    0,
    '54.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    55,
    '2021',
    624,
    'Мова Python сьогодні відома у всьому світі. Вона задіяна в пошукових системах Google, на ній майже цілком написані відеохостинг Youtube і соціальна мережа Reddit, активно використовують її Facebook та Instagram. Агентство національної безпеки США з її допомогою аналізує розвіддані, а NASA розв’язує найскладніші наукові проблеми. Інакше кажучи, Python під силу не тільки обчислювальні задачі, а й тестування, адміністрування і розробка програмних продуктів. Дійсно хочете швидко оволодіти мовою Python, не докладаючи зайвих зусиль? У цьому допоможе чудовий посібник Пола Беррі Head First Python, створений на засадах останніх досягнень когнітивної науки. Ваш мозок буде змушений постійно працювати, а не губитися в нетрях занудливих текстів, що навіюють сон. Ви дізнаєтеся, як створити власний застосунок, як керувати базами даних, обробляти виключення і здійснювати первинну обробку даних. Якщо вас цікавить те, що можна робити з контекстними менеджерами, декораторами і генераторами, то ви точно потрапили за адресою. Захоплива, але не легковажна, інформативна, позбавлена зайвого пафосу книжка Пола Беррі містить більшу частину того, що вам доведеться використовувати чи не щодня у своїй подальшій роботі. Єдине застереження — бажано, щоби майбутній читач хоча би на початковому рівні володів однією з поширених мов програмування.',
    '978-617-522-019-1',
    0,
    0,
    '55.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    56,
    '2022',
    720,
    'Технологія Java сьогодні використовується скрізь. Якщо ви розробляєте програмне забезпечення і досі не опанували Java, точно настав час заглибитися у цю книжку. «Head First. Java» — це вичерпний навчальний посібник, який надасть Вам досвід роботи з Java та об’єктно-орієнтованого програмування. Ця книжка допоможе вам вивчити мову Java унікальним методом, що виходить за рамки синтаксису та інструкцій з експлуатації і допомагає зрозуміти, як стати неперевершеним розробником. Ви опануєте основи мови, отримаєте загальну інформацію, засвоїте роботу з потоками, мережевою взаємодією та розподіленим програмуванням, і навіть побудуєте гру «Sink The Dot Com», а також створите барабанний музичний чат. Окрім захопливого стилю, що одразу поглинає вас, у «Head First. Java» міститься величезна кількість практичних речей, які інші посібники залишають поза увагою. Розумно, іронічно, сучасно та практично — не так уже багато існує видань, що здатні похвалитися цими якостями. Обережно — ви можете насправді чогось навчитися!',
    '978-617-522-033-7',
    0,
    0,
    '56.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    57,
    '2019',
    128,
    'Хочете навчити дитину програмуванню? Чи бажаєте самі поринути до світу програмного коду? Тоді ця книга для вас. Скретч — доступна, зрозуміла та весела мова програмування.  Дотримуючись чітких інструкцій, маленькі читачі будуть створювати анімації та відеоігри. Книга дасть змогу проявити творчість, навчить знаходити оригінальні та ефективні розв’язання проблем. І, перш за все, дасть нагоду насолодитися створенням власних проектів з нуля. Для широкого кола читачів.',
    '978-617-09-4376-7',
    0,
    0,
    '57.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    58,
    '2020',
    672,
    '«Патерни проєктування» — ваша книжка, якщо вам хоч колись доводилося стикатися з проблемами дизайну програмного забезпечення. Вам не доведеться «винаходити колесо» — просто скористайтеся зведеним докупи величезним досвідом розробників і можливістю використовувати найкращі практики. Ви дізнаєтеся, навіщо потрібні патерни, побачите, як вони виглядають і працюють у «дикій природі», а призвичаївшись до їх використання, зможете витратити вільний час на щось більш складне і цікаве. Автори чудово показали, як патерни використовуються у Java API і як застосувати вбудовану підтримку патернів Java у вашому власному коді Заразом ви засвоїте реальні принципи ОО-програмування, що залишаться з вами і тоді, коли доведеться працювати без патернів. Візуально насичений формат книжки розроблений із використанням новітніх досліджень в галузях нейробіології, когнітивної науки і теорії навчання. Тому весь її матеріал миттєво запам’ятовується, і невдовзі ви зможете з легкістю спілкуватися з іншими членами вашої команди на «таємній мові» патернів проєктування.',
    '978-617-09-6159-4',
    0,
    0,
    '58.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    59,
    '2018',
    203,
    'If you are a newcomer to programming it’s easy to get lost in the technical jargon, before even getting to the language you want to learn.\r\nWhat are statements, operators, and functions?\r\nHow to structure, build and deploy a program?\r\nWhat is functional programming and object oriented programming?\r\nHow to store, manage and exchange data?\r\n\r\nThese are topics many programming guides don’t cover, as they are assumed to be general knowledge to most developers. That is why this guide has been created. It is the ultimate primer to all programming languages.',
    'B07D6D5W99',
    0,
    0,
    '59.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    60,
    '2018',
    161,
    'Learn C# Fast and Learn It Well. Master C# Programming with a unique Hands-On Project (Updated for VS Community 2017)\r\nHave you always wanted to learn computer programming but are afraid it ll be too difficult for you? Or perhaps you know other programming languages but are interested in learning the C# language fast? This book is for you. You no longer have to waste your time and money learning C# from boring books that are 600 pages long, expensive online courses or complicated C# tutorials that just leave you more confused.',
    'B016Z18MLG',
    0,
    0,
    '60.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    70,
    '2003',
    563,
    ' Domain-Driven Design fills that need. This is not a book about specific technologies. It offers readers a systematic approach to domain-driven design, presenting an extensive set of design best practices, experience-based techniques, and fundamental principles that facilitate the development of software projects facing complex domains. Intertwining design and development practice, this book incorporates numerous examples based on actual projects to illustrate the application of domain-driven design to real-world software development.',
    'B00794TAUG',
    0,
    0,
    '70.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    71,
    '2022',
    1457,
    ' Through a recent series of breakthroughs, deep learning has boosted the entire field of machine learning. Now, even programmers who know close to nothing about this technology can use simple, efficient tools to implement programs capable of learning from data. This bestselling book uses concrete examples, minimal theory, and production-ready Python frameworks (Scikit-Learn, Keras, and TensorFlow) to help you gain an intuitive understanding of the concepts and tools for building intelligent systems.',
    'B0BHCFNY9Q',
    0,
    0,
    '71.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    72,
    '2022',
    1312,
    'Some books on algorithms are rigorous but incomplete, others cover masses of material but lack rigor. Introduction to Algorithms uniquely combines rigor and comprehensiveness. It covers a broad range of algorithms in depth, yet makes their design and analysis accessible to all levels of readers, with self-contained chapters and algorithms in pseudocode. Since the publication of the first edition, Introduction to Algorithms has become the leading algorithms text in universities worldwide as well as the standard reference for professionals. This fourth edition has been updated throughout.',
    'B094WZNKP2',
    0,
    0,
    '72.png'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    102,
    '2020',
    590,
    ' A menudo pensamos que para cambiar de vida tenemos que pensar en hacer cambios grandes. Nada más lejos de la realidad. Según el reconocido experto en hábitos James Clear, el cambio real proviene del resultado de cientos de pequeñas decisiones: hacer dos flexiones al día, levantarse cinco minutos antes o hacer una corta llamada telefónica.\r\n\r\n',
    'B085G3G2CY',
    0,
    0,
    '102.jpg'
  );
INSERT INTO
  `description_book` (
    `book_id`,
    `year_book`,
    `pages`,
    `description`,
    `isbn`,
    `views`,
    `clicks_wanted`,
    `image`
  )
VALUES
  (
    103,
    '2022',
    989,
    'Get the definitive handbook for manipulating, processing, cleaning, and crunching datasets in Python. Updated for Python 3.10 and pandas 1.4, the third edition of this hands-on guide is packed with practical case studies that show you how to solve a broad set of data analysis problems effectively. You ll learn the latest versions of pandas, NumPy, and Jupyter in the process.',
    'B0B9HY3WX7',
    1,
    2,
    '103.jpg'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
