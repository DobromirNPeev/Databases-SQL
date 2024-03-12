/*Напишете заявка, която извежда името на продуцента и имената на
филмите, продуцирани от продуцента на филма ‘Star Wars’.*/

SELECT M.NAME,MOVIE.TITLE
FROM MOVIE JOIN (SELECT MOVIEEXEC.NAME,MOVIEEXEC.CERT#
					FROM MOVIE JOIN MOVIEEXEC ON MOVIE.PRODUCERC#=MOVIEEXEC.CERT#
					WHERE MOVIE.TITLE='Star wars') AS M ON MOVIE.PRODUCERC# = M.CERT#
