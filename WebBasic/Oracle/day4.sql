select * from jjy_employee a, pion.emp_image

--synonym : 권한이 주어진 파일을 내 컴퓨터에서는 emp_image 로 읽겠다 하면서 동일하게 만드는 것.
create (public) synonym emp_image for pion.emp_image
--public을 쓰면  모두에게 보여지는 이미지를 바꾸는 것.

select level
       , sys_connect_by_path(a.team_name,'/') as path 
       , a.*
from org_mst a
connect by prior team_id = upper_team_id
start with a.team_id = 2 --team_id =2 부터 시작
order siblings by a.team_name; --같은 레벨일 때 정렬
--탑에서 하위

select level, a.*
from org_mst a
connect by team_id = prior upper_team_id
--하위에서 탑 

select abc.nextval from dual;

select abc.currval from dual; --> 쓸 일 거의 없음, 현재값을 알 수 있음

insert into ~~~(
select abc.nextval, a.*
from employee a


with org as (
     select * from org_mst
) 
select org.team_name, b.* from org , employee b
where org.team_id = b.base_team_id


select 1 from dual
union all
select 1 from dual
union all
select 2 from dual

select 1 from dual
union 
select 1 from dual
union 
select 2 from dual
--union all을 한 뒤에 중복제거

select emp_no, emp_name from employee where job_code = '10'
union all
select emp_no, emp_name from employee where job_code = '20'
-->사원,대리는 원래 중복될 경우가 없으므로 이런 경우는 반드시 union all ! 둘의 성능 차이가 큼

select emp_no, emp_name from employee where job_code in ('10','20')
minus
select emp_no, emp_name from employee where job_code = '20'


--view
--열쇠모양- configure - object broswer 의 더블클릭에 맨처음꺼에서 edit spec&body 로 바꿈
create or replace view emp1 as
select emp_no,emp_name, job_code
from employee a
where a.enter_yn = 'Y'
order by emp_no desc;

select * from emp1
