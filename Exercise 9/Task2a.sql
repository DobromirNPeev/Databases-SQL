﻿/*2) За отделните релации задайте подходящи:
a) първичен ключ */

ALTER TABLE Airline 
ALTER COLUMN code CHAR(2) NOT NUll 
ALTER TABLE Airline
ADD CONSTRAINT pk_airline PRIMARY KEY (code)

ALTER TABLE Airport
ALTER COLUMN code CHAR(3) NOT NUll 
ALTER TABLE Airport
ADD CONSTRAINT pk_airport PRIMARY KEY (code)

ALTER TABLE Airplane
ALTER COLUMN code CHAR(3) NOT NUll 
ALTER TABLE Airplane
ADD CONSTRAINT pk_airplane PRIMARY KEY (code)

ALTER TABLE Flight
ALTER COLUMN fnumber INT NOT NUll 
ALTER TABLE Flight
ADD CONSTRAINT pk_flight PRIMARY KEY (fnumber)

ALTER TABLE Customer
ALTER COLUMN id INT NOT NUll 
ALTER TABLE Customer
ADD CONSTRAINT pk_customer PRIMARY KEY (id)

ALTER TABLE Agency
ALTER COLUMN name VARCHAR(50) NOT NUll 
ALTER TABLE Agency
ADD CONSTRAINT pk_agency PRIMARY KEY (name)

ALTER TABLE Booking
ALTER COLUMN code CHAR(6) NOT NUll
ALTER TABLE Booking
ADD CONSTRAINT pk_booking PRIMARY KEY (code)