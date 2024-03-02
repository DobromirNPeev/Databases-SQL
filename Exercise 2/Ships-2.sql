--Напишете заявка, която извежда имената, водоизместимостта и броя оръдия на
--всички кораби, участвали в битката при Guadalcanal.SELECT DISTINCT SHIPS.NAME,CLASSES.DISPLACEMENT,CLASSES.NUMGUNS
FROM (SHIPS JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS) JOIN (BATTLES JOIN OUTCOMES ON OUTCOMES.BATTLE = BATTLES.NAME) ON SHIPS.NAME = OUTCOMES.SHIP
WHERE BATTLES.NAME = 'Guadalcanal'