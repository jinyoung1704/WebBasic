select emp_no,emp_name
from employee
where login_id like 'd%' 
and (job_code = 20 or job_code = 30);

select emp_no,emp_name
from employee
where login_id like 'd%' 
and job_code not in ('20','30');

select emp_no,emp_name
from employee
where not (login_id like 'd%' 
and job_code not in ('20','30'));

select *
from employee a
where rownum <= 5;
