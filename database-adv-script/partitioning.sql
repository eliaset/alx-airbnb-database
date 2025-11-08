CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20),
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES Users(id),
    CONSTRAINT fk_property FOREIGN KEY(property_id) REFERENCES Properties(id)
) PARTITION BY RANGE (start_date);