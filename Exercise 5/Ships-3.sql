/*3. Напишете заявка, която извежда средния брой оръдия за всички бойни кораби.*/

SELECT AVG(CLASSES.NUMGUNS) AS avgnumguns
FROM CLASSES