/*e) CHECK ограничение*/

ALTER TABLE Airplane
ADD CONSTRAINT check_seats
CHECK (seats>0)

ALTER TABLE Booking
ADD CONSTRAINT check_booking_date
CHECK (flight_date >= booking_date)

ALTER TABLE Customer
ADD CONSTRAINT check_email
CHECK(email LIKE '%@%.%' AND LEN(email)>=6)

ALTER TABLE Booking
ADD CONSTRAINT check_status
CHECK (status IN (0,1))