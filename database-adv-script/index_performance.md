\## SQL Index Commands



```sql

-- Users table

CREATE INDEX idx\_users\_email ON users (email);



-- Bookings table

CREATE INDEX idx\_bookings\_user\_id ON bookings (user\_id);

CREATE INDEX idx\_bookings\_property\_id ON bookings (property\_id);

CREATE INDEX idx\_bookings\_status ON bookings (status);



-- Properties table

CREATE INDEX idx\_properties\_city ON properties (city);

CREATE INDEX idx\_properties\_price ON properties (price);

CREATE INDEX idx\_properties\_host\_id ON properties (host\_id);

