/*1. Напишете заявка, която извежда всички модели лаптопи, за които се
предлагат както разновидности с 15" екран, така и с 11" екран.*/

SELECT laptop.model,laptop.code,laptop.screen
FROM laptop
WHERE laptop.screen = 11 OR laptop.screen=15