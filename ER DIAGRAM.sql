CREATE DATABASE LibraryManagementSystem;

USE LibraryManagementSystem;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    EnrollmentDate DATE
);

CREATE TABLE Teachers (
    TeacherID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    HireDate DATE
);

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Category VARCHAR(50),
    PublicationYear YEAR,
    CopiesAvailable INT
);

CREATE TABLE IssuedBooks (
    IssueID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    PersonID INT,
    PersonType ENUM('Student', 'Teacher'),
    IssueDate DATE,
    ReturnDate DATE,
    DueDate DATE,
    FineAmount DECIMAL(10, 2),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
