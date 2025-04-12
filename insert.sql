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









