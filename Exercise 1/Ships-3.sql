--Напишете заявка, която извежда имената на корабите потънали в битка и
--имената на съответните битки

SELECT OUTCOMES.SHIP, OUTCOMES.BATTLE
FROM OUTCOMES
WHERE RESULT = 'sunk'