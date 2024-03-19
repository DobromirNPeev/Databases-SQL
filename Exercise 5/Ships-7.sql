/*7. Напишете заявка, която извежда средния калибър на оръдията на корабите за
всяка страна.*/

SELECT CLASSES.COUNTRY,AVG(CLASSES.BORE)
FROM CLASSES JOIN SHIPS ON CLASSES.CLASS =SHIPS.CLASS
GROUP BY CLASSES.COUNTRY