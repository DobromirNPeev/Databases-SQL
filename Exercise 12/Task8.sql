/*Задача 8. Съставете изгледи, съдържащи имената на битките, които са по-мащабни от битката при
Guadalcanal. Под по-мащабна битка се разбира:
a) битка с повече участващи кораби;
b) битка с повече участващи страни.
Като използвате изгледите, напишете заявки, които извеждат съответните битки.*/

CREATE VIEW massive_battles
AS
SELECT OUTCOMES.BATTLE
FROM OUTCOMES JOIN SHIPS ON OUTCOMES.SHIP=SHIPS.NAME JOIN CLASSES ON CLASSES.CLASS = SHIPS.CLASS
GROUP BY OUTCOMES.BATTLE
HAVING COUNT(SHIPS.NAME)> (SELECT COUNT(SHIPS.NAME)
							FROM OUTCOMES JOIN SHIPS ON OUTCOMES.SHIP=SHIPS.NAME JOIN CLASSES ON CLASSES.CLASS = SHIPS.CLASS
							WHERE OUTCOMES.BATTLE='Guadalcanal'
							GROUP BY OUTCOMES.BATTLE) AND COUNT(DISTINCT CLASSES.COUNTRY) > (SELECT COUNT(DISTINCT CLASSES.COUNTRY)
																							FROM OUTCOMES JOIN SHIPS ON OUTCOMES.SHIP=SHIPS.NAME JOIN CLASSES ON CLASSES.CLASS = SHIPS.CLASS
																							WHERE OUTCOMES.BATTLE='Guadalcanal'
																							GROUP BY OUTCOMES.BATTLE)