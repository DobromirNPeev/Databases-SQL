/*3. Създайте тригер за таблицата Bookings, който да се задейства при вмъкване на
резервация в таблицата и да увеличава с единица броя на пътниците, потвърдили
резервация за таблицата Flights, както и броя на резервациите към съответната агенция.*/

CREATE TRIGGER trigger_add_reservation
ON BOOKINGS
AFTER INSERT
AS
BEGIN
UPDATE FLIGHTS
SET FLIGHTS.num_pass=(FLIGHTS.num_pass+1)
WHERE FNUMBER IN (SELECT FLIGHT_NUMBER FROM inserted)
UPDATE AGENCIES
SET AGENCIES.num_book=(AGENCIES.num_book+1)
WHERE AGENCIES.NAME IN (SELECT AGENCY FROM inserted)
END