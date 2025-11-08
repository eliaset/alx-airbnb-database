--find the total number of bookings made by each user--

SELECT 
    u.id AS user_id,
    u.name,
    COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name


--rank properties based on the total number of bookings they have received--

SELECT 
    p.id AS property_id,
    p.title,
    COUNT(b.id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.title;

SELECT 
    p.id AS property_id,
    p.title,
    AVG(r.rating) AS avg_rating,
    RANK() OVER (ORDER BY AVG(r.rating) DESC) AS rating_rank
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
GROUP BY p.id, p.title;