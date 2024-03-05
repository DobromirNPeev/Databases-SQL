--Напишете заявка, която извежда класа и името на корабите, чиито брой
--оръдия е по-голям или равен на този на корабите със същия калибър
--оръдия.

SELECT SHIPS.CLASS,SHIPS.NAME
FROM CLASSES JOIN SHIPS ON SHIPS.CLASS =CLASSES.CLASS 
WHERE CLASSES.NUMGUNS >= ALL (SELECT NESTED.NUMGUNS
							 FROM CLASSES AS NESTED
							 WHERE CLASSES.BORE = NESTED.BORE)
ORDER BY SHIPS.CLASS ASC