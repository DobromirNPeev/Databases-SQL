/*Изведете името, водоизместимостта и броя оръдия на корабите,
участвали в битката ‘North Atlantic’, а също и резултата от битката.*/

SELECT SHIPS.NAME,CLASSES.DISPLACEMENT,CLASSES.NUMGUNS,OUTCOMES.RESULT
FROM CLASSES LEFT JOIN SHIPS ON CLASSES.CLASS = SHIPS.CLASS JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE OUTCOMES.BATTLE = 'North Atlantic'