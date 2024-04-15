/*11. Изтрийте от таблицата Ships всички кораби, които са потънали в битка.*/
s
DELETE FROM SHIPS
WHERE SHIPS.NAME IN (SELECT SHIPS.NAME
					FROM SHIPS JOIN OUTCOMES ON SHIPS.NAME=OUTCOMES.SHIP
					WHERE OUTCOMES.RESULT='sunk')