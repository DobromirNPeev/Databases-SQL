/*2. Напишете заявка, която извежда име и държава на всички кораби, които
никога не са потъвали в битка (може и да не са участвали).*/

SELECT DISTINCT SHIPS.NAME,CLASSES.COUNTRY
FROM SHIPS JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS LEFT JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE OUTCOMES.RESULT !='sunk' OR OUTCOMES.RESULT IS NULL
