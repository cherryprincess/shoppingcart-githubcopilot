-- PostgreSQL seed/init script for shoppingdb
CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price NUMERIC(10,2) NOT NULL,
    image_url TEXT
);

INSERT INTO products (name, description, price, image_url) VALUES
('Laptop', 'A high performance laptop', 1200.00, 'https://via.placeholder.com/150'),
('Smartphone', 'Latest model smartphone', 800.00, 'https://via.placeholder.com/150'),
('Headphones', 'Noise cancelling headphones', 200.00, 'https://via.placeholder.com/150'),
('Keyboard', 'Mechanical keyboard', 100.00, 'https://via.placeholder.com/150');
