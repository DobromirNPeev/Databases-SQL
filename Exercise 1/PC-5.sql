﻿--Напишете заявка, която извежда модел, честота и размер на диска за
--тези персонални компютри със CD 12x или 16x и цена под 2000 долара.SELECT model,speed,hdFROM pcWHERE cd = '12x' or cd = '16x' and price < 2000