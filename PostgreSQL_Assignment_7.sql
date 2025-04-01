-- Active: 1743304686230@@127.0.0.1@5432@bookstore_db

-- GLOBAL FUNTION -- 
DROP TABLE books;
DROP TABLE customers;
DROP TABLE orders;


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
('Sonar Tori', 'Rabindranath Tagore', 250.00, 0, 1894),
('Devdas', 'Sarat Chandra Chattopadhyay', 300.00, 8, 1917),
('Pather Panchali', 'Bibhutibhushan Bandyopadhyay', 400.00, 12, 1929),
('Nodi O Nari', 'Humayun Ahmed', 350.00, 15, 1991),
('Amar Bondhu Rashed', 'Muhammed Zafar Iqbal', 220.00, 20, 1983),
('Agunpakhi', 'Selina Hossain', 280.00, 5, 2006),
('Lalsalu', 'Syed Waliullah', 320.00, 7, 1948),
('Karnafulir Kule', 'Munier Chowdhury', 270.00, 0, 1955),
('Ekjon Mayaboti', 'Sunil Gangopadhyay', 330.00, 9, 1990),
('Dahonkal', 'Selina Hossain', 290.00, 10, 1986);


-- CHECKING BOOKS TABLE  DATA --
SELECT * FROM books;

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


---- STEP 3: CREATE ORDER TABLE ------------
CREATE TABLE orders (
   id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(id),
    book_id INT NOT NULL REFERENCES books(id),
    quantity INT NOT NULL CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- INSET DATA INTO ORDER TABLE --
INSERT INTO orders (customer_id, book_id, quantity) VALUES
    (1, 3, 2),
    (2, 5, 1), 
    (3, 8, 3),
    (4, 2, 1),
    (5, 6, 4),
    (6, 9, 2), 
    (7, 1, 1),
    (8, 10, 5),
    (9, 4, 2),
    (9, 4, 10),
    (10, 7, 3);


-- CHECK ORDER TABLE DATA --
SELECT * FROM orders;


---------------------------------------------------------------------------------------
-------------------------------------- SOLUTIOINS -------------------------------------
---------------------------------------------------------------------------------------


---- PROBLEM 1: Find books that are out of stock.
        -- STEP 1: Select tilte of the books. 
        -- SETP 2: Filter out books with stock less then 1.

SELECT title, stock FROM books
    WHERE stock < 1

------------------- END OF PROBLEM 1 (ONE) ---------------------------

---- PROBLEM 2: Retrieve the most expensive book in the store..
        -- STEP 1: Select all the books. 
        -- SETP 2: Order the book by price desc this way we will get the heighest price on top.
        -- STEP 3: Just select the first one by limit.

SELECT * FROM books
    ORDER BY price DESC
    LIMIT 1

------------------- END OF PROBLEM 2 (TWO) ---------------------------


---- PROBLEM 3: Find the total number of orders placed by each customer.
        -- STEP 1: Join the order and customer table. 
        -- SETP 2: Group the table using customer name so that we can eliminate duplicate values.
        -- STEP 3: select name and do the sum of orders.

SELECT name, sum(quantity) as total_orders FROM orders
    JOIN customers ON orders.customer_id = customers.id
    GROUP BY name


------------------- END OF PROBLEM 3 (Three) ---------------------------

---- PROBLEM 4: Calculate the total revenue generated from book sales.
    -- SETP 1: We have to join the tables to get order quantity and book price as they are on two different tables. 
    -- STEP 2: Now if we multiply order quantity with the book price we will get per order price 
    -- STEP 3: Now we have to do the sum of the order price. 
SELECT SUM(orders.quantity * books.price) AS total_revenue FROM orders
    JOIN books ON orders.book_id = books.id;

    ------------------- END OF PROBLEM 4 (four) ---------------------------

---- PROBLEM 5: List all customers who have placed more than one order.
        --STEP 1: Previously we have got the total order from each customer using problem 3. 
        --SETP 2: Now we just have to add having filter to get the values more then 1. 
SELECT name, sum(quantity) as orders_count FROM orders
    JOIN customers ON orders.customer_id = customers.id
    GROUP BY name
    HAVING sum(quantity) > 1

------------------- END OF PROBLEM 5 (Five) ---------------------------