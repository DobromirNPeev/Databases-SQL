--Напишете заявка, която извежда имената на тези кораби, които са били
--повредени в една битка, но по-късно са участвали в друга битка.

SELECT DISTINCT SHIPS.NAME
FROM (SHIPS JOIN (OUTCOMES JOIN OUTCOMES AS O ON OUTCOMES.RESULT != O.RESULT) ON SHIPS.NAME = OUTCOMES.SHIP AND 
 O.SHIP = SHIPS.NAME) JOIN (BATTLES JOIN BATTLES AS B ON BATTLES.DATE < B.DATE) ON OUTCOMES.BATTLE = BATTLES.NAME
 WHERE (OUTCOMES.RESULT = 'damaged' and O.RESULT = 'ok' ) OR (O.RESULT = 'damaged' and OUTCOMES.RESULT = 'ok')