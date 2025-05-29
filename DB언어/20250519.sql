SELECT salary
FROM y_emp
where emp_name='오상우';
//더하기
SELECT * 
FROM y_emp
where salary >630;
//결과는!

SELECT * 
FROM y_emp
where salary >(SELECT salary
                FROM y_emp
                where emp_name='오상우');
//이거랑

SELECT position
FROM y_emp
where emp_name='오상우';
//이거를 합치면!

SELECT * 
FROM y_emp
where salary >(SELECT salary
                FROM y_emp
                where emp_name='오상우')
and position =(SELECT position 
                from y_emp
                where emp_name='오상우');


SELECT min(salary) FROM y_emp;



//다중행 쿼리
SELECT * 
FROM y_emp
where salary in(SELECT min(salary)
                FROM y_emp
                group by dept_id); // = 대신 in

//서브쿼리 (400,180,150,170,280)

SELECT *
FROM y_emp
where salary > any (SELECT min(salary)
                    FROM y_emp
                    group by dept_id); // >any는 최소값보다 크면 됨
                    
SELECT *
FROM y_emp
where salary > all (SELECT min(salary)
                    FROM y_emp
                    group by dept_id);    // >all은 최대값보다 커야 한다

SELECT *
FROM y_emp 
where (position, dept_id) in (SELECT position, dept_id  FROM y_emp
                                where emp_name like '차%')
                                and emp_name not like '차%'; //차씨와 같은 포지션과 부서번호이지만 차씨는 제외
SELECT * 
FROM y_emp
WHERE position in (SELECT position FROM y_emp
                    where emp_name like '차%')
and dept_id in(SELECT dept_id FROM y_emp
                where emp_name like '차%')
and emp_name not like '차%';    //쌍비교

SELECT emp_name, salary, dept_id
FROM y_emp o
where salary >(SELECT avg(salary) FROM y_emp
                where dept_id =o.dept_id); //상호관련 서브쿼리 몹시 비효율
                
SELECT emp_name, salary, dept_id
FROM y_emp o
where salary =(SELECT min(salary) FROM y_emp
                where dept_id =o.dept_id);//부서별로 월급 제일 적은 사람 구하기

SELECT emp_id, emp_name, position, dept_id
FROM y_emp o
where exists (select 'X' from y_emp
                where mgr_id = o.emp_id); //exists를 이용한 부하직원이 있는 사원
                
SELECT emp_id, emp_name, position, dept_id
FROM y_emp o
where not exists (select 'X' from y_emp
                where mgr_id=o.emp_id); //not exists를 이용한 부하직원이 없는 사원
                
select a.emp_name, a.salary, a.dept_id, b.salavg
from y_emp a
join (select dept_id,AVG(salary) salavg from y_emp
    group by dept_id)b
on(a.dept_id = b.dept_id)
and a.salary > b.salavg;

SELECT rownum, emp_name, gender 
from y_emp
order by emp_name;

SELECT rownum as RANK , emp_id, emp_name, salary
FROM (SELECT emp_id, emp_name, salary FROM y_emp
        where salary is not null
        order by salary DESC)
        where rownum<=5;

SELECT rownum as RANK, E.emp_name, E.hiredate
from (SELECT emp_name, hiredate FROM y_emp
        order by hiredate)E
        where rownum <=3;
        
SELECT emp_id, emp_name,
        (case when dept_id =    
                            (select dept_id from y_dept
                            where loc_id=4)
         then '대구' else '기타' end) loc_name                   
FROM y_emp;

SELECT emp_id, emp_name
FROM y_emp e
order by(SELECT dept_name FROM y_dept d
        where e.dept_id=d.dept_id);
        
with
    dept_total_sal as(select d.dept_name, sum(e.salary) as dept_total
                        from y_emp e join y_dept d
                        on (e.dept_id = d.dept_id)
                        group by d.dept_name),
    total_avg_sal as (SELECT sum(dept_total)/count(*) as dept_avg
                        from dept_total_sal)
SELECT * FROM dept_total_sal
where dept_total > (select dept_avg
                    from total_avg_sal);
                        