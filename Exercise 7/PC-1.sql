﻿/*4. Използвайте две INSERT заявки. Съхранете в базата данни факта, че персонален компютър
модел 1100 е направен от производителя C, има процесор 2400 MHz, RAM 2048 MB, твърд диск
500 GB, 52x оптично дисково устройство и струва $299. Нека новият компютър има код 12.
Забележка: модел и CD са от тип низ.*/

INSERT INTO pc(code,model,speed,ram,hd,cd,price)
VALUES(12,'1100',2400,2048,500,'52x',299)

INSERT INTO product(model,maker,type)
VALUES('1100','C','PC')
