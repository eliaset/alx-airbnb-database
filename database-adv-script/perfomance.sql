--Before--

EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.status,
    u.name AS user_name,
    u.email AS user_email,
    p.title AS property_title,
    p.city,
    pay.amount,
    pay.payment_method,
    pay.status AS payment_status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

--After--

EXPLAIN ANALYZE
SELECT 
    b.id,
    b.status,
    u.name,
    p.title,
    pay.amount
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
INNER JOIN properties p ON b.property_id = p.id
INNER JOIN payments pay ON pay.booking_id = b.id
WHERE b.status = 'confirmed';