#오늘날짜
SELECT sysdate FROM dual;

SELECT sysdate+1, sysdate-2
FROM dual;

SELECT sysdate+1, sysdate-2
FROM y_emp;

SELECT sysdate+1/24, sysdate+2/24
FROM dual;
ALTER SESSION SET nls_date_format = 'yyyy/mm/dd hh24:mi:ss';
SELECT sysdate FROM dual;

--WHERE 절은 한번만 사용 가능
SELECT *
FROM y_emp
WHERE emp_name >'송강호';

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE dept_id = 100;

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE position = '부사장';

SELECT emp_id, emp_name, birthdate, hiredate
FROM y_emp;

SELECT emp_id, emp_name, Salary, hiredate
FROM y_emp
WHERE hiredate = '2001/03/19';

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE emp_name = '김 혜수' ;

SELECT emp_id, emp_name, position, dept_id
FROM y_emp
WHERE position  = '부사장';

SELECT emp_id, emp_name, Salary, hiredate
FROM y_emp
WHERE hiredate = '01/03/19';

SELECT emp_id, emp_name, Salary, salary*12 AS ann_sal
FROM y_emp
WHERE salary*12 > 8000;

SELECT emp_id, emp_name, Salary, salary*12 AS ann_sal
FROM y_emp
WHERE ann_sal > 8000;

SELECT emp_name , salary
FROM y_emp
WHERE salary BETWEEN 600 AND 700;

SELECT emp_id, emp_name, salary, mgr_id
FROM y_emp
WHERE mgr_id IN (1001,1002,1003);

SELECT emp_name, position, dept_id
FROM y_emp
WHERE position IN('부장','차장');

SELECT *
FROM pay_grade;