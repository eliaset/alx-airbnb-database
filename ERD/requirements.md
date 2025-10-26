 Diagram for Airbnb Database

This ERD represents the database design for the ALX Airbnb project.

## Entities
- User
- Property
- Booking
- Payment
- Review
- Message

## Relationships
- One User (host) can own many Properties.
- One User (guest) can make many Bookings.
- Each Booking belongs to one Property and one User.
- Each Booking has one Payment.
- Each Property and User can have many Reviews.
- Messages link Users through sender_id and recipient_id.
