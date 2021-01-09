select sysdate
from dual;

-- 하루 뒤 , 한시간 뒤, 1초뒤
select a.insert_Datetime +1, a.insert_datetime + 1/24 , a.insert_datetime + 1/24/60
from employee a;

--한 달 후  , 날짜만 , 오늘 이후 수요일 
select add_months(a.insert_Datetime, 1),trunc(add_months(a.insert_Datetime, 1)), next_day(sysdate,'수')
from employee a;

--날짜를 문자열타입으로 , 문자열 타입인걸 날짜 타입으로 해서 다음날 구하기 
select to_char(a.insert_datetime, 'yyyy-mm-dd hh24:mi:ss') , to_date(a.enter_Date)+1
from employee a;

--숫자를 문자열로
select a.emp_no+1, to_char(a.emp_no,'000,000,000'), a.*
from employee a;

--문자열을 숫자로
select to_number(a.enter_Date)
from employee a;

--숫자를 문자열로 바꾼걸 다시 숫자열로
select to_number(to_char(a.emp_no,'000,000,000'),'000,000,000')
from employee a;

/**/
select nvl(a.retire_date,'지금 다니고 있음')
from employee a;


select decode(substr(a.emp_name,1,1),'김','김씨','백','백씨','한','한씨','이도 저도 아님')
       , case when substr(a.emp_name,1,1) = '김' then '김씨'
              when substr(a.emp_name,1,1) = '백' then '백씨'
              when substr(a.emp_name,1,1) = '한' then  '한씨'
              else '이도 저도 아님'
         end
from employee a;



select *
from employee a;

select *
from org_mst b;

select *
from employee a, org_mst b
where a.job_code = '10'
 and b.use_yn = 'Y'
and a.base_team_id = b.team_id;


select *
from employee a, org_mst b
where a.emp_name = b.team_name;

