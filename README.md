# README

## Library Borrowing System (JDBC)

A Java desktop application for managing library borrowing operations using JDBC and MySQL.
The system allows librarians to manage books, students, and borrowing records through a simple and organized interface.

This project was developed following clean Object-Oriented Programming principles and database management concepts using Java and JDBC.

---

# Features

* **Add Books**
  Store book information in the database.

* **Manage Students**
  Add and manage student records.

* **Borrow Books**
  Assign books to students with borrowing details.

* **Return Books**
  Update borrowing status when books are returned.

* **View Borrowing Records**
  Display all borrowing operations in a table.

* **Search Functionality**
  Search records by student ID or book ID.

* **Database Connectivity**
  Connected to MySQL using JDBC.

* **User-Friendly Interface**
  Organized Java GUI for easy interaction.

---

# Tech Stack

| Layer                 | Technology          |
| --------------------- | ------------------- |
| Language              | Java                |
| Database              | MySQL               |
| Database Connectivity | JDBC                |
| UI                    | Java Swing / JavaFX |
| Architecture          | OOP                 |

---

# Project Structure

```plaintext id="g3m3nl"
src/
├── app/
│   └── Main.java
│
├── dao/
│   ├── BookDAO.java
│   ├── BorrowDAO.java
│   └── StudentDAO.java
│
├── models/
│   ├── Book.java
│   ├── Borrow.java
│   └── Student.java
│
├── controllers/
│   └── MainController.java
│
├── views/
│   └── MainForm.fxml
│
├── database/
│   └── DBConnection.java
│
└── styles/
    └── style.css
```

---

# Database Schema

| Table    | Columns                                                    |
| -------- | ---------------------------------------------------------- |
| books    | book_id (PK), title, author                                |
| students | student_id (PK), student_name                              |
| borrow   | borrow_id (PK), student_id (FK), book_id (FK), borrow_date |

---

# Getting Started

## Prerequisites

* Java 8 or higher
* MySQL Server
* JDBC Driver
* NetBeans or any Java IDE

---

# Setup

## Clone the Repository

```bash id="e5jrfu"
git clone https://github.com/doaashafout/Library-Borrowing-System-JDBC.git
```

---

## Create Database

```sql id="y5by6f"
CREATE DATABASE library_system;
```

---

## Configure Database Connection

Edit your database connection settings inside:

```plaintext id="21a4mr"
DBConnection.java
```

Update:

* Database URL
* Username
* Password

---

# Run the Project

1. Open the project in NetBeans.
2. Clean & Build the project.
3. Run the application.

---

# Usage

* Add books and students.
* Borrow books for students.
* View borrowing records.
* Search for records.
* Update or delete records when needed.

---

# Future Improvements

* Add login system.
* Add book availability tracking.
* Generate reports.
* Improve UI design.

---

# License

This project is for educational purposes only.
