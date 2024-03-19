/*2. Напишете заявка, която извежда средния брой оръдия за всеки клас боен кораб.*/

SELECT CLASSES.CLASS,AVG(CLASSES.NUMGUNS)
FROM CLASSES
WHERE CLASSES.TYPE ='bb'
GROUP BY CLASSES.CLASS