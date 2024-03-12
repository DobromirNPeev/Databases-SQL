/*Напишете заявка, която извежда имената на продуцентите на филмите, в
които е участвал ‘Harrison Ford’.*/

SELECT MOVIEEXEC.NAME
FROM MOVIEEXEC JOIN (SELECT DISTINCT MOVIE.PRODUCERC#
					FROM MOVIE JOIN STARSIN 
					ON MOVIE.TITLE= STARSIN.MOVIETITLE
					WHERE STARSIN.STARNAME = 'Harrison Ford') AS M ON MOVIEEXEC.CERT# = M.PRODUCERC#