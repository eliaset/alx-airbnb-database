-- Create index on Users table for faster email lookup
CREATE INDEX idx_users_email ON users (email);

-- Create indexes on Bookings table for join and filter optimization
CREATE INDEX idx_bookings_user_id ON bookings (user_id);
CREATE INDEX idx_bookings_property_id ON bookings (property_id);
CREATE INDEX idx_bookings_status ON bookings (status);

-- Create indexes on Properties table for search filters
CREATE INDEX idx_properties_city ON properties (city);
CREATE INDEX idx_properties_price ON properties (price);
CREATE INDEX idx_properties_host_id ON properties (host_id);
