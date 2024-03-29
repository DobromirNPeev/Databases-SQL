﻿/*7. Напишете заявка, която извежда име на актьор и име на студио за тези
актьори, участвали в най-много филми на това студио.*/

SELECT MOVIE.STUDIONAME,STARSIN.STARNAME,COUNT(STARSIN.STARNAME) AS num_of_movies
FROM STARSIN JOIN MOVIE ON STARSIN.MOVIETITLE = MOVIE.TITLE
GROUP BY MOVIE.STUDIONAME,STARSIN.STARNAME
HAVING COUNT(STARSIN.STARNAME) >= ALL (SELECT COUNT(M.STUDIONAME) FROM STARSIN AS S JOIN MOVIE AS M ON M.TITLE=S.MOVIETITLE GROUP BY S.STARNAME)