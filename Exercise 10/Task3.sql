/*3. Създайте изглед за таблицата Agencies, който извежда всички данни за агенциите от град
София. Дефинирайте изгледa с CHECK OPTION. Тествайте изгледa.*/

CREATE VIEW view_3
AS
SELECT *
FROM AGENCIES
WHERE AGENCIES.CITY='Sofia'
WITH CHECK OPTION