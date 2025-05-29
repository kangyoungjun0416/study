SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE dept_id IS NULL;

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE dept_id = NULL;

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE dept_id = 3000;

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE dept_id IS NOT NULL;

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE position = '사원'
AND dept_id = 400;

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE position = '사원'
OR dept_id = 400;

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE position IN ('과장','대리','사원');

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE position NOT IN ('과장','대리','사원');

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE emp_name LIKE '김%';

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE emp_name NOT LIKE '김%';

SELECT emp_id, emp_name, position, dept_id, salary
FROM y_emp
WHERE salary BETWEEN 400 AND 600;

SELECT emp_id, emp_name, position, dept_id, salary
FROM y_emp
WHERE salary NOT BETWEEN 400 AND 600
ORDER BY salary;

SELECT emp_id, emp_name, position, dept_id, salary
FROM y_emp
WHERE position = '차장'
OR position = '부장'
AND salary > 700;

SELECT emp_id, emp_name, position, dept_id, salary
FROM y_emp
WHERE (position = '차장'
OR position = '부장')
AND salary > 700;

SELECT emp_id, emp_name, position, dept_id, salary
FROM y_emp
WHERE position IN ('차장','부장')
AND salary > 700;

SELECT emp_id, emp_name, position, dept_id, salary, hiredate
FROM y_emp
ORDER BY hiredate;

SELECT emp_id, emp_name, position, dept_id, salary, hiredate
FROM y_emp
ORDER BY hiredate DESC;

SELECT emp_id, emp_name, position, dept_id, salary, hiredate
FROM y_emp
ORDER BY dept_id, salary;

SELECT emp_id, emp_name, position, dept_id, salary, hiredate
FROM y_emp
ORDER BY dept_id, salary DESC;

SELECT emp_id, emp_name, position, dept_id, salary*12 AS 연봉, hiredate
FROM y_emp
ORDER BY salary*12;

SELECT emp_id, emp_name, position, dept_id, salary*12 AS 연봉, hiredate
FROM y_emp
ORDER BY 연봉;

SELECT emp_id, emp_name, position, dept_id, salary*12 AS 연봉, hiredate
FROM y_emp
ORDER BY 5;

SELECT emp_id, emp_name, position, dept_id, salary*12 AS 연봉, hiredate
FROM y_emp
WHERE salary*12 > 5000
ORDER BY 5;

SELECT emp_id, emp_name, position, dept_id, salary*12 AS 연봉, hiredate
FROM y_emp
WHERE 연봉 > 5000
ORDER BY 5;