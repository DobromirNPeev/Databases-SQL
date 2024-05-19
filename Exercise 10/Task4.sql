/*4. Създайте изглед за таблицата Agencies, който извежда всички данни за агенциите, такива
че телефонните номера на тези агенции да имат стойност NULL. Дефинирайте изгледa с
CHECK OPTION. Тествайте изгледa.*/

CREATE VIEW view_4
AS
SELECT *
FROM AGENCIES
WHERE AGENCIES.PHONE is NULL
WITH CHECK OPTION

