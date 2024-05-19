/*1. Добавете нова колона num_pass към таблицата Flights, която ще съдържа броя на
пътниците, потвърдили резервация за съответния полет.
2. Добавете нова колона num_book към таблицата Agencies, която ще съдържа броя на
резервациите към съответната агенция.*/

ALTER TABLE FLIGHTS
ADD num_pass INT NOT NULL DEFAULT 0

ALTER TABLE AGENCIES
ADD num_book INT NOT NULL DEFAULT 0