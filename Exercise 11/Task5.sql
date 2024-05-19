/*5. Създайте тригер за таблицата Bookings, който да се задейства при обновяване на
резервация в таблицата и да увеличава или намалява с единица броя на пътниците,
потвърдили резервация за таблицата Flights при промяна на статуса на резервацията*/

CREATE TRIGGER trigger_3
ON BOOKINGS
AFTER UPDATE
AS
BEGIN
UPDATE Flight
SET numpass=(numpass-1)
WHERE fnumber IN (SELECT flight_number FROM deleted WHERE status=1) and 
fnumber IN (SELECT flight_number FROM inserted WHERE status=0);
UPDATE Flight
SET numpass=(numpass+1)
WHERE fnumber IN (SELECT flight_number FROM deleted WHERE status=0) and 
fnumber IN (SELECT flight_number FROM inserted WHERE status=1);
END