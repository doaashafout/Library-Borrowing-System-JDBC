USE `library-system`;

INSERT INTO students (name) VALUES
    ('Lina Ahmad'),
    ('Omar Youssef'),
    ('Nour Hassan'),
    ('Khaled Ibrahim'),
    ('Dina Mahmoud');

INSERT INTO books (title) VALUES
    ('Clean Code'),
    ('Design Patterns'),
    ('Network Security'),
    ('Artificial Intelligence'),
    ('Computer Vision'),
    ('Web Development'),
    ('Machine Learning');

INSERT INTO borrow (student_id, book_id, borrow_date, return_date, status) VALUES
    (1, 1, '2026-01-15', '2026-01-25', 1),
    (2, 3, '2026-02-01', '2026-02-12', 1),
    (3, 2, '2026-03-10', NULL, 0),
    (4, 5, '2026-03-15', '2026-03-28', 1),
    (5, 4, '2026-04-01', NULL, 0),
    (1, 6, '2026-04-05', '2026-04-18', 1),
    (6, 7, '2026-04-10', NULL, 0),
    (2, 8, '2026-04-12', '2026-04-22', 1),
    (7, 9, '2026-04-15', NULL, 0),
    (3, 10, '2026-04-18', '2026-04-30', 1),
    (8, 1, '2026-05-01', NULL, 0),
    (5, 7, '2026-05-02', '2026-05-10', 1);
