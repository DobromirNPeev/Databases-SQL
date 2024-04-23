/*в) Добавете към релацията Printer атрибути:
	 type - низ до 6 символа (забележка: type може да приема
	стойност 'laser', 'matrix' или 'jet'),
	 color - низ от точно 1 символ, стойност по подразбиране 'n'
	(забележка: color може да приема стойност 'y' или 'n').*/

USE pc

ALTER TABLE Printer1
ADD type VARCHAR(6)

ALTER TABLE Printer1
ADD color CHAR(1) DEFAULT 'n'

