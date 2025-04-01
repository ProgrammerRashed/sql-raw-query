-- Active: 1743304686230@@127.0.0.1@5432@bookstore_db

-----------  STEP 1: Creating BOOKS table. ---------------
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
('Sonar Tori', 'Rabindranath Tagore', 250.00, 10, 1894),
('Devdas', 'Sarat Chandra Chattopadhyay', 300.00, 8, 1917),
('Pather Panchali', 'Bibhutibhushan Bandyopadhyay', 400.00, 12, 1929),
('Nodi O Nari', 'Humayun Ahmed', 350.00, 15, 1991),
('Amar Bondhu Rashed', 'Muhammed Zafar Iqbal', 220.00, 20, 1983),
('Agunpakhi', 'Selina Hossain', 280.00, 5, 2006),
('Lalsalu', 'Syed Waliullah', 320.00, 7, 1948),
('Karnafulir Kule', 'Munier Chowdhury', 270.00, 6, 1955),
('Ekjon Mayaboti', 'Sunil Gangopadhyay', 330.00, 9, 1990),
('Dahonkal', 'Selina Hossain', 290.00, 10, 1986);


-- CHECKING BOOKS TABLE  DATA --
SELECT * FROM books;

--DELETE BOOKS TABLE IF NEEDED;
DROP TABLE books;

----- STEP 2: CREATE CUSTOMERS TABLE ------
CREATE TABLE customers(
      id SERIAL PRIMARY KEY, 
      name VARCHAR(50),
      email VARCHAR(255) UNIQUE,
      joined_date DATE DEFAULT CURRENT_DATE
)


-- INSERT DATA INTO CUSTOMER TABLE --
INSERT INTO customers (name, email) VALUES
('Abdul Karim', 'abdul.karim@example.com'),
('Sharmin Akter', 'sharmin.akter@example.com'),
('Rahim Uddin', 'rahim.uddin@example.com'),
('Nasima Begum', 'nasima.begum@example.com'),
('Tanvir Hossain', 'tanvir.hossain@example.com'),
('Farhana Islam', 'farhana.islam@example.com'),
('Jahid Hasan', 'jahid.hasan@example.com'),
('Mitu Chowdhury', 'mitu.chowdhury@example.com'),
('Alamgir Kabir', 'alamgir.kabir@example.com'),
('Rokeya Sultana', 'rokeya.sultana@example.com');

-- CHECKING CURSTOMERS TABLE  DATA --
SELECT * FROM customers;