insert into y_dept(dept_id, dept_name, mgr_id, loc_id)
values (600,'생산관리', 1038, 6);

insert into y_dept
values (600, '생산관리', 1038, 6);

select * from y_dept;
rollback;
select * from y_dept;

insert into y_dept
values (600, '생산관리', 1038, 6);
commit;
describe y_dept;

select * from emp300;
desc emp300

select emp_id, emp_name, salary, dept_id
from y_emp
where dept_id = 300;

insert into emp300
select emp_id, emp_name, salary, dept_id
from y_emp
where dept_id = 300;

select * from emp300;
commit;

select * from y_emp
where emp_id = 1037;

update y_emp
set dept_id = 400, salary = salary*1.1
where emp_id = 1037;

rollback;