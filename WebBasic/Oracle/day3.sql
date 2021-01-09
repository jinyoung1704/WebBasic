select first_name, last_name, job_id, department_id
from employees
where(job_id, department_id) in (selectjob_id, department_idfromemployeeswherejob_id= 'SH_CLERK')
--> 이렇게 쓰는게 더 효율적(ppt 89페이지와 비교)

--기존에 데이터가 있으면 업데이트, 없으면 insert => merge into (DML 구문)
--예시
MERGE INTO TB_SCORE S
    USING TMP_SCORE T
       ON (S.COURSE_ID = T.COURSE_ID AND S.STUDENT_ID = T.STUDENT_ID)
    WHEN MATCHED THEN
        UPDATE SET S.SCORE = T.SCORE
    WHEN NOT MATCHED THEN
        INSERT (S.COURSE_ID, S.STUDENT_ID, S.SCORE) 
        VALUES (T.COURSE_ID, T.STUDENT_ID, T.SCORE);


select * from user_objects;

select *
from user_;

select * from all_tables;

select * from dba_tables;

select * from emp_back1;

--alter table employee drop column emp_mo;


truncate -- 테이블은 삭제하지 않고 내용만 날라감, 바로 commit 됨

-- select 문에 있는 서브쿼리 : 스칼라 서브쿼리
-- from 문에 있는 서브쿼리 : inline 서브쿼리
-- where 문에 있는 서브쿼리 : nested 서브쿼리
