--Напишете заявка, която извежда код, модел и цена на принтерите с найвисока цена.

SELECT printer.code,printer.model,printer.price
FROM printer
WHERE printer.price >= ALL (SELECT P.price
							FROM printer AS P)