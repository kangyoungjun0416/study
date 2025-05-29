SELECT LOWER('OREACLE Database'), UPPER('Oracle dataBase'),
       INITCAP('Oracle dataBase')
FROM dual;

SELECT emp_id , emp_name, salary, dept_id
FROM y_emp
WHERE LOWER(emp_name)='mark kim';

SELECT emp_id , emp_name, salary, dept_id
FROM y_emp
WHERE emp_name='mark kim';

SELECT emp_id , emp_name, salary, dept_id
FROM y_emp
WHERE emp_name='Mark kim';

SELECT CONCAT(emp_name, position)
FROM y_emp
WHERE emp_id < 1005;

SELECT emp_name || position
FROM y_emp
WHERE emp_id < 1005;

SELECT emp_name || position||' 입니다.'
FROM y_emp
WHERE emp_id < 1005;

SELECT CONCAT(CONCAT(emp_name, position), ' 입니다.')
FROM y_emp
WHERE emp_id < 1005;

SELECT SUBSTR('Computer Information', 10, 4) R1,
       SUBSTR('Computer Information', -4, 4) R2
FROM dual;

SELECT SUBSTR('Computer Information', 10) R1,
           SUBSTR('Computer Information', -1, 1) R2
FROM dual;

SELECT emp_id, emp_name, email, dept_id
FROM y_emp
WHERE SUBSTR(email, -1 ,1) = 'h';

SELECT emp_id, emp_name, email, dept_id
FROM y_emp
WHERE email Like  '%h';

SELECT emp_id, emp_name, email, INSTR(email, 'a', 1,1), dept_id
FROM y_emp;

SELECT emp_id, emp_name, email, INSTR(email, 'e', 1,2), dept_id
FROM y_emp;

SELECT emp_id, emp_name, email, dept_id
FROM y_emp
WHERE INSTR(email, 'a') = 0;

SELECT emp_id, emp_name, email, dept_id
FROM y_emp
WHERE email NOT LIKE '%a%' ;

SELECT emp_id, emp_name, email, dept_id
FROM y_emp
WHERE INSTR(email, 'a') <> 0;

SELECT emp_id, emp_name, email, dept_id
FROM y_emp
WHERE email LIKE '%a%' ;

SELECT RPAD(emp_name, 12, '*') AS name, LPAD(salary, 5, '*') AS salary
FROM y_emp;

SELECT phone FROM y_emp;

SELECT emp_name, phone, REPLACE(phone, '.','-')
FROM y_emp;

SELECT LTRIM('ababaaabbbbbaBDVDSAFEFcsdfababaaabbbbba', 'ab') R1,
       RTRIM('ababaaabbbbbaBDVDSAFEFcsdfababaaabbbbba', 'ab') R2
FROM dual;

SELECT TRIM('w' FROM 'Window'),
           TRIM(LEADING 'w'  FROM 'window'), TRIM(TRAILING 'w' FROM 'window')
FROM dual;