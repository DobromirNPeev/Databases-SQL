--Напишете заявка, която извежда имената на продуцентите, които са
--продуцирали филми на студио MGM.

SELECT DISTINCT NAME
FROM MOVIE JOIN MOVIEEXEC
ON PRODUCERC# = CERT#
WHERE STUDIONAME = 'MGM'