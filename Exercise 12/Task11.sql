/*Задача 11. Изведете всички битки, в които са участвали същите страни, като страните в битката при
Guadalcanal.
Възможен вариант за решаване: Създайте изглед, съдържащ всички битки и участващите в тях
страни. След това напишете заявка, като използвате и изгледа.*/

CREATE VIEW all_battles_with_ships
AS
SELECT DISTINCT BATTLES.NAME,CLASSES.COUNTRY
FROM BATTLES JOIN OUTCOMES ON BATTLES.NAME=OUTCOMES.BATTLE JOIN SHIPS ON SHIPS.NAME=OUTCOMES.SHIP JOIN CLASSES ON CLASSES.CLASS=SHIPS.CLASS

SELECT DISTINCT all_battles_with_ships.NAME
FROM all_battles_with_ships
WHERE all_battles_with_ships.COUNTRY IN (SELECT all_battles_with_ships.COUNTRY
										 FROM all_battles_with_ships
										 WHERE all_battles_with_ships.NAME='Guadalcanal')