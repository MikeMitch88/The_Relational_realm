-- 1. Create the database
CREATE DATABASE IF NOT EXISTS BookStore;
USE BookStore;

-- Create the referenced table first.
CREATE TABLE book_language (
  language_id INT AUTO_INCREMENT PRIMARY KEY,
  language_name VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE book (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  isbn VARCHAR(20) UNIQUE,
  language_id INT,
  publisher_id INT,
  publication_date DATE,
  price DECIMAL(10,2),
  FOREIGN KEY (language_id) REFERENCES book_language(language_id)
) ENGINE=InnoDB;

CREATE TABLE author (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  bio TEXT
) ENGINE=InnoDB;

CREATE TABLE book_author (
  book_id INT,
  author_id INT,
  PRIMARY KEY (book_id, author_id),
  FOREIGN KEY (book_id) REFERENCES book(book_id),
  FOREIGN KEY (author_id) REFERENCES author(author_id)
) ENGINE=InnoDB;

CREATE TABLE publisher (
  publisher_id INT AUTO_INCREMENT PRIMARY KEY,
  publisher_name VARCHAR(255) NOT NULL UNIQUE,
  address VARCHAR(255) NULL,
  contact_info VARCHAR(255) NULL
) ENGINE=InnoDB;

CREATE TABLE customer (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  phone VARCHAR(20) NULL,
  registered_date DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Create the referenced table FIRST
CREATE TABLE country (
  country_id INT AUTO_INCREMENT PRIMARY KEY,
  country_name VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- create the table with the foreign key
CREATE TABLE address (
  address_id INT AUTO_INCREMENT PRIMARY KEY,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(100) NOT NULL,
  postal_code VARCHAR(20),
  country_id INT NOT NULL,
  FOREIGN KEY (country_id) REFERENCES country(country_id)
) ENGINE=InnoDB;

-- Create the referenced table 
CREATE TABLE address_status (
  address_status_id INT AUTO_INCREMENT PRIMARY KEY,
  status_name VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- create the referencing table
CREATE TABLE customer_address (
  customer_address_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  address_id INT NOT NULL,
  address_status_id INT NOT NULL,
  FOREIGN KEY (address_status_id) REFERENCES address_status(address_status_id)
) ENGINE=InnoDB;

CREATE TABLE order_status (
  order_status_id INT AUTO_INCREMENT PRIMARY KEY,
  status_name VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE cust_order (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  order_status_id INT NOT NULL,
  shipping_method_id INT NOT NULL,
  total_amount DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
) ENGINE=InnoDB;

CREATE TABLE order_line (
  order_line_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  book_id INT NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
  FOREIGN KEY (book_id) REFERENCES book(book_id)
) ENGINE=InnoDB;

CREATE TABLE shipping_method (
  shipping_method_id INT AUTO_INCREMENT PRIMARY KEY,
  method_name VARCHAR(100) NOT NULL UNIQUE,
  cost DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE order_status (
  order_status_id INT AUTO_INCREMENT PRIMARY KEY,
  status_name VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE order_history (
  history_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  order_status_id INT NOT NULL,
  change_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
  remarks VARCHAR(255),
  FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
  FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
) ENGINE=InnoDB;

-- Create a read-only user
CREATE USER 'bookstore_read'@'localhost' IDENTIFIED BY '1234!';
GRANT SELECT ON bookstore.* TO 'bookstore_read'@'localhost';

-- Create a data entry user
CREATE USER 'bookstore_write'@'localhost' IDENTIFIED BY '1234!';
GRANT SELECT, INSERT, UPDATE, DELETE ON bookstore.* TO 'bookstore_write'@'localhost';

-- Create an admin user with broader permissions
CREATE USER 'bookstore_admin'@'localhost' IDENTIFIED BY '1234!';
GRANT ALL PRIVILEGES ON bookstore.* TO 'bookstore_admin'@'localhost';

-- Use SELECT only needed columns
SELECT b.title, a.first_name, a.last_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

-- proper join
SELECT c.first_name, o.order_id, o.order_date
FROM customer c
JOIN cust_order o ON c.customer_id = o.customer_id;

-- Use LIMIT for pagination
SELECT * FROM book LIMIT 10 OFFSET 0;

-- Use EXPLAIN to analyze slow queries
EXPLAIN SELECT * FROM cust_order WHERE customer_id = 1001;

 -- Examples of Use Primary Keys and Foreign Keys on all relationships
 -- Primary Key and Index
CREATE TABLE customer (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(100) UNIQUE
);

-- Foreign Key with implicit index
CREATE TABLE cust_order (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Example of Regular ANALYZE TABLE to update stats
ANALYZE TABLE book, cust_order, order_line;

-- Example of Regular OPTIMIZE TABLE to defragment and reclaim space
OPTIMIZE TABLE book, author, customer;
