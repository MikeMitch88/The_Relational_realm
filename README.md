
# BookStore Database Project

A MySQL database designed to manage operations for a bookstore,
including books, authors, customers, orders, and shipping. 
This project demonstrates database design, normalization, 
user management, and query optimization.

## 📘 Entity-Relationship Diagram

![ERD](./assets/DB_ERD.drawio.png)



## 📌 Objectives
- Design a normalized relational database schema for a bookstore.
- Implement tables to store books, authors, customers, orders, and shipping details.
- Manage user access and permissions for security.
- Write efficient SQL queries for data retrieval and analysis.

## 🛠 Tools & Technologies
- **MySQL**: Database creation and management.
- **Draw.io**: ER diagram design.

## 📋 Features
- **Tables Created**:
  - `book`, `author`, `book_author`, `book_language`, `publisher`
  - `Customer`, `address`, `country`, `customer_address`, `address_status`
  - `cust_order`, `order_line`, `shipping_method`, `order_history`, `order_status`
- **User Management**: Admin, application, and read-only user roles.
- **Sample Data**: Example queries for testing.


## 🚀 Installation
1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/The_Relational_realm.git
