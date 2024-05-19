/*b) ограничения за референтна цялостност*/

ALTER TABLE Flight
ADD CONSTRAINT fk_airline FOREIGN KEY (airline_operator) REFERENCES Airline(code)

ALTER TABLE Flight
ADD CONSTRAINT fk_dep_airport FOREIGN KEY (dep_airport) REFERENCES Airport(code)

ALTER TABLE Flight
ADD CONSTRAINT fk_arr_airport FOREIGN KEY (arr_airport) REFERENCES Airport(code)

ALTER TABLE Flight
ADD CONSTRAINT fk_airplane FOREIGN KEY (airplane) REFERENCES Airplane(code)

ALTER TABLE Booking
ADD CONSTRAINT fk_agency FOREIGN KEY (agency) REFERENCES Agency(name)

ALTER TABLE Booking
ADD CONSTRAINT fk_airline_code FOREIGN KEY (airline_code) REFERENCES airline(code)

ALTER TABLE Booking
ADD CONSTRAINT fk_flight_number FOREIGN KEY (flight_number) REFERENCES Flight(fnumber)

ALTER TABLE Booking
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES Customer(id)
