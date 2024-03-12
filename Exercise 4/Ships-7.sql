/*Намерете всички класове кораби, от които няма пуснат на вода нито един
кораб.*/SELECT *FROM CLASSES LEFT JOIN SHIPS ON CLASSES.CLASS = SHIPS.CLASSWHERE SHIPS.CLASS IS NULL