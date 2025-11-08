--Inner Join--
SELECT 
    b.id AS booking_id,
    u.name AS user_name
FROM bookings AS b
INNER JOIN users AS u ON b.user_id = u.id;

--Left Join--

SELECT 
    p.id AS property_id,
    p.title,
    r.rating,
FROM properties AS p
LEFT JOIN reviews AS r ON p.id = r.property_id
ORDER BY property_id ASC;

--FULL OUTER JOIN--

SELECT 
    u.name AS user_name,
    b.id AS booking_id,
FROM users AS u
LEFT JOIN bookings AS b ON u.id = b.user_id

UNION

SELECT 
    u.name AS user_name,
    b.id AS booking_id,
FROM users AS u
RIGHT JOIN bookings AS b ON u.id = b.user_id;