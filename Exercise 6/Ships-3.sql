/*3. Напишете заявка, която извежда държавата и броя на потъналите кораби за
тази държава. Държави, които нямат кораби или имат кораб, но той не е
участвал в битка, също да бъдат изведени.*/

SELECT CLASSES.COUNTRY,COUNT(OUTCOMES.RESULT)
FROM SHIPS RIGHT JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS LEFT JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE OUTCOMES.RESULT = 'sunk' OR OUTCOMES.RESULT IS NULL
GROUP BY CLASSES.COUNTRY