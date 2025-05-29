select emp_name, salary
from y_emp
where emp_name='오상우';

select position
from y_emp
where emp_name='오상우';

select *
from y_emp
where salary > 630
and position='차장';

select *
from y_emp
where salary > (select salary
                from y_emp
                where emp_name='오상우')
and position = (select position
                from y_emp
                where emp_name='오상우');
                
select MIN(salary)
from y_emp
where salary = (select MIN(salary)
                from y_emp);

select *
from y_emp
where salary = (select MIN(salary)
                from y_emp
                where dept_id = 200);
                
select *
from y_emp
where salary in (select MIN(salary)
                from y_emp
                group by dept_id);
            
select *
from y_emp
where salary > (select salary
                from y_emp
                where position = '과장'); //오류문
                
select salary
from y_emp
where position = '과장';

select *
from y_emp
where salary >any (select MIN(salary)
                from y_emp
                group by dept_id);
                
select *
from y_emp
where salary >all (select MIN(salary)
                from y_emp
                group by dept_id);
                
select emp_id, emp_name, position, dept_id
from y_emp
where (position, dept_id) in (select position,dept_id from y_emp
                              where emp_name like '차%')
                              and emp_name not like '차%';
                              
select emp_id, emp_name, position, dept_id
from y_emp
where position in (select position from y_emp
                   where emp_name like '차%')
and dept_id in (select dept_id from y_emp
                where emp_name like '차%')
and emp_name not like '차%';

select emp_name, salary, dept_id
from y_emp o
where salary > (select avg(salary) from y_emp
                where dept_id = o.dept_id);
                
select emp_name, salary, dept_id
from y_emp o
where salary > (select MIN(salary) 
                from y_emp
                where dept_id = o.dept_id);