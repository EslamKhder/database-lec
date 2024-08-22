SELECT count(*),
       count(commission_pct),
       count(nvl(commission_pct,0))
FROM employees;