--Напишете заявка, която извежда имената на актьорите, които са
--участвали във филм от 1980 или във филм, в чието заглавие има думата
--‘Knight’

SELECT STARNAME
FROM STARSIN
WHERE MOVIEYEAR = 1980 OR MOVIETITLE LIKE '%Knight%'