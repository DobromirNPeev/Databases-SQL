/*8. Изведете име на корабите, които са били увредени в битка, но са били
поправени и по-късно са победили в по-мащабна битка (с повече кораби).*/

SELECT OUTCOMES.SHIP
FROM  OUTCOMES JOIN BATTLES ON OUTCOMES.BATTLE = BATTLES.NAME
WHERE OUTCOMES.RESULT = 'ok' AND BATTLES.DATE > (SELECT B.DATE 
												FROM OUTCOMES AS O JOIN BATTLES AS B ON O.BATTLE = B.NAME 
												WHERE O.RESULT = 'damaged' AND OUTCOMES.SHIP = O.SHIP AND (SELECT COUNT(OU.BATTLE)
																											FROM OUTCOMES AS OU
																											WHERE OU.BATTLE = BATTLES.NAME
																											GROUP BY OU.BATTLE) > (SELECT COUNT(OU.BATTLE)
																																	FROM OUTCOMES AS OU
																																	WHERE OU.BATTLE= B.NAME
																																	GROUP BY OU.BATTLE))
