CREATE DATABASE IF NOT EXISTS `library-system`
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

USE `library-system`;

CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS borrow (
    borrow_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date VARCHAR(20) NOT NULL,
    return_date VARCHAR(20) DEFAULT NULL,
    status TINYINT(1) DEFAULT 0,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE
);

INSERT INTO students (student_id, name) VALUES
    (120231234, '120231234'),
    (220231567, '220231567'),
    (120241111, '120241111'),
    (220241222, '220241222'),
    (120231333, '120231333'),
    (120241555, '120241555'),
    (220231666, '220231666'),
    (220241777, '220241777');

INSERT INTO books (book_id, title) VALUES
    (101001, '101001'),
    (101002, '101002'),
    (102001, '102001'),
    (103001, '103001'),
    (104001, '104001'),
    (105001, '105001'),
    (106001, '106001'),
    (107001, '107001');

INSERT INTO borrow (borrow_id, student_id, book_id, borrow_date, return_date, status) VALUES
    (1, 120231234, 101001, '2026-04-01', '2026-04-10', 1),
    (2, 220231567, 101002, '2026-04-03', '2026-04-30', 1),
    (3, 120241111, 102001, '2026-04-05', '2026-04-12', 1),
    (4, 220241222, 103001, '2026-04-06', '2026-04-30', 1),
    (5, 120231333, 104001, '2026-04-07', '2026-04-15', 1),
    (7, 120241555, 106001, '2026-04-09', '2026-04-18', 1),
    (8, 220231666, 107001, '2026-04-10', '2026-04-30', 1),
    (11, 220231666, 101002, '2026-04-29', '2026-04-30', 1),
    (13, 220241777, 103001, '2026-04-30', '2026-04-30', 1),
    (14, 220241777, 105001, '2026-04-30', NULL, 0),
    (15, 120231333, 105001, '2026-04-29', NULL, 0);
