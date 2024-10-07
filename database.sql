-- Membuat database
CREATE DATABASE tugas5prak;
USE tugas5prak;

-- Membuat tabel 'users' (Pengguna)
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Membuat tabel 'products' (Produk)
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

-- Membuat tabel 'orders' (Pesanan)
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    order_date TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Membuat tabel 'order_items' (Item dalam pesanan)
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- one to many [(users->orders), (orders->order_items), (products->order_items)]

INSERT INTO users (username, email) VALUES
('user1', 'user1@example.com'),
('user2', 'user2@example.com'),
('user3', 'user3@example.com'),
('user4', 'user4@example.com'),
('user5', 'user5@example.com'),
('user6', 'user6@example.com'),
('user7', 'user7@example.com'),
('user8', 'user8@example.com'),
('user9', 'user9@example.com'),
('user10', 'user10@example.com'),
('user11', 'user11@example.com'),
('user12', 'user12@example.com'),
('user13', 'user13@example.com'),
('user14', 'user14@example.com'),
('user15', 'user15@example.com'),
('user16', 'user16@example.com'),
('user17', 'user17@example.com'),
('user18', 'user18@example.com'),
('user19', 'user19@example.com'),
('user20', 'user20@example.com');

INSERT INTO products (product_name, price, stock) VALUES
('Product1', 10000, 50),
('Product2', 20000, 60),
('Product3', 30000, 70),
('Product4', 40000, 80),
('Product5', 50000, 90),
('Product6', 60000, 100),
('Product7', 70000, 110),
('Product8', 80000, 120),
('Product9', 90000, 130),
('Product10', 100000, 140),
('Product11', 110000, 150),
('Product12', 120000, 160),
('Product13', 130000, 170),
('Product14', 140000, 180),
('Product15', 150000, 190),
('Product16', 160000, 200),
('Product17', 170000, 210),
('Product18', 180000, 220),
('Product19', 190000, 230),
('Product20', 200000, 240);

INSERT INTO orders (user_id, order_date) VALUES
(1, '2024-10-01 10:00:00'),
(2, '2024-10-01 11:30:00'),
(3, '2024-10-02 12:15:00'),
(4, '2024-10-02 14:45:00'),
(5, '2024-10-03 09:00:00'),
(6, '2024-10-03 16:30:00'),
(7, '2024-10-04 11:00:00'),
(8, '2024-10-04 12:45:00'),
(9, '2024-10-05 10:00:00'),
(10, '2024-10-05 14:30:00'),
(11, '2024-10-06 09:45:00'),
(12, '2024-10-06 11:00:00'),
(13, '2024-10-07 10:15:00'),
(14, '2024-10-07 12:30:00'),
(15, '2024-10-08 11:45:00'),
(16, '2024-10-08 13:00:00'),
(17, '2024-10-09 09:30:00'),
(18, '2024-10-09 14:00:00'),
(19, '2024-10-10 10:15:00'),
(20, '2024-10-10 11:45:00');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 2), (1, 2, 1), (2, 3, 1), (2, 4, 1),
(3, 5, 2), (3, 6, 3), (4, 7, 1), (4, 8, 2),
(5, 9, 1), (5, 10, 1), (6, 11, 3), (6, 12, 2),
(7, 13, 1), (7, 14, 1), (8, 15, 2), (8, 16, 2),
(9, 17, 1), (9, 18, 1), (10, 19, 2), (10, 20, 3),
(11, 1, 1), (12, 2, 2), (13, 3, 1), (14, 4, 3),
(11, 5, 1), (11, 6, 2), (12, 7, 1), (12, 8, 3),
(13, 9, 2), (13, 10, 1), (14, 11, 3), (14, 12, 2),
(15, 13, 1), (15, 14, 2), (16, 15, 1), (16, 16, 3),
(17, 17, 2), (17, 18, 1), (18, 19, 3), (18, 20, 2),
(19, 1, 2), (19, 2, 1), (20, 3, 1), (20, 4, 3),
(1, 3, 1), (2, 5, 1), (3, 7, 1), (4, 9, 1),
(5, 11, 1), (6, 13, 1), (7, 15, 1), (8, 17, 1),
(9, 19, 1), (10, 20, 1), (11, 10, 2), (12, 6, 2),
(13, 4, 3), (14, 14, 1), (15, 16, 2), (16, 20, 3),
(17, 9, 2), (18, 12, 3), (19, 18, 1), (20, 8, 1);
