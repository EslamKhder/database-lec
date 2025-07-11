SELECT count(*),
       count(commission_pct),
       count(nvl(commission_pct,0))
FROM employees;



1 2 3 4 5 6 7 8 9 10


9 - 2 = 7