/*5. Напишете заявка, която извежда броя на корабите, потънали в битка според
класа.*/

SELECT SHIPS.CLASS,COUNT(SHIPS.NAME) as sunk
FROM SHIPS JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE OUTCOMES.RESULT = 'sunk'
GROUP BY SHIPS.CLASS