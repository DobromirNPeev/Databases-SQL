/*1) Създайте базата от данни Flights и дефинирайте схемата на релациите, като
следвате диаграмата:*/

USE Flights

CREATE TABLE Airline(
	code CHAR(2),
	name VARCHAR(20),
	country VARCHAR(30)
)

CREATE TABLE Airport(
	code CHAR(3),
	name VARCHAR(20),
	country VARCHAR(50),
	city VARCHAR(30)
)

CREATE TABLE Airplane(
	code CHAR(3),
	type VARCHAR(20),
	seats INT,
	year INT,
)

CREATE TABLE Flight(
	fnumber INT,
	airline_operator CHAR(2),
	dep_airport CHAR(3),
	arr_airport CHAR(3),
	flight_time TIME,
	flight_duration INT,
	airplane CHAR(3)
)

CREATE TABLE Customer(
	id INT,
	fname VARCHAR(30),
	lname VARCHAR(30),
	email VARCHAR(50)
)

CREATE TABLE Agency(
	name VARCHAR(50),
	country VARCHAR(50),
	city VARCHAR(50),
	phone VARCHAR(20)
)

CREATE TABLE Booking(
	code CHAR(6),
	agency VARCHAR(50),
	airline_code CHAR(2),
	flight_number INT,
	customer_id INT,
	booking_date DATETIME,
	flight_date DATETIME,
	price DECIMAL(9,2),
	status INT
)