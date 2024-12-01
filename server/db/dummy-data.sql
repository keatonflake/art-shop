-- Insert Users
INSERT INTO users (username, email, password)
VALUES
    ('john_doe', 'john@example.com', 'password123'),
    ('jane_smith', 'jane@example.com', 'password456'),
    ('alice_jones', 'alice@example.com', 'password789');

-- Insert Art Pieces
INSERT INTO art (name, description)
VALUES
    ('Starry Night', 'A beautiful depiction of a starry night over a town, painted by Van Gogh.'),
    ('Mona Lisa', 'The famous portrait of a woman, painted by Leonardo da Vinci.'),
    ('The Persistence of Memory', 'A surreal painting of melting clocks, created by Salvador Dalí.'),
    ('The Scream', 'An iconic painting symbolizing human existential dread, created by Edvard Munch.'),
    ('The Girl with a Pearl Earring', 'A famous portrait painting by Johannes Vermeer, known for its subtle colors and lighting.');

-- Insert Sizes and Prices for each art piece
INSERT INTO sizes (art_id, size, price)
VALUES
    (1, 'Small', 50.00),
    (1, 'Medium', 100.00),
    (1, 'Large', 150.00),
    (2, 'Small', 60.00),
    (2, 'Medium', 120.00),
    (2, 'Large', 180.00),
    (3, 'Small', 70.00),
    (3, 'Medium', 140.00),
    (3, 'Large', 210.00),
    (4, 'Small', 55.00),
    (4, 'Medium', 110.00),
    (4, 'Large', 165.00),
    (5, 'Small', 65.00),
    (5, 'Medium', 130.00),
    (5, 'Large', 195.00);

-- Insert Orders for Users
-- User 1: John Doe
INSERT INTO orders (user_id, total_price, tax)
VALUES
    (1, 310.00, 25.00),  -- Order 1
    (1, 250.00, 20.00);  -- Order 2

-- User 2: Jane Smith
INSERT INTO orders (user_id, total_price, tax)
VALUES
    (2, 450.00, 36.00),  -- Order 3
    (2, 150.00, 12.00);  -- Order 4

-- User 3: Alice Jones
INSERT INTO orders (user_id, total_price, tax)
VALUES
    (3, 330.00, 26.40),  -- Order 5
    (3, 420.00, 33.60);  -- Order 6

-- Insert Order Items for Orders

-- Order 1 (John Doe)
INSERT INTO order_items (order_id, art_id, size_id, quantity, price)
VALUES
    (1, 1, 2, 1, 100.00),  -- Starry Night (Medium)
    (1, 2, 1, 2, 60.00);   -- Mona Lisa (Small)

-- Order 2 (John Doe)
INSERT INTO order_items (order_id, art_id, size_id, quantity, price)
VALUES
    (2, 3, 2, 1, 140.00),  -- The Persistence of Memory (Medium)
    (2, 5, 1, 1, 65.00);   -- The Girl with a Pearl Earring (Small)

-- Order 3 (Jane Smith)
INSERT INTO order_items (order_id, art_id, size_id, quantity, price)
VALUES
    (3, 2, 3, 2, 180.00),  -- Mona Lisa (Large)
    (3, 4, 2, 1, 110.00);  -- The Scream (Medium)

-- Order 4 (Jane Smith)
INSERT INTO order_items (order_id, art_id, size_id, quantity, price)
VALUES
    (4, 1, 1, 1, 50.00),   -- Starry Night (Small)
    (4, 3, 3, 1, 210.00);  -- The Persistence of Memory (Large)

-- Order 5 (Alice Jones)
INSERT INTO order_items (order_id, art_id, size_id, quantity, price)
VALUES
    (5, 5, 2, 1, 130.00),  -- The Girl with a Pearl Earring (Medium)
    (5, 1, 1, 1, 50.00);   -- Starry Night (Small)

-- Order 6 (Alice Jones)
INSERT INTO order_items (order_id, art_id, size_id, quantity, price)
VALUES
    (6, 4, 2, 1, 110.00),  -- The Scream (Medium)
    (6, 2, 3, 1, 180.00);  -- Mona Lisa (Large)

-- Insert Shipping Data

-- Order 1 (John Doe)
INSERT INTO shipping (order_id, address_line1, address_line2, city, state, zip_code, country, shipping_cost, shipping_date, delivery_date)
VALUES
    (1, '123 Art St.', 'Apt 4B', 'New York', 'NY', '10001', 'USA', 15.00, '2024-11-01', '2024-11-05');

-- Order 2 (John Doe)
INSERT INTO shipping (order_id, address_line1, address_line2, city, state, zip_code, country, shipping_cost, shipping_date, delivery_date)
VALUES
    (2, '123 Art St.', 'Apt 4B', 'New York', 'NY', '10001', 'USA', 12.00, '2024-11-02', '2024-11-06');

-- Order 3 (Jane Smith)
INSERT INTO shipping (order_id, address_line1, address_line2, city, state, zip_code, country, shipping_cost, shipping_date, delivery_date)
VALUES
    (3, '456 Painting Ave.', '', 'Los Angeles', 'CA', '90001', 'USA', 18.00, '2024-11-02', '2024-11-06');

-- Order 4 (Jane Smith)
INSERT INTO shipping (order_id, address_line1, address_line2, city, state, zip_code, country, shipping_cost, shipping_date, delivery_date)
VALUES
    (4, '456 Painting Ave.', '', 'Los Angeles', 'CA', '90001', 'USA', 10.00, '2024-11-03', '2024-11-07');

-- Order 5 (Alice Jones)
INSERT INTO shipping (order_id, address_line1, address_line2, city, state, zip_code, country, shipping_cost, shipping_date, delivery_date)
VALUES
    (5, '789 Gallery Rd.', '', 'Chicago', 'IL', '60601', 'USA', 20.00, '2024-11-04', '2024-11-08');

-- Order 6 (Alice Jones)
INSERT INTO shipping (order_id, address_line1, address_line2, city, state, zip_code, country, shipping_cost, shipping_date, delivery_date)
VALUES
    (6, '789 Gallery Rd.', '', 'Chicago', 'IL', '60601', 'USA', 16.00, '2024-11-05', '2024-11-09');
