CREATE TABLE users (
	    user_id SERIAL PRIMARY KEY,
	    first_name VARCHAR(100) NOT NULL,
	    last_name VARCHAR(100) NOT NULL,
	    email VARCHAR(150) UNIQUE NOT NULL,
	    phone VARCHAR(20),
	    password VARCHAR(255) NOT NULL,
	    role VARCHAR(20) CHECK (role IN ('guest', 'host')),
	    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE properties (
	    property_id SERIAL PRIMARY KEY,
	    host_id INT NOT NULL,
	    title VARCHAR(255) NOT NULL,
	    description TEXT,
	    location VARCHAR(255),
	    price_per_night DECIMAL(10,2) NOT NULL,
	    status VARCHAR(20) DEFAULT 'available',
	    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    FOREIGN KEY (host_id) REFERENCES users(user_id)
);

CREATE TABLE bookings (
	    booking_id SERIAL PRIMARY KEY,
	    user_id INT NOT NULL,
	    property_id INT NOT NULL,
	    check_in_date DATE NOT NULL,
	    check_out_date DATE NOT NULL,
	    status VARCHAR(20) DEFAULT 'pending',
	    total_amount DECIMAL(10,2) NOT NULL,
	    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    FOREIGN KEY (user_id) REFERENCES users(user_id),
	    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);

CREATE TABLE payments (
	    payment_id SERIAL PRIMARY KEY,
	    booking_id INT UNIQUE NOT NULL,
	    payment_date DATE NOT NULL,
	    amount DECIMAL(10,2) NOT NULL,
	    payment_method VARCHAR(50),
	    status VARCHAR(20),
	    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

CREATE TABLE reviews (
	    review_id SERIAL PRIMARY KEY,
	    booking_id INT UNIQUE NOT NULL,
	    user_id INT NOT NULL,
	    rating INT CHECK (rating BETWEEN 1 AND 5),
	    comment TEXT,
	    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
	    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
