--Напишете заявка, която извежда имената на тези актьори (мъже и жени),
--които не са продуценти.

SELECT MOVIESTAR.NAME
FROM MOVIESTAR
WHERE MOVIESTAR.NAME NOT IN(SELECT MOVIEEXEC.NAME
						FROM MOVIEEXEC)