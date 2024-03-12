/*Изведете имената на всички потънали в битка кораби, името и дата на
провеждане на битките, в които те са потънали. Подредете резултата по
име на битката.*/

SELECT SHIPS.NAME,BATTLES.NAME,BATTLES.DATE
FROM SHIPS JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP JOIN BATTLES ON OUTCOMES.BATTLE = BATTLES.NAME
WHERE OUTCOMES.RESULT = 'sunk'