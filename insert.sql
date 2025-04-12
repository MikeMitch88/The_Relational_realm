INSERT INTO book (title, isbn, language_id, publisher_id, publication_date, price) VALUES
('The Power of Now', '9781577314806', 1, 1, '2004-08-01', 15.99),
('Le Petit Prince', '9780156013987', 2, 2, '1943-04-06', 12.50),
('Cien Años de Soledad', '9780060883287', 3, 3, '1967-05-30', 18.00),
('Die Verwandlung', '9780141184780', 4, 4, '1915-10-01', 10.75),
('Kidagaa Kimemwozea', '9789966498571', 5, 5, '2012-02-20', 8.60),
('To Live', '9781401307998', 6, 6, '1993-01-15', 14.40),
('The Prophet', '9780394404288', 7, 7, '1923-09-01', 9.99);


INSERT INTO book_language (language_name) VALUES
('English'),
('French'),
('Spanish'),
('German'),
('Swahili'),
('Mandarin'),
('Arabic');

INSERT INTO author (first_name, last_name, bio) VALUES
('Eckhart', 'Tolle', 'A spiritual teacher and author known for his book "The Power of Now".'),
('Antoine', 'de Saint-Exupéry', 'French writer and aviator, best known for "Le Petit Prince".'),
('Gabriel García', 'Márquez', 'Colombian novelist and Nobel Prize winner, famous for "Cien Años de Soledad".'),
('Franz', 'Kafka', 'German-speaking Bohemian writer, known for "Die Verwandlung".'),
('Ken', 'Walibora', 'Tanzanian author and journalist, known for "Kidagaa Kimemwozea".'),
('Yu', 'Hua', 'Chinese novelist and short story writer, known for "To Live".'),
('Khalil', 'Gibran', 'Lebanese-American writer, poet, and philosopher, best known for "The Prophet".');

INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

INSERT INTO publisher (publisher_name, address, contact_info) VALUES
('New World Library', '14 Pamaron Way, Novato, CA 94949, USA', 'contact@newworldlibrary.com'),
('Gallimard', '5 Rue Sébastien Bottin, 75007 Paris, France', 'contact@gallimard.fr'),
('Editorial Sudamericana', 'Avenida Santa Fe 1145, Buenos Aires, Argentina', 'info@sudamericana.com.ar'),
('Fischer Verlag', 'Hedderichstraße 114, 60596 Frankfurt am Main, Germany', 'kontakt@fischerverlage.de'),
('Longhorn Publishers', 'Funzi Road, Nairobi, Kenya', 'info@longhornpublishers.com'),
('Anchor Books', '1745 Broadway, New York, NY 10019, USA', 'support@anchorbooks.com'),
('Alfred A. Knopf', '1745 Broadway, New York, NY 10019, USA', 'help@aaknopf.com');

INSERT INTO customer (first_name, last_name, email, phone) VALUES
('John', 'Doe', 'john.doe@example.com', '+1234567890'),
('Alice', 'Wambui', 'alice.wambui@example.com', '+254700123456'),
('Carlos', 'Hernandez', 'carlos.hernandez@example.com', '+5215587654321'),
('Marie', 'Dubois', 'marie.dubois@example.com', '+254716378345'),
('Ahmed', 'Ali', 'ahmed.ali@example.com', '+971501234567'),
('Lucy', 'Smith', 'lucy.smith@example.com', '+441632960123'),
('Wang', 'Wei', 'wang.wei@example.com', '+8613800138000');

INSERT INTO country (country_name) VALUES
('United States'),
('Kenya'),
('France'),
('Mexico'),
('Germany'),
('China'),
('United Kingdom'),
('United Arab Emirates'),
('Argentina'),
('Canada');

INSERT INTO address (street, city, postal_code, country_id) VALUES
('123 Main Street', 'New York', '10001', 1),
('456 Moi Avenue', 'Nairobi', '00100', 2),
('78 Rue de Rivoli', 'Paris', '75001', 3),
('Calle 5 de Mayo 123', 'Mexico City', '06000', 4),
('Berliner Straße 45', 'Berlin', '10115', 5),
('No. 88 Nanjing Road', 'Shanghai', '200001', 6),
('221B Baker Street', 'London', 'NW1 6XE', 7),
('Al Fahidi Street', 'Dubai', '00000', 8),
('Avenida Corrientes 456', 'Buenos Aires', 'C1043AAR', 9),
('789 Yonge Street', 'Toronto', 'M4W 2G8', 10);

INSERT INTO address_status (status_name) VALUES
('Current'),
('Old'),
('Billing'),
('Shipping');

INSERT INTO customer_address (customer_id, address_id, address_status_id) VALUES
(1, 1, 1),  -- John Doe - Current address in New York
(2, 2, 1),  -- Alice Wambui - Current address in Nairobi
(3, 3, 1),  -- Carlos Hernandez - Paris
(3, 4, 2),  -- Carlos - Old address in Mexico
(4, 5, 1),  -- Marie - Current in Berlin
(5, 8, 1),  -- Ahmed - Current in Dubai
(6, 7, 1),  -- Lucy - London
(7, 6, 1),  -- Wang Wei - Shanghai
(1, 10, 2); -- John - Old address in Toronto

INSERT INTO order_status (status_name) VALUES 
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled'),
('Returned');

INSERT INTO cust_order (customer_id, order_status_id, shipping_method_id, total_amount)
VALUES
(1, 1, 1, 29.99),  -- Customer 1, Pending order status, Standard shipping, Total $29.99
(2, 2, 2, 49.99),  -- Customer 2, Processing order status, Express shipping, Total $49.99
(3, 3, 3, 19.99),  -- Customer 3, Shipped order status, Same Day shipping, Total $19.99
(4, 4, 1, 39.99),  -- Customer 4, Delivered order status, Standard shipping, Total $39.99
(5, 5, 2, 59.99);  -- Customer 5, Cancelled order status, Express shipping, Total $59.99


INSERT INTO shipping_method (method_name, cost)
VALUES
('Standard Shipping', 5.99),    -- Standard shipping method with a cost of 5.99
('Express Shipping', 9.99),     -- Express shipping method with a cost of 9.99
('Same Day Shipping', 19.99);   -- Same-day shipping method with a cost of 19.99

INSERT INTO order_status (status_name) VALUES 
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled'),
('Returned');

INSERT INTO order_history (order_id, order_status_id, change_timestamp, remarks)
VALUES
(1, 1, '2025-04-13 10:00:00', 'Order created, awaiting payment'), 
(2, 2, '2025-04-13 11:00:00', 'Order payment confirmed, now processing'),  
(3, 3, '2025-04-13 12:00:00', 'Order shipped, on the way to the customer'),  
(4, 4, '2025-04-13 13:00:00', 'Order delivered to customer, completed'),  
(5, 5, '2025-04-13 14:00:00', 'Order cancelled due to customer request'); 

INSERT INTO customer (email)
VALUES
  ('barbie@example.com'),
  ('thor@example.com'),
  ('hulk@example.com'),
  ('ironman@example.com'),
  ('spiderman@example.com');

INSERT INTO cust_order (customer_id)
VALUES
  (1),  -- Order for Barbie (customer 1)
  (2),  -- Order for Thor (customer 2)
  (3),  -- Order for Hulk (customer 3)
  (4),  -- Order for Ironman (customer 4)
  (5);  -- Order for Spiderman (customer 5)

INSERT INTO order_line (order_id, book_id, quantity, price)
VALUES
  (1, 1, 2, 15.99),  -- Barbie's order (order_id = 1), Book 1, 2 copies, $15.99 each
  (1, 2, 1, 25.99),  -- Barbie's order (order_id = 1), Book 2, 1 copy, $25.99 each
  (2, 3, 3, 18.99),  -- Thor's order (order_id = 2), Book 3, 3 copies, $18.99 each
  (3, 4, 2, 30.99),  -- Hulk's order (order_id = 3), Book 4, 2 copies, $30.99 each
  (4, 5, 4, 12.99),  -- Ironman's order (order_id = 4), Book 5, 4 copies, $12.99 each
  (5, 1, 1, 15.99);  -- Spiderman's order (order_id = 5), Book 1, 1 copy, $15.99


