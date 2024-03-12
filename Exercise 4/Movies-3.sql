/*Напишете заявка, която извежда името на студиото и имената на
актьорите, участвали във филми, произведени от това студио, подредени
по име на студио*/

SELECT DISTINCT STUDIONAME,STARNAME
FROM STARSIN JOIN MOVIE ON STARSIN.MOVIETITLE=MOVIE.TITLE JOIN STUDIO ON MOVIE.STUDIONAME=STUDIO.NAME
ORDER BY STUDIONAME