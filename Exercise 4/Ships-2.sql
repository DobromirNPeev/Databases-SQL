﻿/*Повторете горната заявка, като този път включите в резултата и
класовете, които нямат кораби, но съществуват кораби със същото име
като тяхното.*/SELECT *
FROM SHIPS RIGHT JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS 