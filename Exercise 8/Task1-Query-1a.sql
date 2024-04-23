/*а) Дефинирайте следните релации:
	Product (maker, model, type), където:
	 модел е низ от точно 4 символа,
	 производител е низ от точно 1 символ,
	 тип е низ до 7 символа;	*/

USE pc

CREATE TABLE Product1 (
	model CHAR(4),
	maker CHAR(1),
	type VARCHAR(7)
);
