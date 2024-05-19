/*4. Създайте тригер за таблицата Bookings, който да се задейства при изтриване на
резервация в таблицата и да намалява с единица броя на пътниците, потвърдили
резервация за таблицата Flights, както и броя на резервациите към съответната агенция.*/

CREATE TRIGGER trigger_remove_reservation
ON BOOKINGS
AFTER DELETE
AS
BEGIN
UPDATE FLIGHTS
SET FLIGHTS.num_pass=(FLIGHTS.num_pass-1)
WHERE FNUMBER IN (SELECT FLIGHT_NUMBER FROM inserted)
UPDATE AGENCIES
SET AGENCIES.num_book=(AGENCIES.num_book-1)
WHERE AGENCIES.NAME IN (SELECT AGENCY FROM inserted)
END