-- Active: 1743304686230@@127.0.0.1@5432@bookstore_db

-- STEP 1: Creating BOOKS table. 
CREATE TABLE books (
    id SERIAL PRIMARY KEY, 
    title VARCHAR(255),
    author VARCHAR(50),
    price DECIMAL(10, 2) CHECK (price >= 0),
    stock INT,
    published_year INT
);

-- INSERTING DATA INTO BOOK TABLE --
INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 12.99, 10, 1925),
('To Kill a Mockingbird', 'Harper Lee', 14.50, 5, 1960),
('1984', 'George Orwell', 9.99, 15, 1949),
('Pride and Prejudice', 'Jane Austen', 11.25, 8, 1813),
('The Catcher in the Rye', 'J.D. Salinger', 13.75, 12, 1951),
('Moby-Dick', 'Herman Melville', 18.00, 3, 1851),
('War and Peace', 'Leo Tolstoy', 20.00, 7, 1869),
('The Hobbit', 'J.R.R. Tolkien', 15.99, 20, 1937),
('Harry Potter', 'J.K. Rowling', 19.99, 25, 1997),
('The Da Vinci Code', 'Dan Brown', 16.50, 30, 2003);

-- CHECKING BOOKS TABLE  DATA --
SELECT * FROM books;