-- access through user groups and roles to ensure security

-- Create a read-only user
CREATE USER 'bookstore_read'@'localhost' IDENTIFIED BY '1234!';
GRANT SELECT ON bookstore.* TO 'bookstore_read'@'localhost';

-- Create a data entry user
CREATE USER 'bookstore_write'@'localhost' IDENTIFIED BY '1234!';
GRANT SELECT, INSERT, UPDATE, DELETE ON bookstore.* TO 'bookstore_write'@'localhost';

-- Create an admin user with broader permissions
CREATE USER 'bookstore_admin'@'localhost' IDENTIFIED BY '1234!';
GRANT ALL PRIVILEGES ON bookstore.* TO 'bookstore_admin'@'localhost';