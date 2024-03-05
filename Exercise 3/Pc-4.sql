--Напишете заявка, която извежда модела и цената на продукта (PC,
--лаптоп или принтер) с най-висока цена

SELECT pc.model,pc.price
FROM pc
WHERE pc.price >= ALL (SELECT pc.price
						FROM pc
						UNION
						SELECT laptop.price
						FROM laptop
						UNION
						SELECT printer.price
						FROM printer)
UNION
SELECT laptop.model,laptop.price
FROM laptop
WHERE laptop.price >= ALL (SELECT pc.price
						FROM pc
						UNION
						SELECT laptop.price
						FROM laptop
						UNION
						SELECT printer.price
						FROM printer)
UNION
SELECT printer.model,printer.price
FROM printer
WHERE printer.price >= ALL (SELECT pc.price
						FROM pc
						UNION
						SELECT laptop.price
						FROM laptop
						UNION
						SELECT printer.price
						FROM printer)