﻿/*6. Напишете заявка, която извежда броя на корабите, потънали в битка според
класа, за тези класове с повече от 2 кораба.*/

SELECT SHIPS.CLASS,COUNT(SHIPS.NAME)
FROM SHIPS JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE OUTCOMES.RESULT = 'sunk' AND SHIPS.CLASS IN (SELECT SHIPS.CLASS
		FROM SHIPS 
		GROUP BY SHIPS.CLASS
		HAVING COUNT(SHIPS.NAME)>2)
GROUP BY SHIPS.CLASS
