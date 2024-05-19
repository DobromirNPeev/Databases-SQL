/*d) UNIQUE ограничение*/

ALTER TABLE Airline 
ADD CONSTRAINT unique_name UNIQUE (name)

ALTER TABLE Airport 
ADD CONSTRAINT unique_airport_name UNIQUE (name, country)