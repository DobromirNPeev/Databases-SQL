﻿--Напишете заявка, която извежда модел, честота и размер на диска за
--всички персонални компютри с цена под 1200 долара. Задайте
--псевдоними за атрибутите честота и размер на диска, съответно MHz и
--GB
SELECT model,speed as MHz,hd as GB
FROM pc
WHERE price < 1200