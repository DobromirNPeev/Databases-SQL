/*2. Да се изтрият всички продуценти с нетни активи под 30 милиона.*/

DELETE FROM MOVIEEXEC
WHERE MOVIEEXEC.NETWORTH < 30000000
