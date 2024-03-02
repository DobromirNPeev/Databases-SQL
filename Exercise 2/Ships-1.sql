--Напишете заявка, която извежда името на корабите с водоизместимост над
--50000.

SELECT SHIPS.NAME
FROM SHIPS JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS
WHERE CLASSES.DISPLACEMENT > 50000