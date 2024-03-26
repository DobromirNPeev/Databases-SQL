/*5. Напишете заявка, която за всяко студио извежда име на студиото и заглавие
на филма, излязъл последно на екран за това студио.*/

SELECT MOVIE.STUDIONAME,MOVIE.TITLE,MOVIE.YEAR
FROM MOVIE
WHERE MOVIE.YEAR >= ALL (SELECT MO.YEAR FROM MOVIE AS MO WHERE MOVIE.STUDIONAME = MO.STUDIONAME)
ORDER BY MOVIE.STUDIONAME DESC
