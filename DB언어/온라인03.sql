SELECT ROUND(56.834, 2), ROUND(56.834, 0), ROUND(56.834, -1)
FROM dual;

SELECT TRUNC(56.834, 2), TRUNC(56.834, 0), TRUNC(56.834, -1)
FROM dual;

SELECT emp_id, emp_name, salary*0.915, ROUND(salary*0.915), TRUNC(salary*0.915), 
FROM y_emp;

SELECT emp_id, emp_name, salary, MOD(salary, 50)
FROM y_emp;

SELECT emp_id, hiredate, MONTHS_BETWEEN(SYSDATE, hiredate) 근무기간,
          ADD_MONTHS(hiredate, 3) 수습종료일,
          NEXT_DAY(hiredate, '금요일') 환영행사일, LAST_DAY(hiredate) "입사월의 말일"
FROM y_emp
WHERE position='사원';

SELECT emp_id, hiredate, ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)) 근무기간,
          ADD_MONTHS(hiredate, 3) 수습종료일,
          NEXT_DAY(hiredate, '금') 환영행사일, LAST_DAY(hiredate) "입사월의 말일"
FROM y_emp
WHERE position='사원';

-- 첫 급여일: 입사 후 약월 10일
-- 적성 및 역량 평가일: 수습 종료일 후 첫 금요일

SELECT emp_id, hiredate, ROUND(MONTHS_BETWEEN(SYSDATE, hiredate)) 근무기간,
          ADD_MONTHS(hiredate, 3) 수습종료일,
          LAST_DAY(hiredate)+10 첫급여일,
          NEXT_DAY(ADD_MONTHS(hiredate, 3), '금') 적성평가일
FROM y_emp
WHERE position='사원';

SELECT emp_id, hiredate, ROUND(hiredate, 'MONTH'), TRUNC(hiredate, 'MONTH')
FROM y_emp
WHERE hiredate LIKE '05%';

SELECT sysdate, ROUND(sysdate, 'YEAR'), ROUND(sysdate, 'MONTH'), ROUND(sysdate, 'DAY')
FROM dual;