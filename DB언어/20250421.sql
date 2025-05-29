SELECT emp_name, salary, dept_id
FROM y_emp;
SELECT * FROM y_dept;
SELECT * FROM y_loc;

SELECT emp_name, dept_name
FROM y_emp CROSS JOIN y_dept;

SELECT dept_id, dept_name, city
FROM y_dept NATURAL JOIN y_loc
WHERE dept_id IN (100,200);

SELECT count(*) FROM y_emp;
SELECT count(*) FROM y_dept;

SELECT dept_id, dept_name, City, address
FROM y_dept NATURAL JOIN y_loc;

SELECT * FROM y_dept;

SELECT emp_id, emp_name, salary, dept_id, dept_name
FROM y_emp NATURAL JOIN y_dept;

SELECT emp_id, emp_name, salary, dept_id, dept_name
FROM y_emp JOIN y_dept
USING (dept_id);

SELECT y_emp.emp_id, y_emp.emp_name, y_emp.salary, y_dept.dept_id, y_dept.dept_name
FROM y_emp JOIN y_dept
ON (y_emp.dept_id = y_dept.dept_id);

SELECT e.emp_id, e.emp_name, e.salary, e.dept_id, d.dept_name
FROM y_emp e JOIN y_dept d
ON (e.dept_id = d.dept_id);


SELECT * FROM pay_grade;

SELECT emp_id, emp_name, salary, pay_level
FROM y_emp join pay_grade
ON (y_emp.salary BETWEEN pay_grade.low_pay AND pay_grade.high_pay);

SELECT e.emp_id, e.emp_name, e.salary, d.dept_id, d.dept_name
FROM y_emp e LEFT OUTER JOIN y_dept d
ON (e.dept_id = d.dept_id);

SELECT e.emp_id, e.emp_name, e.salary, d.dept_id, d.dept_name
FROM y_emp e RIGHT OUTER JOIN y_dept d
ON (e.dept_id = d.dept_id);

SELECT e.emp_id, e.emp_name, e.salary, d.dept_id, d.dept_name
FROM y_emp e FULL OUTER JOIN y_dept d
ON (e.dept_id = d.dept_id);

SELECT emp_id, emp_name, mgr_id
FROm y_emp;

SELECT e.emp_id, e.emp_name, e.mgr_id, m.emp_name
FROM y_emp e JOIN y_emp m
on (e.mgr_id = m.emp_id);

SELECT e.emp_id, e.emp_name, e.salary, d.dept_name, l.address
FROM y_emp e join y_dept d
on(e.dept_id = d.dept_id)
join y_loc l
on(d.loc_id = l.loc_id);

--사원번호, 사원이름, 직급, 급여, 급여등급, 소속부서이름을 함께 출력하시오.
SELECT e.emp_id, e.emp_name, e.position, e.salary, p.pay_level, d.dept_name
FROM y_emp e join pay_grade p 
on(e.salary between p.low_pay And p.high_pay)
JOIN y_dept d
on(e.dept_id = d.dept_id);

SELECT e.emp_id, e.emp_name, e.salary, d.dept_name
FROM y_emp e, y_dept d
WHERE e.dept_id = d.dept_id;

SELECT e.emp_id, e.emp_name, e.salary, p.pay_level
FROM y_emp e, pay_grade p
WHERE e.salary between p.low_pay and p.high_pay;

SELECT e.emp_id, e.emp_name, e.salary, m.emp_name
FROM y_emp e, y_emp m
WHERE e.mgr_id = m.emp_id;

SELECT e.emp_id, e.emp_name, e.salary, d.dept_name
FROM y_emp e, y_dept d
WHERE e.dept_id = d.dept_id(+);

SELECT e.emp_id, e.emp_name, e.salary, d.dept_name
FROM y_emp e, y_dept d
WHERE e.dept_id(+) = d.dept_id;