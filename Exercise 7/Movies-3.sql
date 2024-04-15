/*3. Да се изтрие информацията за всички филмови звезди, за които не се знае адреса.*/

DELETE FROM MOVIESTAR
WHERE MOVIESTAR.ADDRESS IS NULL