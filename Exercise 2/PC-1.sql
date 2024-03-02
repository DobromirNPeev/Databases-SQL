--Напишете заявка, която извежда производителя и честотата на лаптопите с
--размер на диска поне 9 GB.

SELECT MAKER, SPEED
FROM laptop JOIN product 
ON product.model = laptop.model
WHERE hd > 9