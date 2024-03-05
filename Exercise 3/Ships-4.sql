--Напишете заявка, която извежда имената на битките, в които са
--участвали кораби от клас ‘Kongo’.

SELECT OUTCOMES.BATTLE
FROM (SELECT *
	  FROM SHIPS
	  WHERE CLASS = 'Kongo') AS S JOIN OUTCOMES ON S.NAME = OUTCOMES.SHIP