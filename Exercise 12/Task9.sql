/*Задача 9. Изтрийте от таблицата Outcomes всички битки, в които е участвал един единствен кораб.*/

DELETE FROM OUTCOMES
WHERE OUTCOMES.BATTLE IN(
				SELECT OUTCOMES.BATTLE
				FROM OUTCOMES JOIN SHIPS ON SHIPS.NAME=OUTCOMES.SHIP
				GROUP BY OUTCOMES.BATTLE
				HAVING COUNT(SHIPS.NAME) = 1)