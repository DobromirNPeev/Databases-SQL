--Напишете заявка, която извежда страните, чиито кораби са с най-голям
--брой оръдия.

SELECT DISTINCT CLASSES.COUNTRY
FROM CLASSES
WHERE CLASSES.NUMGUNS >= ALL (SELECT CLASSES.NUMGUNS
							  FROM CLASSES)