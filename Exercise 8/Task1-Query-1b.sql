/* а) Дефинирайте следните релации:
		Printer (code, model, price), където:
		 код е цяло число,
		 модел е низ от точно 4 символа,
		 цена с точност до два знака след десетичната запетая;*/

USE pc

CREATE TABLE Printer1 (
	code INT,
	model CHAR(4),
	price DECIMAL(7,2)
);