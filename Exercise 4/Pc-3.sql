/*Намерете размерите на тези твърди дискове, които се появяват в два
или повече модела лаптопи.*/

SELECT DISTINCT laptop.hd
FROM laptop JOIN laptop AS laptop1 ON laptop.code != laptop1.code and laptop.hd = laptop1.hd