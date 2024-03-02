--Напишете заявка, която извежда производителите на принтери без
--повторения

SELECT DISTINCT maker
FROM product
WHERE type = 'Printer' 