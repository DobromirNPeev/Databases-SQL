/*Задача 10. Изтрийте от таблицата Outcomes всички записи, в които участва кораб, потапян поне два
пъти и резултатът от съответната битка е 'sunk'.*/

INSERT INTO outcomes VALUES ('Missouri','Surigao Strait', 'sunk'),
('Missouri','North Cape', 'sunk'),
('Missouri','North Atlantic', 'ok');

DELETE FROM OUTCOMES
WHERE OUTCOMES.SHIP IN (SELECT OUTCOMES.SHIP	
					FROM OUTCOMES
					WHERE OUTCOMES.RESULT='sunk'
					GROUP BY OUTCOMES.SHIP
					HAVING COUNT(OUTCOMES.RESULT)=2)