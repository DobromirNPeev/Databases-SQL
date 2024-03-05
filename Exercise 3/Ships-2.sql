--Напишете заявка, която извежда класовете, за които поне един от
--корабите е потънал в битка.

SELECT DISTINCT SHIPS.CLASS
FROM SHIPS JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE SHIPS.NAME IN (SELECT OUTCOMES.SHIP
					  FROM OUTCOMES
					  WHERE OUTCOMES.RESULT = 'sunk')