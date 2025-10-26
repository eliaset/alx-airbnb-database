SEED SCRIPT FOR AIRBNB DATABASE

-- ======================
-- USERS
-- ======================
INSERT INTO users (first_name, last_name, email, phone, password, role)
VALUES
('Elias', 'Hussen', 'elias@example.com', '+251912345678', 'hashedpassword1', 'host'),
('Abebe', 'Tesfaye', 'Abebe@example.com', '+251911223344', 'hashedpassword2', 'host'),
('John', 'Doe', 'john@example.com', '+251911111111', 'hashedpassword3', 'guest'),
('Sara', 'Henok', 'sara@example.com', '+251900000000', 'hashedpassword4', 'guest');

-- ======================
-- PROPERTIES
-- ======================
INSERT INTO properties (host_id, title, description, location, price_per_night, status)
VALUES
(1, 'Modern Apartment in Addis Ababa', 'A cozy 2-bedroom apartment near Bole.', 'Addis Ababa, Ethiopia', 75.00, 'available'),
(1, 'Lake House Retreat', 'Peaceful house with lake view and private garden.', 'Bahir Dar, Ethiopia', 120.00, 'available'),
(2, 'City Center Studio', 'Compact studio near restaurants and shops.', 'Adama, Ethiopia', 50.00, 'available');

-- ======================
-- BOOKINGS
-- ======================
INSERT INTO bookings (user_id, property_id, check_in_date, check_out_date, status, total_amount)
VALUES
(3, 1, '2025-11-01', '2025-11-05', 'completed', 300.00),
(4, 2, '2025-12-10', '2025-12-13', 'pending', 360.00),
(3, 3, '2025-12-15', '2025-12-17', 'cancelled', 100.00);

-- ======================
-- PAYMENTS
-- ======================
INSERT INTO payments (booking_id, payment_date, amount, payment_method, status)
VALUES
(1, '2025-11-01', 300.00, 'credit_card', 'completed'),
(2, '2025-12-10', 360.00, 'paypal', 'pending'),
(3, '2025-12-14', 100.00, 'credit_card', 'refunded');

-- ======================
-- REVIEWS
-- ======================
INSERT INTO reviews (booking_id, user_id, rating, comment)
VALUES
(1, 3, 5, 'Amazing stay! Super clean and friendly host.'),
(2, 4, 4, 'Nice view and comfortable bed, but Wi-Fi was slow.');

