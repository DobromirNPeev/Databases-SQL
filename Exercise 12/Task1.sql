/*Задача 1. Като използвате диаграмата по-долу, създайте базата от данни FurnitureCompany и
дефинирайте схемата на всяка релация. Добавете подходящи ограничения (PK, FK и др.).*/
/*USE master;
ALTER DATABASE FurnitureCompany SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE FurnitureCompany;*/
CREATE DATABASE FurnitureCompany

USE FurnitureCompany

CREATE TABLE Customer(
		Customer_ID INT IDENTITY PRIMARY KEY,
		Customer_Name NVARCHAR(50) NOT NULL,
		Customer_Address NVARCHAR(50),
		Customer_City NVARCHAR(50),
		City_Code INT
);

INSERT INTO Customer values
('Ivan Petrov', 'st. Lavale 8', 'Sofia', '1000'),
('Kameliq Qneva', 'st. Ivan Shishman 3', 'Burgas', '8000'),
('Vasil Dimitrov', 'st. Abadjiiska 87', 'Plovdiv', '4000'),
('Ani Mileva', 'bul. Vladislav Varnenchik 56', 'Varna','9000');

SELECT * FROM Customer

CREATE TABLE Product(
	Product_ID INT PRIMARY KEY,
	Product_Description VARCHAR(50),
	Product_Finish VARCHAR(50),
	Standard_Price DECIMAL(9,2),
	Product_Line_ID INT,
	CHECK (Product_Finish in ('cheresha', 'estestven qsen', 'bql qsen','cherven dyb', 'estestven dyb', 'oreh'))
);

insert into Product values
(1000, 'ofis buro', 'cheresha', 195, 10),
(1001, 'direktorsko buro', 'cherven dyb', 250, 10),
(2000, 'ofic stol', 'cheresha', 75, 20),
(2001, 'direktorski stol', 'estestven dyb', 129, 20),
(3000, 'etajerka za knigi', 'estestven qsen', 85, 30),
(4000, 'nastolna lampa', 'estestven qsen', 35, 40);

SELECT * FROM Product

CREATE TABLE Order_t(
	Order_ID INT PRIMARY KEY,
	Order_Date DATE NOT NULL,
	Customer_ID INT NOT NULL,
	CONSTRAINT fk_cust_id FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

insert into Order_t values
(100, '2013-01-05', 1),
(101, '2013-12-07', 2),
(102, '2014-10-03', 3),
(103, '2014-10-08', 2),
(104, '2015-10-05', 1),
(105, '2015-10-05', 4),
(106, '2015-10-06', 2),
(107, '2016-01-06', 1);
SELECT * FROM Order_t

CREATE TABLE Order_line(
	Order_ID INT NOT NULL,
	Product_ID INT NOT NULL,
	Ordered_Quantity INT NOT NULL,
	CONSTRAINT fk_order_id FOREIGN KEY (Order_ID) REFERENCES Order_t(Order_ID),
	CONSTRAINT fk_product_id FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

insert into Order_line values
(100, 4000, 1),
(101, 1000, 2),
(101, 2000, 2),
(102, 3000, 1),
(102, 2000, 1),
(106, 4000, 1),
(103, 4000, 1),
(104, 4000, 1),
(105, 4000, 1),
(107, 4000, 1);

SELECT * FROM Order_line