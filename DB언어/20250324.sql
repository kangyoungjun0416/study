SELECT * 
FROM employees;
SELECT employee_id, korean_name, salary,
FROM employees;
SELECT korean_name, employee_id, salary,
    department_id
FROM employees;
SELECT korean_name, employee_id, salary,
    commission_pct,
    salary+salary*commission_pct AS salary
FROM employees;

SELECT first_name||' '||last_name
FROM employees;

SELECT '사원 '|| korean_name||'의 사번은 ' ||employee_id||'이고 급여는 '||salary||'입니다.'
FROM employees;

SELECT last_name || '''s Salary: '||salary AS "Salary Report"
FROM employees;

SELECT last_name || q'['s Salary: ]'||salary AS "Salary Report"
FROM employees;

SELECT DISTINCT department_id, job_id
FROM employees;

